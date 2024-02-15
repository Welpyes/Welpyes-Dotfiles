function Get-InstalledSoftware {
    [CmdletBinding()]
    param (
      [Parameter()]
      [ValidateNotNullOrEmpty()]
      [string]$ComputerName = $env:COMPUTERNAME,
      [Parameter()]
      [ValidateNotNullOrEmpty()]
      [string]$Name,
      [Parameter()]
      [guid]$Guid
    )
    process {
      try {
        $scriptBlock = {
          $args[0].GetEnumerator() | ForEach-Object { New-Variable -Name $_.Key -Value $_.Value }
          $UninstallKeys = @("HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall", "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall")
          New-PSDrive -Name HKU -PSProvider Registry -Root Registry::HKEY_USERS | Out-Null
          $UninstallKeys += Get-ChildItem HKU: | Where-Object { 
            $_.Name -match 'S-\d-\d+-(\d+-){1,14}\d+$' 
          } | ForEach-Object {
            "HKU:\$($_.PSChildName)\Software\Microsoft\Windows\CurrentVersion\Uninstall"
          }
          if (-not $UninstallKeys) { Write-Warning -Message 'No software registry keys found' }
          else {
            foreach ($UninstallKey in $UninstallKeys) {
              $friendlyNames = @{
                'DisplayName'    = 'Name'
                'DisplayVersion' = 'Version'
              }
              Write-Verbose -Message "Checking uninstall key [$($UninstallKey)]"
              if ($Name) { $WhereBlock = { $_.GetValue('DisplayName') -like "$Name*" } }
              elseif ($GUID) { $WhereBlock = { $_.PsChildName -eq $Guid.Guid } }
              else { $WhereBlock = { $_.GetValue('DisplayName') } }
              $SwKeys = Get-ChildItem -Path $UninstallKey -ErrorAction SilentlyContinue | Where-Object $WhereBlock
              if (-not $SwKeys) {
                Write-Verbose -Message "No software keys in uninstall key $UninstallKey"
              }
              else {
                foreach ($SwKey in $SwKeys) {
                  $output = @{ }
                  foreach ($ValName in $SwKey.GetValueNames()) {
                    if ($ValName -ne 'Version') {
                      $output.InstallLocation = ''
                      if ($ValName -eq 'InstallLocation' -and 
                                            ($SwKey.GetValue($ValName)) -and 
                                            (@('C:', 'C:\Windows', 'C:\Windows\System32', 'C:\Windows\SysWOW64') -notcontains $SwKey.GetValue($ValName).TrimEnd('\'))) {
                        $output.InstallLocation = $SwKey.GetValue($ValName).TrimEnd('\')
                      }
                      [string]$ValData = $SwKey.GetValue($ValName)
                      if ($friendlyNames[$ValName]) {
                        $output[$friendlyNames[$ValName]] = $ValData.Trim() ## Some registry values have trailing spaces.
                      }
                      else {
                        $output[$ValName] = $ValData.Trim() ## Some registry values trailing spaces
                      }
                    }
                  }
                  $output.GUID = ''
                  if ($SwKey.PSChildName -match '\b[A-F0-9]{8}(?:-[A-F0-9]{4}){3}-[A-F0-9]{12}\b') {
                    $output.GUID = $SwKey.PSChildName
                  }
                  New-Object -TypeName PSObject -Prop $output
                }
              }
            }
          }
        }

        if ($ComputerName -eq $env:COMPUTERNAME) {
          & $scriptBlock $PSBoundParameters
        }
        else {
          Invoke-Command -ComputerName $ComputerName -ScriptBlock $scriptBlock -ArgumentList $PSBoundParameters
        }
      }
      catch {
        Write-Error -Message "Error: $($_.Exception.Message) - Line Number: $($_.InvocationInfo.ScriptLineNumber)"
      }
    }
  }

  Write-Host -BackgroundColor DarkYellow -ForegroundColor Black "Retrieving OS name..."
  #Variables
  $OSName = $(
    $(wmic os get Caption)[2]
  ).Substring('10', '14')

  Write-Host -BackgroundColor DarkYellow -ForegroundColor Black "`rRetrieving kernel version...       "
  $KernelVersion = (Get-Item C:\Windows\System32\ntoskrnl.exe).VersionInfo.ProductVersionRaw

  Write-Host -BackgroundColor DarkYellow -ForegroundColor Black "`rRetrieving uptime...               "
  $Uptime = $(
    $($Uptime = Get-Uptime | Select-Object Days, Hours, Minutes, Seconds),
    ("$($Uptime.Days) Days, $($Uptime.Hours) Hours, $($Uptime.Minutes) Minutes, $($Uptime.Seconds) Seconds")
  )
  Write-Host -BackgroundColor DarkYellow -ForegroundColor Black "`rRetrieving installed packages...   "
  $Packages = ((Get-InstalledSoftware -ErrorAction SilentlyContinue).Name).Count

  Write-Host -BackgroundColor DarkYellow -ForegroundColor Black "`rRetrieving CPU name...             "
  $CPU = $(Get-CimInstance -ClassName Win32_Processor -ComputerName.).Name

  Write-Host -BackgroundColor DarkYellow -ForegroundColor Black "`rRetrieving GPU name...             "
  $GPU = $(Get-CimInstance win32_VideoController).VideoProcessor

  Write-Host -BackgroundColor DarkYellow -ForegroundColor Black "`rRetrieving RAM usage...            "
  $RAM = "Used $([Math]::Round((((wmic computersystem get totalphysicalmemory)[2]/1024/1024/1024)-(wmic OS get FreePhysicalMemory)[2]/1024/1024),2))GB out of $([math]::Round(((((wmic computersystem get totalphysicalmemory)[2]/1024)/1024)/1024),2))GB"

  Write-Host -BackgroundColor DarkYellow -ForegroundColor Black "`rGenerating...                      "
  $SystemLogo = (
    "┏━━━━━━━━━━━━━━┳━━━━━━━━━━━━━━┓",
    "┃              ┃              ┃",
    "┃              ┃              ┃",
    "┃              ┃              ┃",
    "┃              ┃              ┃",
    "┃              ┃              ┃",
    "┃              ┃              ┃",
    "┣━━━━━━━━━━━━━━╋━━━━━━━━━━━━━━┫",
    "┃              ┃              ┃",
    "┃              ┃              ┃",
    "┃              ┃              ┃",
    "┃              ┃              ┃",
    "┃              ┃              ┃",
    "┃              ┃              ┃",
    "┗━━━━━━━━━━━━━━┻━━━━━━━━━━━━━━┛"
  )
  
  clear

  $path = $pathSymbol + " " + "$(
    $curDir=$pwd.Path.Split('\')
    [Array]::Reverse($curDir)
    if($curDir[0] -eq $sl.CurrentUser){
        "~"
    } 
    else {
        $curDir[0]
    }
)" + " "


  #Information
  $display = Write-Color -Text "`r                                                                 `n  ", "$($SystemLogo[0])" -Background Black, Blue -Color White, White
  $display += Write-Color -Text "  ", "$($SystemLogo[1])", "    ", "$([System.Net.Dns]::GetHostName()) ", "at ", "~" -Background Black, Blue, Black, Black, Black, Black -Color White, White, White, Green, White, Red
  $display += Write-Color -Text "  ", "$($SystemLogo[2])", "    " -Background Black, Blue -Color White, White
  $display += Write-Color -Text "  ", "$($SystemLogo[3])", "    ", "OS:       ", "$OSName ($($KernelVersion.Build).$($KernelVersion.Revision))" -Background Black, Blue, Black, Black, Black -Color White, White, White, Green, White
  $display += Write-Color -Text "  ", "$($SystemLogo[4])", "    " -Background Black, Blue -Color White, White
  $display += Write-Color -Text "  ", "$($SystemLogo[5])", "    ", "Uptime:   ", "$Uptime" -Background Black, Blue, Black, Black, Black -Color White, White, White, Green, White
  $display += Write-Color -Text "  ", "$($SystemLogo[6])", "    ", "Packages: ", "$Packages (System$(if((Get-Command scoop -erroraction silentlycontinue).source ){" and Scoop"}))" -Background Black, Blue, Black, Black, Black -Color White, White, White, Green, White
  $display += Write-Color -Text "  ", "$($SystemLogo[7])", "    " -Background Black, Blue -Color White, White
  $display += Write-Color -Text "  ", "$($SystemLogo[8])", "    ", "CPU:      ", "$CPU" -Background Black, Blue, Black, Black, Black -Color White, White, White, Green, White
  $display += Write-Color -Text "  ", "$($SystemLogo[9])", "    ", "GPU:      ", "$GPU" -Background Black, Blue, Black, Black, Black -Color White, White, White, Green, White
  $display += Write-Color -Text "  ", "$($SystemLogo[10])", "    ", "RAM:      ", "$RAM" -Background Black, Blue, Black, Black, Black -Color White, White, White, Green, White
  $display += Write-Color -Text "  ", "$($SystemLogo[11])", "    " -Background Black, Blue -Color White, White
  $display += Write-Color -Text "  ", "$($SystemLogo[12])", "    ", "██", "██", "██", "██", "██", "██", "██", "██" -Background Black, Blue, Black, Black, Black, Black, Black, Black, Black, Black, Black -Color White, White, White, DarkGray, Red, Green, Yellow, Blue, Magenta, Cyan, White
  $display += Write-Color -Text "  ", "$($SystemLogo[13])", "    ", "██", "██", "██", "██", "██", "██", "██", "██" -Background Black, Blue, Black, Black, Black, Black, Black, Black, Black, Black, Black -Color White, White, White, Black, DarkRed, DarkGreen, DarkYellow, DarkBlue, DarkMagenta, DarkCyan, Gray
  $display += Write-Color -Text "  ", "$($SystemLogo[14])" -Background Black, Blue -Color White, White
  Write-Host -Object $display
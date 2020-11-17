<#
  .SYNOPSIS
    Shutdown datacenter environment
  .DESCRIPTION
    Script to shutdown server-systems in datacenter
  .EXAMPLE
    ./shutdown_datacenter.bat
  .NOTES
    Version:        1.0
    Author:         Benedikt Filip
    Creation Date:  16.11.2020
    Purpose/Change: Initial script development
#>

# Functions block #####################################################################

# Import function library
. "$PSScriptRoot\library.ps1"

function Show-Menu {
    param (
          [string]$Title = 'SHUTDOWN DATACENTER'
    )
    cls
    Write-Host "================ $Title ================" -ForegroundColor Blue
    Write-Host "1: Press '1' for shutdown serverrole A." -ForegroundColor Blue
    Write-Host "2: Press '2' for shutdown serverrole B." -ForegroundColor Blue
    Write-Host "3: Press '3' for shutdown serverrole C." -ForegroundColor Blue
    Write-Host "Q: Press 'Q' to quit." -ForegroundColor Blue
    Write-Host ""
}

# Execution block #####################################################################

do {
     Show-Menu
     $input = Read-Host "Please make a selection then press ENTER"
     switch ($input) {
           '1' {
                cls
                'You chose option #1'
                InitiateShutdown Server-A
                InitiateShutdown Server-B
                Write-Host ""
                Pause
           } '2' {
                cls
                'You chose option #2'
                InitiateShutdown Server-C
                InitiateShutdown Server-D
                Write-Host ""
                Pause
           } '3' {
                cls
                'You chose option #3'
                InitiateShutdown Server-E
                Write-Host ""
                Pause
           } Default { 
                'Please consider typing lessons'
                Break
           } 'q' {
                return
           }
     }
     Pause
}
until ($input -eq 'q')

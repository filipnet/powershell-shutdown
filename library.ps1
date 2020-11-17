function InitiateShutdown($computername) {
  Write-Host "Shutdown server $computername"
  Stop-Computer -ComputerName $computername -Force
  ConnectionCheck $computername
}

function ConnectionCheck($computername) {
  Write-Host -NoNewline "Connection state $computername : "
  $testConnection = Test-Connection -ComputerName $computername -Quiet -Count 1
  Write-Host $testConnection
  Write-Host -NoNewline "Waiting for shutdown: "
  while($testConnection -eq $true) { 
    $testConnection = Test-Connection -ComputerName $computername -Quiet -Count 1
      if ($testConnection -eq $True) {
      Write-Host -NoNewline "."
      Start-Sleep -s 1
    } elseif ($testConnection -eq $False) {
        Write-Host "system is offline now"
    }
  }
}

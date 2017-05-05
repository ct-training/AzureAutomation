
$Connection = Get-AutomationConnection -Name 'Centos-Con'         
$result = Invoke-SSHCommand -Connection $Connection  -ScriptBlock { echo centos@12345 | sudo -S yum install httpd -y  }    
Write-Output $result

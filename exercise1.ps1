# powershell 

#to get the version of PowerShell 
$psversiontable.PSVersion 

# We need this policy to run custom scripts, so we click yes to all : 
Set-ExecutionPolicy RemoteSigned 

#just like with Python, you can print hello world
Write-Host "hello world!"

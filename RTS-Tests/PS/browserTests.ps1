
param($appName, $serverEnv, $testCategory)

$appEnv = $appName + '_' + $serverEnv
$header = '"TestEnvironment": "' + $appName + '_' + $serverEnv + '"'

#Start in PS folder

Write-Host Get-Location

Set-Location ($PSScriptRoot)

#Move up to project folder

sl ..

# update test environment in nunit configuration file

#(gc Configuration\UserDefinedConfigurations.json) -replace '\"TestEnvironment\": \"(\w+).*\"', $header | Out-File -encoding ASCII Configuration\UserDefinedConfigurations.json

 

#Move up to solution folder

sl ..

#execute tests

Write-Host Get-Location

nunit3-console.exe 'RTS-Tests\bin\x86\Release\RTS-Tests.dll'

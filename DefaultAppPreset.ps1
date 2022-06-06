$networkPath = $($args[0])

$localPath = $($args[1])

$defaultPath = $($args[2])

Copy-Item $networkPath $localPath

Copy-Item $defaultPath $env:TEMP

Start-Process -FilePath $localPath -WorkingDirectory "C:\Users\MCPS\Desktop" -Verb RunAs
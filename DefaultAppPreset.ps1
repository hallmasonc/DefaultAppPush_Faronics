$netScriptPath = $($args[0])

$netBatchPath = $($args[1])

$scriptPath = $($args[2])

$batchPath = $($args[3])

$defaultPath = $($args[4])

Copy-Item $netScriptPath $scriptPath

Copy-Item $netBatchPath $batchPath

Copy-Item $defaultPath $env:TEMP

Start-Process -FilePath $batchPath -Verb RunAs
<#
    This script is used in Faronics Deploy to copy Batch
    and PowerShell Scripts to a machine from a share drive.
    Default Path is any file that can be copied to TEMP folder,
    for example: If you have an .xml file that the copied
    script relies upon.

    Author: Mason Hall and Jeff Ritchie
    Date: 6/6/2022
#>
$netScriptPath = $($args[0])

$netBatchPath = $($args[1])

$scriptPath = $($args[2])

$batchPath = $($args[3])

$defaultPath = $($args[4])

Copy-Item $netScriptPath $scriptPath

Copy-Item $netBatchPath $batchPath

Copy-Item $defaultPath $env:TEMP

Start-Process -FilePath $batchPath -Verb RunAs
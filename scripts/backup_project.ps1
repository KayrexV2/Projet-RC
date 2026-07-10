param(
    [string]$ProjectPath = ".",
    [string]$BackupRoot = "..\backups"
)

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$source = Resolve-Path $ProjectPath
$destination = Join-Path $BackupRoot "backup_$timestamp"

New-Item -ItemType Directory -Force -Path $destination | Out-Null

robocopy $source $destination /E /XD .git node_modules .vscode /XF *.zip *.jar

Write-Host "Backup terminé : $destination"

param(
    [string]$OutputDirectory = (Join-Path $PSScriptRoot "..\dist")
)

$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $PSScriptRoot
$skillsRoot = Join-Path $repoRoot "skills"
New-Item -ItemType Directory -Force -Path $OutputDirectory | Out-Null

Get-ChildItem -Path $skillsRoot -Directory | ForEach-Object {
    $skillFolder = $_.FullName
    $skillName = $_.Name
    $skillFile = Join-Path $skillFolder "SKILL.md"

    if (!(Test-Path $skillFile)) {
        Write-Warning "Skipping $skillName because SKILL.md is missing."
        return
    }

    $zipPath = Join-Path $OutputDirectory "$skillName.zip"
    if (Test-Path $zipPath) { Remove-Item -LiteralPath $zipPath -Force }

    Compress-Archive -Path $skillFolder -DestinationPath $zipPath -CompressionLevel Optimal
    Write-Host "Created $zipPath"
}

Write-Host "Skill ZIP generation complete."

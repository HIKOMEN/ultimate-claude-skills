param(
    [ValidateSet("User","Project")]
    [string]$Scope = "User",
    [string]$ProjectPath = (Get-Location).Path
)

$ErrorActionPreference = "Stop"
$sourceRoot = Join-Path $PSScriptRoot "skills"

if (!(Test-Path $sourceRoot)) {
    throw "Could not find skills folder: $sourceRoot"
}

if ($Scope -eq "User") {
    $targetRoot = Join-Path $env:USERPROFILE ".claude\skills"
} else {
    if (!(Test-Path $ProjectPath)) { throw "Project path does not exist: $ProjectPath" }
    $targetRoot = Join-Path $ProjectPath ".claude\skills"
}

New-Item -ItemType Directory -Force -Path $targetRoot | Out-Null

Get-ChildItem -Path $sourceRoot -Directory | ForEach-Object {
    $source = $_.FullName
    $target = Join-Path $targetRoot $_.Name
    if (Test-Path $target) {
        Write-Host "Updating existing skill: $($_.Name)"
        Remove-Item -Recurse -Force $target
    } else {
        Write-Host "Installing skill: $($_.Name)"
    }
    Copy-Item -Recurse -Force $source $target
}

Write-Host "Installed skills to: $targetRoot"
Write-Host "Restart Claude Code or reload skills to discover them."

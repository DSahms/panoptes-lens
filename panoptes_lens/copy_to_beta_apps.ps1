param([string]$Version = "1.0.5")

$src = Join-Path $PSScriptRoot "build\app\outputs\flutter-apk\app-debug.apk"
if (-not (Test-Path $src)) {
    Write-Error "No APK - run flutter build apk --debug first"
    exit 1
}

$destDir = "D:\Beta Apps\Refactor-Room"
New-Item -ItemType Directory -Force -Path $destDir | Out-Null

$destName = "Refactor-Room-Venice-No-Lenses-debug-v${Version}.apk"
$dest = Join-Path $destDir $destName

Copy-Item -Force $src $dest
Write-Host "Copied to $dest"

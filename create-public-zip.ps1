$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$outDir = Join-Path $root 'out'
$zipPath = Join-Path $outDir 'dragonmsg-portfolio-public.zip'

if (!(Test-Path $outDir)) {
  New-Item -Path $outDir -ItemType Directory | Out-Null
}

$items = @(
  'README.md',
  'CASE_STUDY.md',
  'ARCHITECTURE.md',
  'SAFE_SNIPPETS.md',
  'PUBLISH_CHECKLIST.md'
)

$temp = Join-Path $outDir 'tmp_public'
if (Test-Path $temp) { Remove-Item -Recurse -Force $temp }
New-Item -Path $temp -ItemType Directory | Out-Null

foreach ($i in $items) {
  Copy-Item (Join-Path $root $i) -Destination (Join-Path $temp $i)
}

if (Test-Path $zipPath) { Remove-Item $zipPath -Force }
Compress-Archive -Path (Join-Path $temp '*') -DestinationPath $zipPath -CompressionLevel Optimal
Remove-Item -Recurse -Force $temp

Write-Host "Created: $zipPath"

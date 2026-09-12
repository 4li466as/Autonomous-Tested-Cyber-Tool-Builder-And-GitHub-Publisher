# Setup Sandbox Environment (Windows PowerShell)
Write-Host "Verifying Python and pytest environment for n8n Cyber Tool Builder..." -ForegroundColor Cyan

$pythonCmd = Get-Command python -ErrorAction SilentlyContinue
if (-not $pythonCmd) {
    Write-Error "Python 3 is not found in PATH. Please install Python 3.12+."
    exit 1
}

Write-Host "Python found at: $($pythonCmd.Source)" -ForegroundColor Green

Write-Host "Checking / Installing pytest..." -ForegroundColor Cyan
python -m pip install --upgrade pip pytest

if ($LASTEXITCODE -eq 0) {
    Write-Host "Pytest environment is ready for the n8n ExecuteCommand sandbox!" -ForegroundColor Green
    python -m pytest --version
} else {
    Write-Error "Failed to install pytest."
    exit 1
}

oh-my-posh init pwsh | Invoke-Expression

Import-Module -Name Terminal-Icons
Set-PSReadLineOption -PredictionViewStyle ListView

# Alias
# Mostrar la fecha
Set-Alias -Name d -Value date

# Borrar pantalla
Set-Alias -Name c -Value clear

# Ir al directorio home
function home {
	& Set-Location $env:USERPROFILE
}

# Cual es mi IP
function Get-IP {
	Write-Host "`n"
	Write-Host -NoNewline 'La IP pública de este PC es: ' -ForegroundColor Cyan
	Invoke-RestMethod -Uri "https://api.ipify.org"
	Write-Host "`n"
}
Set-Alias -Name ip -Value Get-IP

# Ver programas disponibles con update
function update {
	& winget list --upgrade-available --include-unknown
	Write-Host "`n"
	Write-Host -NoNewline ' --- Para actualizar todos los programas disponibles, escribe "updatey" --- ' -ForegroundColor Red -BackgroundColor Gray
	Write-Host "`n"
}

# Actualizar programas disponibles con update
function updatey {
	& winget upgrade --all --include-unknown
}

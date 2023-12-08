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

function ssh-host {
	# Obtiene la lista de hosts del archivo .ssh/config
	$hosts = Get-Content -Path $HOME\.ssh\config | Select-String -Pattern '^Host' | ForEach-Object { $_.Line.Split(' ')[1] }

	# Verificar si se proporcionó un parámetro
	if ($args.Count -eq 1) {
		# Verificar si el parámetro es un número y válido
		if ($args[0] -match '^\d+$' -and $args[0] -ge 1 -and $args[0] -le $hosts.Count) {
			# Obtener el nombre de host seleccionado
			$selectedHost = $hosts[$args[0] - 1]

			# Conectarse al host seleccionado
			ssh $selectedHost
			return
		}
	}

	# Imprime la lista de hosts
	Write-Host ''
	Write-Host 'Lista de hosts:' -ForegroundColor DarkYellow
	Write-Host '_______________' -ForegroundColor DarkYellow
	Write-Host ''

	for ($i = 0; $i -lt $hosts.Count; $i++) {
		$index = $i + 1
		Write-Host "$index - $($hosts[$i])"
	}

	Write-Host ''

	# Pedir al usuario que seleccione un host
	Write-Host "Selecciona un número de 1 a $($hosts.Count) para conectarte a un host: " -ForegroundColor Cyan
	Write-Host ''

	$choice = Read-Host

	while (-not ($choice -match '^\d+$') -or $choice -le 0 -or $choice -gt $hosts.Count) {
		Write-Host "Selección inválida. Solo números entre 1 y $($hosts.Count)" -ForegroundColor Red
		Write-Host ''

		$choice = Read-Host
	}

	# Verificar si la selección es válida
	if ($choice -match '^\d+$' -and $choice -ge 1 -and $choice -le $hosts.Count) {
		# Obtener el nombre de host seleccionado
		$selectedHost = $hosts[$choice - 1]

		# Conectarse al host seleccionado
		ssh $selectedHost
	}
	else {
		Write-Host 'Selección inválida. Ejecuta de nuevo y selecciona un número válido.' -ForegroundColor DarkRed
	}
}

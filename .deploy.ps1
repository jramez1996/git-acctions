# Variables
$server = "172.28.160.1"
Write-Host $server  # Debería mostrar "172.28.160.1"
$appDir = Get-Location
$localDir = "C:\"

# Copiar los archivos, sobrescribiendo si ya existen
Copy-Item -Path $appDir -Destination $localDir -Recurse -Force
# Cambiar al directorio de la aplicación
Set-Location -Path (Join-Path -Path $localDir -ChildPath "app-city-git-actions")

# Iniciar la aplicación con PM2
# Variables
# Iniciar la aplicaciÃ³n con PM2
pm2 delete all
pm2 start app.js
Set-Location -Path $appDir

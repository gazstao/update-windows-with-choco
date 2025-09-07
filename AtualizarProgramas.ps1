# Script para atualizar todos os programas instalados via Chocolatey

# Verifica se o Chocolatey estÃ¡ instalado
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey nao esta instalado. Instalando agora..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Verifica pacotes desatualizados
Write-Output "Verificando pacotes desatualizados..."
choco outdated

# Atualiza todos os pacotes instalados
Write-Output "Atualizando todos os pacotes..."
choco upgrade all -y

# Exibe a lista de pacotes atualizados
Write-Output "Lista de pacotes instalados apÃ³s a atualizaÃ§Ã£o:"
choco list

Write-Output "Atualizacao concluida!"

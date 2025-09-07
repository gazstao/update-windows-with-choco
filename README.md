# Script Power Shell para atualizar os programas do Windows com Chocolatei

### Passos para criar o script  

Certifique-se de que o Chocolatey está instalado:  
  
Para verificar, abra o PowerShell como administrador e digite:  
```choco --version```  

Se não estiver instalado, instale-o com o comando:  
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```  
Feche e reabra o PowerShell como administrador após a instalação.


### Comando para atualizar programas: 
  
O comando choco upgrade all -y atualiza todos os pacotes instalados via Chocolatey para suas versões mais recentes, com a flag -y para confirmar automaticamente qualquer prompt.  

### Executando o Script:  

Execute o PowerShell como administrador e execute o comando para habilitar o script somente na sessão atual:
```
powershell.exe -ExecutionPolicy Bypass -File C:\Users\gazst\AtualizarProgramas.ps1
```

E os programas deverão estar atualizados.

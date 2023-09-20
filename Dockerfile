# Use a imagem oficial do SQL Server 2019 como imagem base
FROM mcr.microsoft.com/mssql/server:2019-latest

# Variáveis de ambiente para configurar o SQL Server (substitua pelos valores desejados)
ENV SA_PASSWORD=Urubu@123
ENV ACCEPT_EULA=Y

# Copie o script SQL para o diretório de scripts de inicialização
COPY script.sql /docker-entrypoint-initdb.d/

# Expor a porta do SQL Server (porta padrão: 1433)
EXPOSE 1433

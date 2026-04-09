# TCC-3DA

Projeto de Trabalho de Conclusão de Curso Portal Etec, Etec Prof. Camargo Aranha, curso Desenvolvimento de Sistemas.

## Membros

- Davi de Vasconcelos Furigo
- Felipe Yuji Oda Majer
- Gustavo Lopez Gianelli
- Pedro Henrique Custódio Brito
- Samuel Lírio Dayne

## Projeto Laravel

Antes de mais nada, abra o PowerShell como Administrador e rode:

    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://php.new/install/windows/8.4'))

Isso servirá para tirar qualquer impedimento padrão do Windows para a criação e desenvolvimento do projeto.

### Versões das Tecnologias

#### PHP

- Versão: 8.5

Como instalar / atualizar:

- Baixe a versão 8.5 no site oficial [PHP Download](https://www.php.net/downloads.php).
- Descompacte os arquivos para ```C:\php```. Caso já tenha essa pasta, pode prosseguir com duas abordagens:
    - Renomear a antiga para algo como ```phpOld``` ou ```php8-1``` e deixar o nome php exclusivamente para a versão usada.
    - Usar ```php8-5``` como nome da pasta para a versão a ser usada.
- Após escolher o nome da pasta, defina a variável de ambiente do windows.
    - Na barra de pesquisa do Windows, digite **"variáveis de ambiente"**. Selecione a respectiva opção para **editar**.
    - Selecione **Variáveis de Ambiente**.
    - Em Varíaveis do Sistema, procure por **Path**, selecione e clique para **Editar**.
    - Crie (Novo) ou Edite a para o caminho da pasta: ```C:\(nome da sua pasta de php)```.
 
#### Composer

- Versão: 2.9
- Depende da pasta onde está instalado o PHP, então será necessário reinstalar o Composer caso tenha atualizado o PHP para uma outra versão.

Como instalar:

- Baixe o arquivo .exe em [Composer Download -> Composer-Setup.exe](https://getcomposer.org/download/) e execute. Avance as etapas sem alterar nada até concluir.

#### Node

- Versão: 24.14.1 (LTS)

Como instalar:

- Baixe o arquivo .msi em [Node Download](https://nodejs.org/pt-br/download) e execute. Avance as etapas sem alterar nada até concluir.

#### PostgreSQL

- Versão: 18.3

Como instalar:

- Baixe o arquivo .exe em [PostgreSQL Download](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads) e execute. Avance as etapas sem alterar nada até concluir.
- No seu php.ini, edite como arquivo de texto e retire ";" do início da linha das extensões ```extension=pdo_pgsql``` e ```extension=pgsql```.


#### pgAdmin
Ferramenta de administração e desenvolvimento para banco de dados PostgreSQL

- Versão: 4-9.3

Como instalar:

- Baixe o arquivo .exe em [pgAdmin Download](https://www.postgresql.org/ftp/pgadmin/pgadmin4/v9.13/windows/) e execute. Avance as estapas sem alterar nada até concluir.

#### Laravel / Laravel Installer

- Versão do Installer: 5.14
- Versão do Laravel: 13.1

Como instalar o Installer:

- Rode o seguinte comando em qualquer terminal: ```composer global require laravel/installer```.
- A versão que deve aparecer ao rodar ```laravel -v``` é 5.14.
- Esta versão criará (com ```laravel new```) um projeto na versão 13.1 (mais recente, março de 2026).

- Predefinições do Laravel:
    - Nome: Portal Etec.
    - Starter Kit: None.
    - Database: PgSQL.
    - Deseja rodar ```npm run build``` e ```npm install```? Sim (y - yes)

### Desenvolvimento

- Clone o repositório e, na pasta do projeto (PortalEtec), rode os comandos ```npm run build``` e ```npm install```.
- Rode ```composer run dev``` para rodar o servidor do projeto.

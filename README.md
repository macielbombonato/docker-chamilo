# docker-chamilo
  
[![Build Status](https://travis-ci.org/macielbombonato/docker-chamilo.svg?branch=master)](https://travis-ci.org/macielbombonato/docker-chamilo)
[![DockerHub](http://img.shields.io/:images-dockerhub-brightgreen.svg)](https://hub.docker.com/r/macielbombonato/docker-chamilo)
  
Esta imagem usa como ponto de partida a imagem oficial do PHP com apache (php:5.6-apache) e implementa sobre ela as instalações necessárias para conseguir disponibilizar um sistema chamilo totalmente funcional.

Pontos de observação:  

- Como já tive históricos ruins com arquivos de download do chamilo deixarem de ser disponibilizados em determinado link, coloquei o repositório todo junto a este para que este recurso não deixe de funcionar futuramente por fatores externos.
- A versão oficial da imagem do chamilo não funcionou nos testes que fiz (normalmente estava subindo um terminal unix e por baixo, sobe o apache, achei o processo estranho e ruim, por isso montei essa imagem alternativa).


## Execução local:

### Pré-requisitos:

É necessário ter o docker instalado em sua máquina: [https://www.docker.com/get-docker](https://www.docker.com/get-docker)

O comando ```docker-compose``` deve funcionar também: [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)

### Executando em sua máquina local:

#### Alternativa 1: docker-compose

Após atender os pré-requisitos, basta baixar este repositório (ou simplesmente o arquivo ```docker-compose.yml```) para algum diretório de sua máquina. 

Antes de executar valide o caminho dos arquivos de banco de dados (procure por **volumes** no arquivo **docker-compose.yml**) e caso necessário ajuste este caminho.

Vá até o diretório deste arquivo no terminal (DOS, linux Shell) e entre com o seguinte comando:

```
docker-compose up
```

#### Alternativa 2: Shell script

Neste repositório existem alguns scripts que podem auxiliar em algumas tarefas, dentre elas, inicializar a aplicação.

Para isso, execute:

```
./install.sh
./run.sh
```

#### Resultado

Ambos modos irão subir o serviço de banco de dados e o chamilo, para acessá-lo, vá em seu navegador e digite o seguinte endereço: [http://localhost:8080](http://localhost:8080).

A partir daí é seguir com a configuração e uso do sistema. 

Para saber mais sobre o chamilo, acesse o site oficial do produto [https://chamilo.org/](https://chamilo.org/).

#### Dicas de configuração

Para acessar o banco de dados utilize os seguintes dados (quando solicitado):
  
- Hostname: chamilo_database
- Username: chamilo
- Password: chamilo

# Página Pessoal de Gabriel Piaia

Este repositório contém a implementação da minha página pessoal como uma imagem Docker. Isso permite fácil implantação e gerenciamento da aplicação em qualquer ambiente que suporte Docker. O uso de contêineres Docker garante que a aplicação funcione da mesma forma, independentemente do sistema operacional ou configuração da máquina host.
A aplicação está configurada para rodar em um ambiente **Docker**, utilizando **Nginx** como servidor web.

## Tecnologias Utilizadas

- **HTML**: Estrutura da página.
- **CSS**: Estilização e responsividade.
- **JavaScript**: Funcionalidades dinâmicas (como menu responsivo).
- **Nginx**: Servidor web eficiente.
- **Docker**: Containerização da aplicação.
- **Bootstrap Icons**: Ícones personalizados.
- **Google Fonts**: Tipografia customizada.

## Nginx e Docker

O **Nginx**, dentro de um container **Docker**, serve a aplicação de forma rápida e segura, garantindo:
- **Desempenho otimizado**: Cache e compressão para carregamento mais rápido.
- **Segurança**: Proteção de informações sensíveis e mitigação de vulnerabilidades.
- **Escalabilidade**: Capacidade de gerenciar múltiplas conexões de forma eficiente.

## Como Executar

1. Instale o Docker.
2. Clone este repositório.
3. Execute o comando abaixo para subir o container:

```bash
docker-compose up
```



## COMANDOS ÚTEIS:
```
versionar imagens:
docker build -t app:v1.0.0
docker build -t pagina pessoal:v1.0 .

Remover imagem:
docker image remove app:v1.0.0

Renomear imagem:
docker imagem tag app:latest app:v1.0.0


 docker login

subir imagem:

Criar versão:
docker build -t pagina-pessoal:v1.4 .

docker build -t g4br13lfp/pagina-pessoal:v1.5 .


Criar uma tag com mesmo nome do repositorio:
ALTERAR ID!! VER COM "DOCKER IMAGES" :
docker image tag 80c9dfc533b3 g4br13lfp/pagina-pessoal:v1.6

Subir imagem:
docker push g4br13lfp/pagina-pessoal:v1.6

Baixar imagem:
docker pull g4br13lfp/pagina-pessoal:v1.2



docker run -d -p 80:80 g4br13lfp/pagina-pessoal:v1.6


------------------------------------------------------------------------


LIMPEZA
parar:
docker stop $(docker ps -q)

remover containers:
docker rm $(docker ps -a -q)

remover imagem:
docker rmi -f $(docker images -q)

Remover não usado:
docker system prune -a --volumes





docker-compose.yml

version: '3'
services:
  web:
    image: g4br13lfp/pagina-pessoal:v1.3
    ports:
      - "8080:8080"

```

# Robot Framework
Projeto de testes de serviços, web e mobile com Robot Framework.

## Instalação
Clone este directório.
```shell
git clone https://armcosta-allanpocosta@bitbucket.org/armcosta/armc-robot-framework.git
```

Execute o comando abaixo para instalar as dependências do projeto.
```shell
rfbrowser init
```
## Execução
Execute o comando abaixo para executar todos os testes do projeto.
```shell
robot -d .logs .\
```
*NOTA: Você pode utilizar o argumento ```shell
-i <FEATURE_TAG>
``` para executar apenas os testes com as tags específicas.
```shell
robot -d .logs -i mobiletest .\
```
Para executar os testes Web sem o modo headless, adicione o argumento ``shell
-v HEADLESS:false
``` na linha de comando.
```shell
robot -d .logs -v HEADLESS:false .\
```

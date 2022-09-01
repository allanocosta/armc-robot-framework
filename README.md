# Robot Framework
Projeto de testes de serviços, web e mobile com Robot Framework.

## Instalação
Clone este projeto.
```
git clone https://armcosta-allanpocosta@bitbucket.org/armcosta/armc-robot-framework.git
```

Execute o comando abaixo para instalar as dependências do projeto.
```
rfbrowser init
```
## Execução
Execute o comando abaixo para executar todos os testes do projeto.
```
robot -d .logs .\
```
*NOTA: Você pode utilizar o argumento ```
-i <FEATURE_TAG>
``` para executar apenas os testes com as tags específicas.
```
robot -d .logs -i mobiletest .\
```
Para executar os testes Web sem o modo headless, adicione o argumento ``
-v HEADLESS:false
``` na linha de comando.
```
robot -d .logs -v HEADLESS:false .\
```

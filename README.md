# Sobre o projeto
Projeto de testes de serviços, web e mobile com Robot Framework integrado ao Tox e Robotidy.

## O que é o Tox?
[Tox](https://tox.wiki/en/latest/#what-is-tox) é uma ferramenta genérica de linha de comando de teste e gerenciamento de ```
virtualenv```

## O que é o Robotidy?
[Robotidy](https://robotidy.readthedocs.io/en/stable/#introduction) é uma ferramenta para autoformatação de código para o Robot Framework.

É descendente espiritual do pacote [robot.tidy](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#tidy) interno do Robot Framework.

## Instalação
Faça o download e instale o [Python](https://www.python.org/) com o [pip](https://pip.pypa.io) e o [NodeJS](https://nodejs.org/en/)

Clone este projeto.
```git clone https://armcosta-allanpocosta@bitbucket.org/armcosta/armc-robot-framework.git```

## Execução
Execute o comando abaixo para executar todos os testes do projeto.
#### Exemplo:
```tox -- .```

*NOTA: Você pode utilizar o argumento ```-i <FEATURE_TAG>``` para executar apenas os testes com as tags específicas.

#### Exemplo:
```tox -- -i mobiletest .```

Para executar os testes Web sem o modo headless, adicione o argumento ```-v HEADLESS:false``` na linha de comando.

#### Exemplo:
```tox -- -v HEADLESS:false .```

# Sobre o projeto

Projeto de testes de testes automatizados com Robot Framework integrado ao Tox e Robotidy.

## O que é o Tox?

[Tox][WhatIsTox] é uma ferramenta genérica de linha de comando de teste e gerenciamento de ```virtualenv```

## O que é o Robotidy?

[Robotidy][RobotidyIntroduction] é uma ferramenta para autoformatação de código para o Robot Framework.

É descendente do pacote [robot.tidy][RobotidyRobotFramework] interno do Robot Framework.

## Instalação

1. Instale o [Python][Python] com o [pip][pip]
2. Instale o [NodeJS][NodeJS]
3. Instale o [Appium Desktop][AppiumDesktop]
4. Instale o [Android Studio][AndroidStudio]
5. Clone este projeto ```git clone https://armcosta-allanpocosta@bitbucket.org/armcosta/armc-robot-framework.git```
6. Instale o [Tox][ToxInstall] ```pip install tox```

### Exemplo de execução de todos os cenários do projeto

```tox -- .```

- NOTA: Você pode utilizar o argumento ```-i <FEATURE_TAG>``` para executar apenas os testes com as tags específicas

### Exemplo de execução por TAG

```tox -- -i mobiletest .```

Para executar os testes Web sem o modo headless, adicione o argumento ```-v HEADLESS:false``` na linha de comando.

### Exemplo de execução dos testes Web com o modo HEADLESS desabilitado

```tox -- -v HEADLESS:false .```

[WhatIsTox]: https://tox.wiki/en/latest/#what-is-tox
[RobotidyIntroduction]: https://robotidy.readthedocs.io/en/stable/#introduction
[RobotidyRobotFramework]: https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#tidy
[Python]: https://www.python.org/
[pip]: https://pip.pypa.io
[NodeJS]: https://nodejs.org/en/
[ToxInstall]: https://tox.wiki/en/latest/install.html
[AppiumDesktop]: https://appium.io/downloads.html
[AndroidStudio]: https://developer.android.com/studio

# Sobre o projeto

Projeto de testes de testes automatizados com Robot Framework integrado ao Tox e Robotidy.

## O que é o Tox?

[Tox][WhatIsTox] é uma ferramenta genérica de linha de comando de teste e gerenciamento de ```virtualenv```

## O que é o Robotidy?

[Robotidy][RobotidyIntroduction] é uma ferramenta para autoformatação de código para o Robot Framework.

É descendente do pacote [robot.tidy][RobotidyRobotFramework] interno do Robot Framework.

## Instalação

1. Instale o [Python][Python] com o [pip][pip].
2. Instale o [Appium Desktop][AppiumDesktop].
3. Instale o [Android Studio][AndroidStudio].
4. Clone este projeto ```git clone https://github.com/allanocosta/armc-robot-framework.git```.
5. Instale o [Tox][ToxInstall] ```pip install tox```.

- Tenha o Java JDK11 ou superior instalado e configurado para utilizar o Appium Desktop e o Android Studio.
- Configure a variável `$ANDROID_HOME` do Android Studio e adicione os diretórios `$ANDROID_HOME\platform-tools`, `$ANDROID_HOME\tools`, `$ANDROID_HOME\tools\bin`, `$ANDROID_HOME\tools\lib` no path do seu sistema.

### Exemplo de execução de todos os cenários do projeto

```bash
tox run-parallel -p 3 -- .
```

- NOTA: Caso não queira executar os testes em paralelo, remova o argumento ```run-parallel``` na execução.

### Exemplo de execução sem paralelismo de todos os cenários de testes

```bash
tox -- .
```

- No arquivo [tox.ini][tox.ini] estão configurados as variáveis para executar os testes de serviços, mobile e web. Caso queira executar um tipo específico de testes, estas variáveis devem ser informadas na execução dos testes. Ex.:

```bash
tox run-parallel -p 3 -e servicetests -- .
```

- NOTA: Você pode utilizar o argumento ```-i <FEATURE_TAG>``` para executar apenas os testes com as tags específicas. Lembre-se de passar as variáveis do tox que contém as TAGs no argumento de execução.

### Exemplo de execução por TAG

```bash
tox run-parallel -p 3 -e mobiletests -- -i home .
```

Para executar os testes Web sem o modo headless, adicione o argumento ```-v HEADLESS:False``` na linha de comando.

### Exemplo de execução dos testes web com o modo HEADLESS desabilitado

```bash
tox run-parallel -p 3 -e webtests -- -v HEADLESS:False .
```

[WhatIsTox]: https://tox.wiki/en/latest/#what-is-tox
[RobotidyIntroduction]: https://robotidy.readthedocs.io/en/stable/#introduction
[RobotidyRobotFramework]: https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#tidy
[Python]: https://www.python.org/
[pip]: https://pip.pypa.io
[ToxInstall]: https://tox.wiki/en/latest/installation.html
[AppiumDesktop]: https://appium.io/downloads.html
[AndroidStudio]: https://developer.android.com/studio
[tox.ini]: https://github.com/allanocosta/armc-robot-framework/blob/develop/tox.ini

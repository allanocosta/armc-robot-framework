*** Settings ***
Documentation   Vamos aprender a fazer LOOPS usando o Robot Framework!!

*** Variables ***
### Indíce da lista          0      1        2       3       4       5
@{MINHA_LISTA_DE_FRUTAS}   maça  abacaxi  banana  morango  laranja  uva
@{NUMEROS_ALEATORIOS}   1   1   2   3   5   8   12

*** Test Case ***
Teste de REPEAT KEYWORD
    [Documentation]  Chama uma mesma keyword várias vezes
    [Tags]  loops   repeat_keyword
    Usando Repeat keyword

Teste de FOR do tipo IN RANGE
    [Documentation]  Faz um loop dentro de um intervalo que você passar
    [Tags]  loops   for_in_range
    Usando FOR IN RANGE

Teste de FOR do tipo IN
    [Documentation]  Faz um loop percorrendo a lista que você passar
    [Tags]  loops   for_in
    Usando FOR IN

Teste de FOR do tipo IN ENUMERATE
    [Documentation]  Faz um loop percorrendo a lista que você passar e percorre o indíce da lista
    [Tags]  loops   for_in_enumerate
    Usando FOR IN ENUMERATE

Teste de Sair do FOR
    [Documentation]  Você controla quando o FOR deve se encerrar antes de terminar todos os LOOPS
    [Tags]  loops   for_in_enumerate_exit_for_loop_if
    Usando FOR IN com EXIT FOR LOOP IF

Tarefa IF e LOOPS
    [Documentation]  Percorrer uma lista de números usando o FOR e IF
    ...              Imprimir uma mensagem no Log caso seja o número 5 e o número 10
    ...              Imprimir uma mensagem no Log caso não seja o número 5 nem o número 10
    [Tags]  secao_5_tarefa_6
    Usando FOR com IF e ELSE

*** Keywords ***
Usando Repeat keyword
    Log To Console  ${\n}
    Repeat Keyword    8x    Log To Console    Minha repetição da keyword!!!

Usando FOR IN RANGE
    Log To Console  ${\n}
    FOR  ${CONTADOR}   IN RANGE  0   5
        Log To Console    Minha posição agora é: ${CONTADOR}
        Log   Minha posição agora é: ${CONTADOR}
    END

Usando FOR IN
    Log To Console    ${\n}
    FOR  ${FRUTA}   IN  @{MINHA_LISTA_DE_FRUTAS}
        Log To Console    Minha fruta é: ${FRUTA}!
        No Operation
    END

Usando FOR IN ENUMERATE
    Log To Console    ${\n}
    FOR   ${INDICE}   ${FRUTA}   IN ENUMERATE   @{MINHA_LISTA_DE_FRUTAS}
        Log To Console    Minha fruta é: ${INDICE} --> ${FRUTA}!
        No Operation
    END

Usando FOR IN com EXIT FOR LOOP IF
    Log To Console    ${\n}
    FOR   ${INDICE}   ${FRUTA}   IN ENUMERATE   @{MINHA_LISTA_DE_FRUTAS}
        Log To Console    Minha fruta é: ${INDICE} --> ${FRUTA}!
        Exit For Loop If    '${FRUTA}'=='banana'
    END

Usando FOR com IF e ELSE
    Log To Console  ${\n}
    FOR  ${NUMERO}  IN  @{NUMEROS_ALEATORIOS}
        IF  ${NUMERO} in (5, 10)
            Log To Console  Eu sou o número ${NUMERO}!
        ELSE
            Log To Console  Eu não sou o número 5 e nem o 10!
        END
    END
  Funcionalidade: Componente para executar ações
  Para permitir ao usuário escolher uma ação a ser executada
  Eu, como programador
  Desejo utilizar o componente h5-action
    

  Cenário: Renderização do componente [situacao]
  Dado que eu tenho uma ação com o [estado]
  Quando eu renderizar o action
  Então deverá ser exibido [spec]
  E o titulo será [titulo]

  Exemplos:
    situacao                                                | estado                                                                             | spec                                              | titulo
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Salvar sem kind, então kind é normal                    |  labelText:'Salvar'                                                                | btn_salvar                                        |
                                                            |                                                                                    |   inside: body                                    |
                                                            |                                                                                    |   text is: Salvar                                 |
                                                            |                                                                                    |   css background-color is: rgba(255, 255, 255, 1) |
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Salvar com kind normal                                  |    labelText:'Salvar', kind: 'normal'                                              | btn_salvar                                        |
                                                            |                                                                                    |   inside: body                                    |
                                                            |                                                                                    |   text is: Salvar                                 |
                                                            |                                                                                    |   css background-color is: rgba(255, 255, 255, 1) |
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Salvar com mode visible e sem kind, então kind é normal |    labelText:'Salvar', mode: 'visible'                                             | btn_salvar                                        |
                                                            |                                                                                    |   inside: body                                    |
                                                            |                                                                                    |   text is: Salvar                                 |
                                                            |                                                                                    |   css background-color is: rgba(255, 255, 255, 1) |
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Salvar com kind primary                                 |    labelText:'Salvar', kind: 'primary'                                             | btn_salvar                                        |
                                                            |                                                                                    |   css background-color is: rgba(0, 188, 212, 1)   |
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Salvar com kind secondary                               |  labelText:'Salvar', kind: 'secondary'                                             | btn_salvar                                        |
                                                            |                                                                                    |   css background-color is: rgba(255, 255, 255, 1) |
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Salvar com kind tertiary                                |    labelText:'Salvar', kind: 'tertiary'                                            | btn_salvar                                        |
                                                            |                                                                                    |   css background-color is: rgba(255, 255, 255, 1) |
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Salvar com mode invisible, então só renderiza um span   |  labelText:'Salvar', kind: 'secondary', mode: 'invisible'                          | btn_salvar                                        |
                                                            |                                                                                    |   absent                                          |
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Salvar com mode de mensagem de erro                     |  labelText:'Salvar', kind: 'secondary', mode: 'Existem campos obrigatórios vazios' | btn_salvar                                        | Existem campos obrigatórios vazios
                                                            |                                                                                    |   css background-color is: rgba(204, 204, 204, 1) |
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Salvar com hintText                                     | labelText:'Salvar', hintText: 'Salvar as informações do paciente'                  | btn_salvar                                        | Salvar as informações do paciente
                                                            |                                                                                    |   inside: body                                    |
                                                            |                                                                                    |   css background-color is: rgba(255, 255, 255, 1) |

  Cenário: Execução com mouse no botão [situacao]
  Dado que eu tenho uma ação com o [estado]
  Quando eu renderizar o action
  E clicar no botão
  Então deverá ser exibido [spec]


  Exemplos:
    situacao                                        | estado                                                                          | spec
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Salvar com clique que muda texto do botão       | labelText:'Salvar', kind: 'tertiary', run: salva_info                           | btn_salvar
                                                    |                                                                                 |   css background-color is: rgba(255, 255, 255, 1)
                                                    |                                                                                 |   text is: Salvo
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    Salvar com clique no botão com mensagem de erro | labelText:'Salvar', mode: 'Existem campos obrigatórios vazios', run: salva_info | btn_salvar
                                                    |                                                                                 |   css background-color is: rgba(204, 204, 204, 1)
                                                    |                                                                                 |   text is: Salvar

#Cenário: Execução com tap - mobile
#Cenário: Execução com teclado
#    Dado que eu tenho um action
#    Quando eu o selecionar usando a tecla tab e depois teclar enter
#    Então será feito a chamada para executar uma ação
#    E naquele action que estiver com o foco do tab, aparecerá o hintText
#    E essa ação será a mesma quando se usa o mouse
#    Mas se no lugar desse action estiver mostrando uma mensagem de erro
#    Então é porque a opção está desabilitada
#
#
#@pendente
#Cenário: Execução por voz
#    Dado que eu tenho vários actions
#    Quando eu falar o nome do action próximo do microfone do equipamento que estiver rodando o programa
#    Então a ação daquele action será executada 
#
#
#       {salvar: {
#            labelText:'', 
#            mode: visible ou invisible ou mensagem de erro(desabilitado),
#            kind: primary, secondary, tertiary, normal
#            run: função,
#            hintText: i18n,
#            shortcut: key
#        }}
#
#Cenário: Renderizar botão com propriedade shortcut: key
# Exemplo: labelText:'Salvar', kind: 'primary', mode: 'visible', hintText: 'Salvar as informações do paciente', shortcut: key
#
# cenario: styles props.style = this.props.style ? this.props.style : {};
# cenario: quando clica, verificar se colocou a classe click por 300ms


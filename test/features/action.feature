Funcionalidade: Componente para executar ações
  Para permitir ao usuário escolher uma ação a ser executada
  Eu, como programador
  Desejo utilizar o componente h5-action
    

Cenário: Renderização do componente
  Dado que eu tenho uma ação com o [estado]
  Quando eu renderizar o action
  Então validar o css [spec]
    
  Exemplos:
    estado                                                   | spec
    ----------------------------------------------------------------------------------------------------------------------
    labelText:'Salvar'                                       | btn_salvar
                                                             |   inside: body
                                                             |   text is: Salvar
                                                             |   css background-color is: rgba(255, 255, 255, 1)
    ----------------------------------------------------------------------------------------------------------------------
    labelText:'Salvar', kind: 'normal'                       | btn_salvar
                                                             |   css background-color is: rgba(255, 255, 255, 1)
    ----------------------------------------------------------------------------------------------------------------------
    labelText:'Salvar', kind: 'primary'                      | btn_salvar
                                                             |   css background-color is: rgba(100, 149, 237, 1)
    ----------------------------------------------------------------------------------------------------------------------
    labelText:'Salvar', kind: 'secondary'                    | btn_salvar
                                                             |   css background-color is: rgba(255, 192, 203, 1)
    ----------------------------------------------------------------------------------------------------------------------
    labelText:'Salvar', kind: 'tertiary'                     | btn_salvar
                                                             |   css background-color is: rgba(50, 205, 50, 1)
    ----------------------------------------------------------------------------------------------------------------------
    labelText:'Salvar', kind: 'secondary', mode: 'visible'   | btn_salvar
                                                             |   inside: body
                                                             |   text is: Salvar
                                                             |   css background-color is: rgba(255, 192, 203, 1)
    ----------------------------------------------------------------------------------------------------------------------
    labelText:'Salvar', kind: 'secondary', mode: 'invisible' | btn_salvar
                                                             |   absent
#Cenário: Execução com tap - mobile 
#Cenário: Execução com mouse
#    Dado que eu tenho um action
#    Quando eu clicar com o mouse nele
#    Então será feito a chamada para executar uma ação
#    Mas se no lugar desse action estiver mostrando uma mensagem de erro
#    Então é porque a opção está desabilitada
#    E se a seta do mouse estiver em cima de uma das opções, será mostrado um hintText
#
#
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

#       {salvar: {
#            labelText:'', 
#            mode: visible ou invisible ou mensagem de erro(desabilitado),
#            kind: primary, secondary, tertiary, normal
#            run: função,
#            hintText: i18n,
#            shortcut: key
#        }}
# cenario: styles props.style = this.props.style ? this.props.style : {};
# cenario: quando clica, verificar se colocou a classe click por 300ms


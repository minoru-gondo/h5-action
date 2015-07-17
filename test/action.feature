Action: 

Funcionalidade: Componente para executar ações
    Para permitir ao usuário escolher uma ação a ser executada
    Eu, como programador 
    Desejo utilizar o componente h5-action
    

Cenário: Renderização do componente
    Dado que eu tenho o [estado] da ação
    Quando eu renderizar o action
    Então validar o css [spec]
 
 Exemplos:
   estado                                   |    spec
   {labelText:'salvar'}                     |    button[label = 'Salvar']
   {labelText:'salvar', kind: 'normal'}     |    button[kind = 'normal']
   {labelText:'salvar', kind: 'primary'}    |    button[kind = 'primary']
   {labelText:'salvar', kind: 'secondary'}  |    button[kind = 'secondary']
   {labelText:'salvar', kind: 'tertiary'}   |    button[kind = 'tertiary']
    
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



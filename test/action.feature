Action: 
Funcionalidade: Componente para executar ações
    Para permitir ao usuário escolher uma ação a ser executada
    Eu, como programador 
    Desejo utilizar o componente h5-action
    

Cenário: Renderização do componente
    Dado que eu tenho o estado da ação
    Quando eu renderizar [render]
    Então validar o css [spec]


Cenário: Estado inicial
    Dado uma tela
    Quando nessa tela tiver um botão, é necessário que em sua criação esteja contido um labelText e um run
    Então o que tiver no labelText é o texto desse botão e no run é a ação que ele executará
    
Cenário: Execução com mouse

Cenário: Execução com teclado


@pendente
Cenário: Execução por voz
    
Cenário: Ação do botão editar
    Dado um botão de editar numa tela de lista
    Quando for clicado na opção editar de um item de uma lista
    Então será aberto a tela de edição
    E os campos dessa tela estarão com os dados daquele item trazidos do banco de dados
    
    
    
Cenário: Ação do botão salvar
    Dado um botão de salvar numa tela de edição
    Quando for alterado os dados na tela
    E for clicado no botão salvar
    Então os dados que estiverem nos campos serão enviados da tela para a estória
    E da estória será gravado no banco de dados
    E ao final será aberto a tela anterior da edição que é a lista
    Mas se não for feito nenhuma alteração dos dados da tela
    Então a ação de enviar para a estória não precisará ocorrer
    E será aberto a tela anterior da edição que é a lista
    
    

Cenário: Ação do botão cancelar
    Dado um botão de cancelar numa tela de edição
    Quando for alterado os dados na tela
    E for clicado no botão cancelar
    Então os dados que estiverem nos campos não serão enviados da tela para a estória
    E será aberto a tela anterior da edição que é a lista
    E se clicar no mesmo item da lista para abrir a tela de edição
    Então os dados que estiverem nos campos serão os mesmos da primeira vez que foi aberto essa tela









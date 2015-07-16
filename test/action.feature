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
    







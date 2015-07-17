Barra de ações 

    Usar story.actions
    
    Exemplo: 
    
       {salvar: {
            labelText:'', 
            mode: visible ou invisible ou mensagem de erro(desabilitado),
            kind: primary, secondary, tertiary, normal
            run: função,
            hintText: i18n,
            shortcut: key
        }}
        
    Quais ações mais importantes (ex: salvar, cancelar, excluir; Limite: 3 ações)
    Desktop: Renderizar inferior a direita as ações mais importantes(primary, secondary, tertiary), 
    renderizar inferior a esquerda os botões menos importantes(normal), se for mais de 3, transformar num menu
    Mobile: Renderizar inferior a direita as ações mais importantes, 
    transformar num menu as ações menos importantes
  
  
  
Actionbar:
 
Funcionalidade: Componente que vai conter actions
    Para permitir ao usuário escolher um entre vários actions e executá-lo
    Eu, como programador 
    Desejo utilizar o componente h5-actionbar
    
    
Cenário: Renderização do componente
    Dado que eu tenho o estado da ação
    Quando eu renderizar [render]
    Então os actions mais importantes serão renderizados do lado inferior a direita no [desktop]
    E os actions menos importantes serão renderizados do lado inferior a esquerda no [desktop]
    Mas se os actions menos importantes forem mais de 3
    Então serão transformados num menu
    E os actions mais importantes serão renderizadas inferior a direita no [mobile]
    E os actions menos importantes serão transformadas num menu no [mobile]
    E não terá hintText nos actions do [mobile]
    
exemplos:
   render     |     desktop     |  mobile

    
    Exemplo: 
    
       {fotografar: {
            labelText:'Tirar Foto', 
            mode: 'Não foi detectado nenhum dispositivo fotográfico',
            kind: normal
            run: exec_cam(),
            hintText: 'Tirar foto do paciente',
            shortcut: key
        },
        agendar: {
            labelText:'Agendar', 
            mode: 'visible',
            kind: normal
            run: agend_consult(),
            hintText: 'Agendar consulta do paciente',
            shortcut: key
        }}

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    

    
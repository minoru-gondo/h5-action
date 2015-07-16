Barra de ações 
    Usar estoria.actions
    Exemplo: 
       {salvar: {
            labelText:'', 
            mode: visible ou invisible ou mensagem de erro(desabilitado),
            kind: primary, secondary, tertiary, normal
            run: função,
            hintText: i18n,
            shortcut: key
        }}
        
    Quais ações mais importantes (ex: salvar, cancelar; Limite: 3 ações)
    Desktop: Renderizar inferior a direita as ações mais importantes, 
    renderizar inferior a esquerda os botões menos importantes, se for mais de 3, transformar num menu
    Mobile: Renderizar inferior a direita as ações mais importantes, 
     transformar num menu as ações menos importantes
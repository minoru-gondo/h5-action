.given('que eu tenho o [estado] da ação', function () {
    mock = {
        button: {
            labelText:'',
            mode: '',
            kind: '',
            run: func(),
            hintText: i18n,
            shortcut: key
        }
    }
});
.when('eu renderizar o action', function () {
    var view = 'react.create ';
    filewrite('gerado/app/action.view.js', view);

    <h5.action store = {mock}/>

        run(webpack);
});
.then('validar o css [spec]', function (spec) {
    filewrite('gerado/galen/teste_inicial.spec', spec)
    run(galen);
});
//---------------------------------------------------------------------------

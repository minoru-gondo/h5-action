module.exports = function (library, expect, h5_test) {
    library
        .given('que eu tenho uma ação com o ([^\u0000]*)', function (estado, next) {
            expect(estado, 'estado').to.be.an('string');
            h5_test.replace('___mock___', estado);
            next();

        })
        .when('eu renderizar o action', function (next) {
            h5_test.file('app/action.view.js');
            h5_test.serve('app/index.html');
            h5_test.pack('app', next);
        })
        .when('clicar no botão', function (next) {
            h5_test.pack('app', next);
            h5_test.run('test/click.js');
        })
        .then('deverá ser exibido ([^\u0000]*)', function (spec, next) {
            expect(spec).to.be.an('string');
            h5_test.replace('___specSalvar___', spec);
            h5_test.check('test/teste_inicial.spec');
            next();
        })
        .then('o titulo será ([^\u0000]*)', function (titulo, next) {
            if (titulo) {
                h5_test.replace('___titulo___', titulo);
                h5_test.run('test/check_titulo.js');
            }
            next();
        });
};

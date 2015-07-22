module.exports = function (library, expect, h5_test) {
    library
        .given('que o estado da estória é ([^\u0000]*)', function (estado, next) {

            expect(estado, 'estado').to.be.an('string');
            h5_test.replace('___fields___', estado);
            next();

        })
        .when('eu renderizar (.*)', function (caso, next) {
            h5_test.replace('___caso___', caso);
            h5_test.file('app/input.view.js');
            h5_test.serve('app/index.html');
            h5_test.pack('app', next);
        })

    .then('validar ([^\u0000]*)', function (spec, next) {
        expect(spec).to.be.an('string');
        h5_test.replace('$$$spec$$$', spec);
        h5_test.check('test/input.spec');
        // chamar o galen
        next();
    });
};


//
//module.exports = function (library, expect, h5_test) {
//    library
//       .define('ESTADO', /[^\u0000]*/)
//        .given('que eu tenho uma ação com o $ESTADO', function (estado, next) {
//            mock_store = {
//                salvar: estado
//            }
//            next();
//        })
//        .when('eu renderizar o action', function (next) {
//            gera.gera_arquivo('app/action.view.js', {
//                mock: mock_store
//            });
//            next();
//        })
//        .define('SPEC', /[^\u0000]*/)
//        .then('validar o css $SPEC', function (spec, done) {
//            gera.gera_arquivo('galen/teste_inicial.spec', {
//                btn_salvar: spec
//            });
//            done();
//        });
//};

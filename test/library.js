//- criar todos os arquivos da pasta gerado conforme os examplos dos cenarios
//- automaticamente iniciar o webpack
//- automaticamente vai executar o galen e report erro se houver

debugger;

var Yadda = require('yadda');
var Portuguese = Yadda.localisation.Portuguese;
var assert = require('assert');
var format = require('util').format;
var gera = require('./gera');

module.exports = (function () {
    var mock_store;
    var galen = "galen check ";
    var webpack = "webpack-dev-server";
    var library = Portuguese.library()
        .define('ESTADO', /[^\u0000]*/)
        .given('que eu tenho uma ação com o $ESTADO', function (estado, next) {
            mock_store = {
                salvar: estado
            }
            next();
        })
        .when('eu renderizar o action', function (next) {
            gera.gera_arquivo('app/action.view.js', {
                mock: mock_store
            });
            next();
        })
        .define('SPEC', /[^\u0000]*/)
        .then('validar o css $SPEC', function (spec, done) {
            gera.gera_arquivo('galen/teste_inicial.spec', {
                btn_salvar: spec
            });
            done();
        });
    return library;
}());
//---------------------------------------------------------------------------




//            var index = [
//            '<html>' + '\n' +
//            '    <head>' + '\n' +
//            '        <meta charset="utf-8">' + '\n' +
//            '    </head>' + '\n' +
//            '    <body id="app">' + '\n' +
//            '        <script src="bundle.js"></script>' + '\n' +
//            '    </body>' + '\n' +
//            '</html>
//            ];
//            var view = [
//            'require React from "react";' + '\n' +
//            'function createViewTest()' + '\n' +
//            '{' + '\n' +
//            '  return React.createElement(H5Action, {' + '\n' +
//            '       store: ' + mock_store + '},' + '\n' +
//            '       action: "salvar"' + '\n' +
//            '});'
//            ];
//            var webpack = [
//                'var webpack = require('webpack');'
//
//                'module.exports = {'
//                    'entry: __dirname + "/action.view.js",'
//                    'output: {'
//                        'path: __dirname,'
//                        'filename: "bundle.js"'
//                    '},'
//                    'module: {'
//        '               loaders: ['
//                        '{'
//                            'test: /\.less$/,'
//                            'loader: "style!css!less"'
//                        '},'
//                        '{'
//                            'test: /\.jsx?$/,'
//                            'loaders: ["jsx?harmony&stripTypes", "flowcheck"],'
//                            'exclude: /node_modules/'
//                        '},'
//                        '{'
//                            'test: /\.json$/,'
//                            'loader: "json"'
//                        '}'
//                        ']'
//    '},'
//    'devtool: "source-map",'
//    'devServer: {'
//        'contentBase: __dirname,'
//        'hot: false,'
//        'inline: true,'
//        'noInfo: false,'
//        'host: "0.0.0.0",'
//        'port: 3080,'
//        'colors: true'
//    '},'
//    'plugins: ['
//        'new webpack.optimize.MinChunkSizePlugin({'
//            'minChunkSize: 100000000'
//        '})'
//    ']'
//'};'
//
//
//            ];
//            filewrite('gerado/app/index.html', index);
//            filewrite('gerado/app/action.view.js', view);
//            filewrite('gerado/app/webpack.config.js', webpack);
//
//            run('webpack-dev-server');

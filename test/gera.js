var fs = require('fs'),
    path = require('path');

function gera_arquivo(arq, dados) {
    var conteudo = fs.readFileSync(__dirname + '/template/' + arq, {
        encoding: 'utf8'
    });
    var conteudo_gerado_view = conteudo.replace('$$mock$$', JSON.stringify(dados.mock, null, 2));
    fs.writeFileSync(path.resolve(__dirname + '/../temp/' + arq), conteudo_gerado_view, {
        encoding: 'utf8'
    });

    var conteudo_gerado_spec = conteudo.replace('$$btn_salvar$$', JSON.stringify(dados.mock, null, 2));
    fs.writeFileSync(path.resolve(__dirname + '/../temp/' + arq), conteudo_gerado_spec, {
        encoding: 'utf8'
    });
}

module.exports = {
    gera_arquivo: gera_arquivo
};

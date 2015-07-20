var fs = require('fs'),
    path = require('path');

function gera_arquivo(arq, dados) {
    var conteudo = fs.readFileSync(__dirname + '/template/' + arq, {
        encoding: 'utf8'
    });
    var conteudo_gerado = conteudo.replace('$$mock$$', JSON.stringify(dados.mock, null, 2));
    fs.writeFileSync(path.resolve(__dirname + '/../temp/' + arq), conteudo_gerado, {
        encoding: 'utf8'
    });
}

module.exports = {
    gera_arquivo: gera_arquivo
};

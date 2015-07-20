var dot = require('dot'),
    fs = require('fs');

function gera_arquivo(arq, dados) {
    var conteudo = fs.readFileSync('template/' + arq + '.tpl', {
        encoding: 'utf8'
    });
    var fn = dot.template(conteudo);
    var conteudo_gerado = fn(dados);
    fs.writeFileSync('gerado/' + arq, {
        encoding: 'utf8'
    });
}

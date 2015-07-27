var React = require('react');
var H5Action = require('../../../src/action.js')
    //import React from 'react';
    //import H from '../../libs/h5mobile/h5frontend.js';

window.hsession = {
    language: 'pt_br'
};

var mock_store = {
    salvar: {
        ___mock___
    }
};

function salva_info(){

 mock_store.salvar.labelText = 'Salvo'

};

var AppAction = React.createClass({
    render: function () {
        return React.createElement(H5Action, {
            store: mock_store,
            action: 'salvar'
        });
    }
});



React.render(React.createElement(AppAction), document.body);

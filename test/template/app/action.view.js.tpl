var React = require('react');
var H5Action = require('../../../src/action.js')
    //import React from 'react';
    //import H from '../../libs/h5mobile/h5frontend.js';

window.hsession = {
    language: 'pt_br'
};

var mock_store = {
    salvar: {
       {{=estado}}
    }
}


var AppAction = React.createClass({
    render: function () {
        return React.createElement(H5Action, {
            store: mock_store,
            action: 'salvar'
        });
    }
});



React.render(React.createElement(AppAction), document.body);




//import FluxEasy from 'flux-easy';
//import React from 'react';
//import H from '../../libs/h5mobile/h5frontend.js';
//
//window.hsession = {
//    language: 'pt_br'
//};
//
//var injectTapEventPlugin = require("react-tap-event-plugin");
//injectTapEventPlugin();
//
//var mock_editing = {
//    name: ''
//};
//
//var mock_save = {
//    value: ''
//};
//
//var mock_editing_errors = {};
//
//var mock_store = {
//    setState(valor) {
//     this.mock_save = valor
//    },
//    getState() {
//        //var value_save = this.mock_save
//        return {
//            value_save: this.mock_save,
//            editing: this.mock_editing,
//            editing_errors: this.mock_editing_errors
//        }
//    }
//}
//
//
//var AppAction = React.createClass({
//    render: function () {
//        return (
//            <H.Action
//                labelText= "Salvar"
//                run= {this.salvar}
//            />
//        )
//    },
//
//salvar: function () {
//        this.save('teste');
//        alert(mock_store.mock_save);
//},
//
//save: function(valor){
//    var new_valor  = valor + ' ok';
//    mock_store.setState(new_valor)
//}
//
//});
//
//
//
//React.render( < AppAction / > , document.body);

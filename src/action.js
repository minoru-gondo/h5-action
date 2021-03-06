require('./action.less');

var React = require('react');
//var injectTapEventPlugin = require("react-tap-event-plugin");
//injectTapEventPlugin();
var HAction = React.createClass({
    propTypes: {
        store: React.PropTypes.object.isRequired,
        action: React.PropTypes.string.isRequired,
        kind: React.PropTypes.string,
        mode: React.PropTypes.string,
        hintText:React.PropTypes.string,
        run:React.PropTypes.func.isRequired
    },
    getInitialState: function () {
        return {
            clickedButton: null
        }
    },
    mixins: [],
    render: function () {
        var store = this.props.store;
        var action = store.actions[this.props.action];
        var kind = action.kind;
        var mode = action.mode;
        var hintText = action.hintText;
        var run = action.run;
        var props = {};

        props.title = hintText;
        props.onClick = this._click;
        props.className = ['h_action', this.props.action];

        if(kind != 'primary' && kind != 'secondary' && kind != 'tertiary' && kind != undefined && kind != '')
            throw "O kind usado não é valido";

        if (kind == 'primary')
            props.className.push('h_action_kind_primary');

        else if (kind == 'secondary' || kind == 'tertiary')
            props.className.push('h_action_kind_others');

        if (this.state.clickedButton)
            props.className.push('h_action_clicked');

        if (mode == 'visible')
            props.className.push('h_action_mode_visible');

        if(!mode) {
            props.className.push('h_action_mode_visible');
            mode = 'visible';
        }
        if(mode != 'visible' && mode != 'invisible' && kind == 'primary'){
         props.title = mode;
         props.disabled = 'true';
         props.className.push('h_action_mode_error_primary');
        }

        if(mode != 'visible' && mode != 'invisible' && kind != 'primary'){
         props.title = mode;
         props.disabled = 'true';
         props.className.push('h_action_mode_error_others');
        }
        if(this.props.className)
             props.className.push(this.props.className);

        props.className = props.className.join(' ');

        if (mode == 'invisible' && kind == 'primary') {
            throw "kind do action primary não pode ficar com mode invisible"
        }

        if (mode == 'invisible') {
            return React.createElement("span");
        }
        else
            return (React.createElement("button", props, [action.labelText]));
    },

    _click: function (e) {
        setTimeout(function () {
            if(this.props.mode != 'visible' && this.props.mode != 'invisible' && this.props.mode != undefined){
                return
            }
            else {
            this.props.store.actions[this.props.action].run();
            this.setState({

            });
            }
        }.bind(this), 300)
    }
});

module.exports = HAction;

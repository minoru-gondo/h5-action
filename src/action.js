require('./action.less');

var React = require('react');
var injectTapEventPlugin = require("react-tap-event-plugin");
injectTapEventPlugin();
var HAction = React.createClass({
    propTypes: {
        store: React.PropTypes.object.isRequired,
        action: React.PropTypes.string.isRequired,
        kind: React.PropTypes.string.isRequired,
        mode: React.PropTypes.string.isRequired,
        hintText:React.PropTypes.string.isRequired,
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
        var action = store[this.props.action];
        var kind = action.kind;
        var mode = action.mode;
        var hintText = action.hintText;
        var run = action.run;
        var props = {};

        props.title = hintText;
        props.onClick = this._click;
        props.className = ['h_action', this.props.action];

        if (kind == 'primary')
            props.className.push('h_action_kind_primary');
        else if (kind == 'secondary')
            props.className.push('h_action_kind_secondary');
        else if (kind == 'tertiary')
            props.className.push('h_action_kind_tertiary');

        if (this.state.clickedButton)
            props.className.push('h_action_clicked');

        if (mode == 'visible')
            props.className.push('h_action_mode_visible');

        if(!mode) {
            props.className.push('h_action_mode_visible');
            mode = 'visible';
        }
        if(mode != 'visible' && mode != 'invisible'){
         props.title = mode;
         props.disabled = 'true';
         props.className.push('h_action_mode_error');
        }

        props.className = props.className.join(' ');

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
            this.props.store[this.props.action].run();
            this.setState({

            });
            }
        }.bind(this), 300)
    }
});

module.exports = HAction;

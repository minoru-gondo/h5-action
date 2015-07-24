require('./action.less');

var React = require('react');

var HAction = React.createClass({
    propTypes: {
        store: React.PropTypes.object.isRequired,
        action: React.PropTypes.string.isRequired,
        kind: React.PropTypes.string.isRequired,
        mode: React.PropTypes.string.isRequired
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
        var props = {};

        props.onTouchTap = this._click;
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

        props.className = props.className.join(' ');

        if (mode == 'invisible') {
            return null;
        }
        else
            return (React.createElement("button", props, [action.labelText]));
    },
    _click: function (e) {
        var store = this.props.store;
        var action = store[this.props.action];
        this.setState({
            clickedButton: this
        });
        action.run();
        setTimeout(function () {
            this.setState({
                clickedButton: null
            });
        }.bind(this), 300)
    }
});

module.exports = HAction;

require('./action.less');
require('./style.less');

var React = require('react');

var HAction = React.createClass({
    propTypes: {
        store: React.PropTypes.object.isRequired,
        action: React.PropTypes.string.isRequired
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
        var props = {};
        props.label = action.labelText;
        props.onTouchTap = this._click;
        props.className = 'h_action ' + (this.state.clickedButton == this ? 'h_action_clicked' : '');
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

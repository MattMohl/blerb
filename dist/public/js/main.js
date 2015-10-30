var DraftList = React.createClass({displayName: 'DraftList',
	render: function render() {
		var createSet = function createSet(name, index) {
			return React.createElement(
				'li',
				{key: index + name},
				name
				);
		};
		return React.createElement(
			'ul',
			null,
			this.props.sets.map(createSet)
			);
	}
});

var DraftApp = React.createClass({
	mixins: [ReactFireMixin],
	componentWillMount: function() {
		this.firebaseRef = new Firebase('https://mtgsetsmm.firebaseio.com/');
		this.bindAsArray(this.firebaseRef, "sets");
	},
	render: function render() {
		console.log(this.state.sets);
		return React.createElement(DraftList, {items: this.state.sets });
	}
});

ReactDOM.render(
	React.createElement(DraftApp, null),
	document.getElementById('container')
	);
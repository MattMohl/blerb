var DraftList = React.createClass({displayName: 'DraftList',
	render: function render() {
		var createSet = function createSet(set, index) {
			return React.createElement(
				'li',
				{key: index + set.name},
				set.name
			);
		};
		return React.createElement('button', null, 'click me'); React.createElement(
			'ul',
			null,
			console.log(this.props.sets),
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
		return React.createElement(DraftList, {sets: this.state.sets });
	}
});

ReactDOM.render(
	React.createElement(DraftApp, null),
	document.getElementById('container')
);
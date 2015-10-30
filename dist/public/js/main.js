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
			this.sets.map(createSet)
			);
	}
});

var DraftApp = React.createClass({
	mixins: [ReactFireMixin],
	componentWillMount: function() {
		this.firebaseRef = new Firebase('https://ReactFireTodoApp.firebaseio.com/items/');
		this.firebaseRef.limitToLast(25).on('value', function(dataSnapshot) {
			var items = [];
			dataSnapshot.forEach(function(childSnapshot) {
				var item = childSnapshot.val();
				item['.key'] = childSnapshot.key();
				items.push(item);
			}.bind(this));

			this.setState({
				items: items
			});
		}.bind(this));
		
		// this.ref = new Firebase('https://mtgsetsmm.firebaseio.com/');
		// this.ref.on('value', function(data) {
		// 	var sets = [];
		// 	data.forEach(function(childData) {
		// 		sets.push(childData.val());
		// 	});
		// 	this.setState({
		// 		sets: sets
		// 	});
		// });
		// 	console.log(this);
		// this.bindAsArray(this.ref, "items");
		// console.log(this, this.state);
	},
	render: function render() {
		// return React.createElement(DraftList, {items: this });
	}
});

ReactDOM.render(
	React.createElement(DraftApp, null),
	document.getElementById('container')
	);

// ReactDOM.render(
// 	React.createElement(Hello, {name: 'World'}),
// 	document.getElementById('container')
// 	);
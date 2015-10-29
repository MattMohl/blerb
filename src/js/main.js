// var ExampleComponent = React.createClass({
// 	displayName: "ExampleComponent",
// 	mixins: [ReactFireMixin],

// 	render: function render() {
// 		var createCard = function createCard(cardName, cardType) {
// 			return React.createElement(
// 				'li',
// 				{ key: cardName + cardType },
// 				cardName,
// 				cardType
// 			);
// 		};
// 		return React.createElement(
// 			'ul',
// 			null,
// 			this.props.items.map(createCard)
// 		);
// 	}
// });

// var ExampleApp = React.createClass({
// 	displayName: "ExampleApp",

// 	render: function render() {
// 		return React.createElement(
// 			"div",
// 			null,
// 			"Hello"
// 			);
// 	}

// });

// ReactDOM.render(React.createElement(ExampleApp, null), mountNode);

"use strict";

var HelloMessage = React.createClass({
  displayName: "HelloMessage",

  render: function render() {
    return React.createElement(
      "div",
      null,
      "Hello ",
      this.props.name
    );
  }
});

ReactDOM.render(React.createElement(HelloMessage, { name: "John" }), mountNode);


React.createElement('div',null, "Hello");
import React from "react"
import PropTypes from "prop-types"
class Comments extends React.Component {
  constructor(props, context) {
    super(props, context);
    this.state = {
      items: []
    };
    this.addItem = this.addItem.bind(this);
  }

  addItem(e) {
    var itemArray = this.state.items;

    if (this._inputElement.value !== "") {
      itemArray.unshift({
        text: this._inputElement.value,
        key: Date.now()
    });
 
    this.setState({
      items: itemArray
    });
 
    this._inputElement.value = "";
  }
 
  console.log(itemArray);
   
  e.preventDefault(); 
  }

  render () {
    return (
      <div className="main">
        <div className="header">
          <form onSubmit={this.addItem}>
            <input ref={(a) => this._inputElement = a}
                    placeholder="enter task">
            </input>
            <button type='submit'>add</button>
          </form>
        </div>
      </div>
    );
  }
}

export default Comments

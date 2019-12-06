import React from 'react';
import { withRouter } from 'react-router-dom';

class EditShoe extends React.Component {
  componentDidMount() {
    this.props.mountEditForm(this.props.shoeId)
  }

  render() {
    return (
      <div>
        <h3>Edit Shoe</h3>
        <form onSubmit={(e) => {
          e.preventDefault();
          this.props.handleSubmit(this.props.shoeId)
        }}>
          <p>Photo Link:</p>
          <input
            type="text"
            name="photo"
            value={this.props.shoeForm.image_url}
            onChange={this.props.handleFormChange} />
          <p>Price</p>
          <input
            type="integer"
            name="price"
            value={this.props.shoeForm.price}
            onChange={this.props.handleFormChange} />
          <p>Description</p>
          <input
            type="string"
            name="description"
            value={this.props.shoeForm.description}
            onChange={this.props.handleFormChange} />
          <p>Shoe name:</p>
          <input
            type="text"
            name="name"
            value={this.props.shoeForm.name}
            onChange={this.props.handleFormChange} />
          <button>Submit</button>
        </form>
      </div >
    )
  }
}

export default withRouter(EditShoe);

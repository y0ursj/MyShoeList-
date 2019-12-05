import React from 'react';
import { withRouter } from 'react-router-dom';

function EditShoe(props) {

  return (
    <div>
      <h3>Edit Shoe</h3>
      <form onSubmit={(e) => {
        e.preventDefault();
        props.handleSubmit()
      }}>
        <p>Photo Link:</p>
        <input
          type="text"
          name="photo"
          value={props.shoeForm.image_url}
          onChange={props.handleFormChange} />
        <p>Price</p>
        <input
          type="integer"
          name="price"
          value={props.shoeForm.price}
          onChange={props.handleFormChange} />
        <p>Description</p>
        <input
          type="string"
          name="description"
          value={props.shoeForm.description}
          onChange={props.handleFormChange} />
        <p>Shoe name:</p>
        <input
          type="text"
          name="name"
          value={props.shoeForm.name}
          onChange={props.handleFormChange} />
        <button>Submit</button>
      </form>
    </div>
  )
}

export default withRouter(EditShoe);

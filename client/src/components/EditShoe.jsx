import React from 'react';
import { withRouter } from 'react-router-dom';

function EditShoe(props) {
  return (
    <div>
      <h3>Edit Shoe</h3>
      <form onSubmit={props.handleSubmit}>
        <p>Photo Link:</p>
        <input
          type="text"
          name="photo"
          value={props.image_url}
          onChange={props.handleFormChange} />
        <p>Price</p>
        <input
          type="float"
          name="price"
          value={props.price}
          onChange={props.handleFormChange} />
        <p>Description</p>
        <input
          type="string"
          name="description"
          value={props.description}
          onChange={props.handleFormChange} />
        <p>Shoe name:</p>
        <input
          type="text"
          name="name"
          value={props.name}
          onChange={props.handleFormChange} />
        <button>Submit</button>
      </form>
    </div>
  )
}

export default withRouter(EditShoe);

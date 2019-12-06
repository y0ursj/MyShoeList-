import React from 'react';
import { withRouter } from 'react-router-dom';

function CreateShoe(props) {
  if (props.shoeForm.id) {
    props.resetShoeAdd()
  }
  return (
    <div className="create-form" >
      <h2>Create a new shoe</h2>
      {/* {
        props.shoeForm && */}

        <form onSubmit={(e) => {
          e.preventDefault();
          props.newShoe(props.genreId)
        }}>
          <p>Photo Link:</p>
          <input
            type="text"
            name="image_url"
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
            type="string"
            name="name"
            value={props.shoeForm.name}
            onChange={props.handleFormChange} />
          <button>Submit</button>
        </form>
      {/* } */}
    </div >
  )
}

export default withRouter(CreateShoe);
import React, { Component } from 'react';
import { withRouter } from 'react-router-dom';
import { shoesByGenre, destroyShoe } from '../services/api-helper';

class ShoePage extends Component {

  async componentDidMount() {
    // console.log("props", this.props.id)
    this.props.getGenreShoes(this.props.id)

  }



  render() {
    const { shoes } = this.props;
    return (
      <>
        <div>
          {shoes ?
            shoes.map(shoe => (
              <>
                <h1>{shoe.name}</h1>
                <img alt={shoe.name} src={shoe.image_url} />
                <button onClick={() => {
                  this.props.history.push(`/shoes/${shoe.id}/edit`)
                }}>Edit</button>

                <button onClick={() => {
                  this.destroyShoe(shoe.id);
                }}>Delete</button>
              </>
            )) :
            <h2>Loading . . .</h2>


          }
        </div>
        <button onClick={() => {
          this.props.history.push(`/genres/${this.props.id}/new/shoe`)
        }}>Add</button>
      </>
    )
  }
}

export default withRouter(ShoePage);
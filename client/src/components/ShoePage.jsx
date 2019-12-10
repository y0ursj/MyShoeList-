import React, { Component } from 'react';
import { withRouter, Link } from 'react-router-dom';
import { shoesByGenre, destroyShoe } from '../services/api-helper';

class ShoePage extends Component {

  async componentDidMount() {
    // console.log("props", this.props.id)
    this.props.getGenreShoes(this.props.id)

  }



  render() {
    const { shoes, currentUser } = this.props;
    return (
      <>
        <div className='shoe-pagelist'>
          {shoes ?
            shoes.map(shoe => (
              <div className='shoe-page' key={shoe.id}>
                <h1>{shoe.name}</h1>
                <Link to={`/genres/${shoe.genre_id}/shoes/${shoe.id}`}>
                  {/* <button onClick={this.props.handleShoeClick}>
                  </button> */}
                  <img alt={shoe.name} src={shoe.image_url} />
                </Link>

                { currentUser && <>
                  <button className='edit'onClick={() => {
                    this.props.history.push(`/shoes/${shoe.id}/edit`)
                  }}>Edit</button>

                  
                  <button className='delete'onClick={() => {
                    this.props.destroyShoe(shoe.id);
                  }}>Delete</button>
                  </>
                  }
              </div>
            )) :
            <h2>Loading . . .</h2>


          }
        </div>
        {currentUser &&
          <button className='add-button'onClick={() => {
            this.props.history.push(`/genres/${this.props.id}/new/shoe`)
          }}>Add</button>
        }

      </>


    )


  }

}

export default withRouter(ShoePage);
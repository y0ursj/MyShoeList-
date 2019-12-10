import React, { Component } from 'react'
import { shoeByGenre } from '../services/api-helper'

export default class ShoeCard extends Component {

  state = {
    shoe: {}
  }

  async componentDidMount() {
    const shoe = await shoeByGenre(this.props.shoeId)
    this.setState({
      shoe
    })
  }

  render() {
    return (
      <div id="shoeInfo">
        <div className='shoe-card-img'>
          <img src={this.state.shoe.image_url} />
        </div>
        <div className='shoe-card-des'>
        <h2>{this.state.shoe.name}</h2>
        <p>Description: {this.state.shoe.description}</p>
          <p className='price'>$ {this.state.shoe.price}</p>
          </div>

      </div>
    )
  }
}

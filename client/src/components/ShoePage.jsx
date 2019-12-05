import React, { Component } from 'react';
import EditShoe from './EditShoe'
import { Route } from 'react-router-dom';
import { withRouter } from 'react-router';

class ShoePage extends Component {
  constructor(props) {
    super(props);
    this.state = {
      isEdit: false
    }
  }

  async componentDidMount() {
    await this.props.mountEditForm(this.props.id);
  }

  render() {
    const { shoe } = this.props;
    // debugger;
    return (
      <div className="shoe-page">

        {shoe === undefined ? <h2>Loading . . .</h2> : (
          <div>
            {this.state.isEdit ?
              <>
              <img alt={shoe.name} src={shoe.image_url} />
              <Route path={'/shoes/:id/edit'} render={() => (
                <EditShoe
                  handleFormChange={this.props.handleFormChange}

                  handleSubmit={() => {
                    this.props.editShoe();
                    this.setState({ isEdit: false })
                    this.props.history.push(`/shoes/${this.props.shoeForm.id}`)
                  }}
                  shoeForm={this.props.shoeForm} />
                )} />
                </>
              :
              <>
                {
                  this.props.currentUser ?
                    <>
                      {
                        this.props.shoes.filter(shoe => shoe.genre_id === parseInt(this.props.id)).map(shoe => (
                          <React.Fragment key={shoe.id}>
                            <img alt={shoe.name} src={shoe.image_url} />
                            <h1>{shoe.name}</h1>
                            <button onClick={() => {
                              this.setState({
                                isEdit: true
                              })
                              this.props.history.push(`/shoes/${shoe.id}/edit`)
                            }}>Edit</button>
                            <button onClick={() => {
                              this.props.destroyShoe(shoe.id);
                              this.props.history.push('/')
                            }}>Delete</button>
                          </React.Fragment>

                        ))
                      }
                    </>
                    :
                    <>
                    </>
                }
              </>
            }
          </div>)
        }
        <button onClick={() => {
          this.props.history.push(`/genres/${this.props.id}/new/shoe`)
        }}>Add</button>
      </div >)
  }
}

export default withRouter(ShoePage);
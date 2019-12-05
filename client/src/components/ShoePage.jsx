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

  componentDidMount() {
    this.props.mountEditForm(this.props.id);
  }

  render() {
    const { shoe } = this.props;
    return (
      <div className="shoe-page">
        {shoe === undefined ? <h2>Loading . . .</h2> : (
          <div>
            <img alt={shoe.name} src={shoe.photo} />
            {this.state.isEdit ?
              <Route path={'/shoes/:id/edit'} render={() => (
                <EditShoe
                  handleFormChange={this.props.handleFormChange}
                  handleSubmit={(e) => {
                    e.preventDefault();
                    this.props.editShoe();
                    this.setState({ isEdit: false })
                    this.props.history.push(`/shoes/${this.props.shoeForm.id}`)
                  }}
                  shoeForm={this.props.shoeForm} />
              )} />
              :
              <>
                {
                  this.props.currentUser ?
                    <>
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
                    </>
                    :
                    <div>
                    </div>
                }
              </>
            }
          </div>)}
      </div>)
  }
}
export default withRouter(ShoePage);
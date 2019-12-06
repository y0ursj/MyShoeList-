import React from 'react';
import './App.css';
import { Route } from 'react-router-dom';
import { withRouter } from 'react-router';
import Login from './components/Login';
import Register from './components/Register';
import Header from './components/Header';
import ShoePage from './components/ShoePage'
import {
  loginUser,
  registerUser,
  verifyUser,
  readAllShoes,
  updateShoe,
  destroyShoe,
  createShoe,
  readAllGenres,
  shoesByGenre

} from './services/api-helper';
import GenrePage from './components/GenrePage';
import EditShoe from './components/EditShoe';
import CreateShoe from './components/CreateShoe';



class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      currentUser: null,
      authFormData: {
        username: '',
        password: ''
      },
      shoes: [],
      genres: [],
      shoeForm: {
        name: "",
        image_url: "",
        description: "",
        price: "",
      }
    };
  }

  async componentDidMount() {
    await this.getGenres()
    const currentUser = await verifyUser();
    if (currentUser) {
      this.setState({ currentUser })
    }
  }

  getGenres = async () => {
    const genres = await readAllGenres();
    this.setState({
      genres
    })
  }

  newShoe = async (genreId) => {
    let test =
    {
      name: this.state.shoeForm.name,
      image_url: this.state.shoeForm.image_url,
      description: this.state.shoeForm.description,
      price: this.state.shoeForm.price
    }
    // const shoe = await createShoe(this.state.shoeForm, genreId);
    const shoe = await createShoe(test, genreId);
    this.setState(prevState => ({
      shoes: [...prevState.shoes, shoe],
      shoeForm: {
        name: "",
        image_url: "",
        description: "",
        price: "",
      }
    }))
  }

  editShoe = async (shoeId) => {
    const { shoeForm } = this.state
    const newShoe = await updateShoe(shoeId, shoeForm);
    this.setState(prevState => (
      {
        shoes: prevState.shoes.map(shoe => {
          return shoe.id === shoeForm.id ? newShoe : shoe
        }),
      }
    ))
    this.props.history.push("/")
  }

  destroyShoe = async (id) => {
    await destroyShoe(id);
    this.setState(prevState => ({
      shoes: prevState.shoes.filter(shoe => shoe.id !== id)
    }))
  }

  getGenreShoes = async (id) => {
    const genreId = id
    // console.log("genreId", genreId)
    const shoes = await shoesByGenre(genreId);
    this.setState({
      shoes
    })
  }

  handleFormChange = (e) => {
    const { name, value } = e.target;
    this.setState(prevState => ({
      shoeForm: {
        ...prevState.shoeForm,
        [name]: value
      }
    }))
  }

  resetShoeAdd = () => {
    this.setState({
      shoeForm: {
        name: "",
        image_url: "",
        description: "",
        price: ""
      }
    })
  }

  mountEditForm = async (shoe) => {
    const shoes = await readAllShoes();
    const editShoe = shoes.find(el => el.id === parseInt(shoe));
    const { name, image_url, description, price } = editShoe
    this.setState({
      shoeForm: {
        name,
        image_url,
        description,
        price
      }
      // shoeForm: shoe,
      // shoes: shoes
    });
  }

  resetForm = () => {
    this.setState({
      shoeForm: {
        name: "",
        photo: ""
      }
    })
  }


  // ==================================AUTH=====================

  handleLoginButton = () => {
    this.props.history.push("/login")
  }

  handleLogin = async () => {
    const currentUser = await loginUser(this.state.authFormData);
    this.setState({ currentUser });
  }

  handleRegister = async (e) => {
    e.preventDefault();
    const currentUser = await registerUser(this.state.authFormData);
    this.setState({ currentUser });
  }

  handleLogout = () => {
    localStorage.removeItem("jwt");
    this.setState({
      currentUser: null
    })
  }

  authHandleChange = (e) => {
    const { name, value } = e.target;
    this.setState(prevState => ({
      authFormData: {
        ...prevState.authFormData,
        [name]: value
      }
    }));
  }

  render() {
    return (
      <div className="app">
        <Header
          handleLoginButton={this.handleLoginButton}
          handleLogout={this.handleLogout}
          currentUser={this.state.currentUser}
        />
        <Route exact path="/login" render={() => (
          <Login
            handleLogin={this.handleLogin}
            handleChange={this.authHandleChange}
            formData={this.state.authFormData} />)}
        />
        <Route exact path="/register" render={() => (
          <Register
            handleRegister={this.handleRegister}
            handleChange={this.authHandleChange}
            formData={this.state.authFormData} />)}
        />
        <Route exact path='/' render={() => (
          <GenrePage
            genres={this.state.genres}
          />
        )} />
        <Route
          exact path="/genres/:id"
          render={(props) => {
            const { id } = props.match.params;
            return <ShoePage
              id={id}
              shoes={this.state.shoes}
              getGenreShoes={this.getGenreShoes}
              destroyShoe={this.destroyShoe}
              handleFormChange={this.handleFormChange}
              mountEditForm={this.mountEditForm}
              editShoe={this.editShoe}
              shoeForm={this.state.shoeForm}
              currentUser={this.state.currentUser}
            />
          }} />
        <Route
          path="/genres/:id/new/shoe"
          render={(props) => {
            const genreId = props.match.params.id
            return <CreateShoe
              handleFormChange={this.handleFormChange}
              shoeForm={this.state.shoeForm}
              newShoe={this.newShoe}
              resetShoeAdd={this.resetShoeAdd}
              genreId={genreId}
            />
          }
          } />
        <Route exact path='/shoes/:shoeId/edit' render={(props) => (
          <EditShoe
            shoeId={props.match.params.shoeId}
            shoeForm={this.state.shoeForm}
            handleFormChange={this.handleFormChange}
            handleSubmit={this.editShoe}
            mountEditForm={this.mountEditForm}
          />
        )} />

      </div>
    );
  }
}
export default withRouter(App);



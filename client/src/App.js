import React from 'react';
import './App.css';
import { Route, Link } from 'react-router-dom';
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
  readAllGenres

} from './services/api-helper';
import GenrePage from './components/GenrePage';
import EditShoe from './components/EditShoe';


class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {

      currentUser: null,
      authFormData: {
        username: '',
        email: '',
        password: ''
      },
      genres: [],
      shoes: []
    };
  }
  async componentDidMount() {
    await this.getGenres()
    const currentUser = await verifyUser();
    if (currentUser) {
      this.setState({ currentUser })
    }
  }
  getShoes = async () => {
    const shoes = await readAllShoes();
    this.setState({
      shoes
    })
  }

  getGenres = async () => {
    const genres = await readAllGenres();
    this.setState({
      genres
    })
  }

  newShoe = async (e) => {
    e.preventDefault();
    const shoe = await createShoe(this.state.shoeForm);
    this.setState(prevState => ({
      shoes: [...prevState.shoes, shoe],
      shoeForm: {
        name: "",
        photo: ""
      }
    }))
  }

  editShoe = async () => {
    const { shoeForm } = this.state
    await updateShoe(shoeForm.id, shoeForm);
    this.setState(prevState => (
      {
        shoes: prevState.shoes.map(shoe => {
          return shoe.id === shoeForm.id ? shoeForm : shoe
        }),
      }
    ))
  }

  destroyShoe = async (id) => {
    await destroyShoe(id);
    this.setState(prevState => ({
      shoes: prevState.shoes.filter(shoe => shoe.id !== id)
    }))
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

  mountEditForm = async (id) => {
    const shoes = await readAllShoes();
    const shoe = shoes.find(el => el.id === parseInt(id));
    this.setState({
      shoe: shoe,
      shoeForm: shoe
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
          path="/genres/:id"
          render={(props) => {
            const { id } = props.match.params;
            return <ShoePage
              id={id}
              shoe={this.state.shoe}
              handleFormChange={this.handleFormChange}
              mountEditForm={this.mountEditForm}
              editShoe={this.editShoe}
              shoeForm={this.state.shoeForm}
              destroyShoe={this.destroyShoe}
              currentUser={this.state.currentUser}
            />
          }} />
        <Route
          path="/new/shoe"
          render={() => (
            <createShoe
              handleFormChange={this.handleFormChange}
              teacherForm={this.state.shoeForm}
              newTeacher={this.newShoe} />
          )} />
        <Route exact path='/shoes/:shoeId/edit' render={() => (
          <EditShoe
            shoeForm={this.state.shoeForm}
            handleFormChange={this.handleFormChange}
            handleSubmit={this.editShoe}
          />
           )} />
      </div>
    );
  }
}
export default withRouter(App);




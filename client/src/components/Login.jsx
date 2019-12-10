import React from 'react';
import { Link } from 'react-router-dom';


// This component handles our login form and has a link to the register form
const Login = (props) => {

  return (
    <div className='login-form-wrapper'>
      <form className='login-form'onSubmit={(e) => {
        e.preventDefault();
        props.handleLogin();
      }} >
         <h2>Login</h2>
        <p>Username:</p>
        <input name="username" type="text" value={props.formData.username} onChange={props.handleChange} />
        <p>Password:</p>
        <input name="password" type="password" value={props.formData.password} onChange={props.handleChange} />
        <hr/>
        <button>Login</button>
        <Link to="/register">Register</Link>
      </form>
    </div>
  );
}

export default Login;
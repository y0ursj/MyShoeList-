import React from 'react';

// This component handles our register form
const Register = (props) => {

  return (
    <div className="register-form-wrapper">
      <form className='register-form'onSubmit={props.handleRegister} >
      <h2>Register</h2>
        <p>Username:</p>
        <input name="username" type="text" value={props.formData.username} onChange={props.handleChange} />
        <p>Password:</p>
        <input name="password" type="password" value={props.formData.password} onChange={props.handleChange} />
        <hr/>
        <button>Register</button>
      </form>
    </div>
  );
}

export default Register;

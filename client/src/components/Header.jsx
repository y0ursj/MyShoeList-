import React from 'react'
import { Link } from 'react-router-dom';
import logo from '../images/shoe_list.png'

export default function Header(props) {
  return (
    <>
    <header>
    <div></div>
        <Link to='/' onClick={props.resetForm}>
          <img src={logo} alt='shoe list logo' width='20%' id='logo'/>
      </Link>
      <div>
        {props.currentUser
          ?
          <div className ="login_items">
            <p> Welcome!  {props.currentUser.username}</p>
            <button onClick={props.handleLogout}>LogOut</button>
          </div>
            :
            
          <button className='login-logout' onClick={props.handleLoginButton}>Login/Register</button>
        }
      </div>
    </header>
    <main>
      <img className="littlehuman" src={'https://media.giphy.com/media/9LZSXRm9wmkgWEiA5K/giphy.gif'}></img>
      </main>
      </>
  )
}


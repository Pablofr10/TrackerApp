import React from 'react';
import { Link } from 'react-router-dom';

import './style.css';

import logo from '../../assets/logo.svg';

export default function Header() {
 return (
   <header className="container">

       <Link to="/">
            <img className="logo" alt="Logo Projeto" src={logo}/>
       </Link>

       <Link className="reserva" to="/reservas">
         <div>
           <strong>Minhas Reservas</strong>
           <span>0 reservas</span>
          </div>          
       </Link>
   </header>
 );
}
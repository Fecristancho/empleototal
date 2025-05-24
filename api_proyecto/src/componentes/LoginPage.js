import React, { useState } from 'react';
import axios from 'axios';
import './Login.css';
import logo from './imagenes/logoTotal.png'; // Ruta relativa

const Login = () => {
    const [usuario, setUsuario] = useState('');
    const [contrasena, setContrasena] = useState('');

    const handleLogin = async (e) => {
        e.preventDefault();

        try {
            const response = await axios.post(
                `${process.env.REACT_APP_API_URL}/api_login.php`,
                { usuario, contrasena },
                { 
                    withCredentials: true,
                    headers: {
                        'Content-Type': 'application/json'
                    }
                }
            );

            if (response.data.success && response.data.redirect_url) {
                alert(response.data.message);
                window.location.href = `${process.env.REACT_APP_BASE_URL}/${response.data.redirect_url}`;
            } else {
                alert(response.data.message);
            }
        } catch (error) {
            console.error('Error en la solicitud:', error);
            alert('Hubo un problema al procesar la solicitud.');
        }
    };

    return (
        <div className="login-container">
            <header>
                <img className="logo" src={logo} alt="Logo de la empresa" />
            </header>
            <form onSubmit={handleLogin}>
                <h1>Iniciar Sesión</h1>
                {/* ... (resto del formulario igual) ... */}
                <a href={`${process.env.REACT_APP_BASE_URL}/EscogerRegistro.php`}>Registrarse</a>
                <a href={`${process.env.REACT_APP_BASE_URL}/form_recuperar.php`} target="_blank" rel="noopener noreferrer">
                    Olvidó su contraseña?
                </a>
            </form>
        </div>
    );
};

export default Login;
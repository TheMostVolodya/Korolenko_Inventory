import React from 'react'
import { Link } from 'react-router-dom'

export default function Navbar() {
    return (
        <div><nav className="navbar navbar-expand-lg navbar-dark bg-info">
            <Link className="navbar-brand" href="#" to="/">Korolenko-inventory</Link>
            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false">
                <span className="navbar-toggler-icon"></span>
            </button>

            <div className="collapse navbar-collapse" id="navbarSupportedContent">
                <ul className="navbar-nav mr-auto">
                    <li className="nav-item active"> </li>
                    <li className="nav-item"></li>
                    <li className="nav-item dropdown">
                        <a className="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Tables
                        </a>
                        <div className="dropdown-menu" aria-labelledby="navbarDropdown">
                            <Link className="dropdown-item" href="#" to="/showAllMashAndEqui">Машины и оборудование</Link>
                            <div className="dropdown-divider"></div>
                            <Link className="dropdown-item" href="#" to="/showAllMovProperty"> Инвентарь производственный и хозяйственный</Link>
                            <div className="dropdown-divider"></div>
                            <a className="dropdown-item" href="#">Все</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav></div>
    )
}

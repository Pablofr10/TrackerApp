import React from 'react';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';

import Main from './pages/Main';
import Repositorio from './pages/Repositorio';



export default function Routes(){
    return (
        <Router>
            <Switch>
                <Route exact path="/" component={Main} />
                <Route exact path="/repositorio/:repositorio" component={Repositorio} />
            </Switch>
        </Router>
    );
}
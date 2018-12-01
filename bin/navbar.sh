#!/bin/bash

cd ~/

npm i -g create-react-app

create-react-app app

cd app

npm i react-router-dom

npm i styled-components 

npm i @material-ui/core

cd src 

mkdir components 

cd components

touch HomePage.js Navigation.js 

echo 'import React, { Component } from "react"
import AppBar from "@material-ui/core/AppBar"
import Toolbar from "@material-ui/core/Toolbar"
import Typography from "@material-ui/core/Typography"
import Button from "@material-ui/core/Button"
import styled from "styled-components"

const NavButtons = styled.div`
display: flex;
align-items: center;`

const NavContainer = styled.div`
display: flex;
flex-direction: row;
width: 100vw;
justify-content: space-between;`

const BrandLogo = styled.div`
display: flex;
align-items: center;`

const ContactButton = styled.div`
border: solid grey 1px;
border-radius: 10px;`

class NavBar extends Component {
    render() {
        return (
            <div>
                <AppBar position="static">
                    <Toolbar >
                        <NavContainer >
                            <BrandLogo >
                                <Typography variant="h6" color="inherit" >
                                    Brand Name / Logo
                                </Typography>
                            </BrandLogo>
                            <NavButtons >
                                <Button color="inherit">Nav Item</Button>
                                <Button color="inherit">Nav Item</Button>
                                <Button color="inherit">Nav Item</Button>
                                <Button color="inherit">Nav Item</Button>
                                <ContactButton >
                                    <Button color="inherit">Contact</Button>
                                </ContactButton>
                            </NavButtons>
                        </NavContainer>
                    </Toolbar>
                </AppBar>

            </div >
        );
    }
}

export default NavBar;' > Navigation.js

echo 'import React, { Component } from "react"
import Navigation from "./Navigation"

class HomePage extends Component {
  render() {
    return (
        <div>
            <Navigation />
            Hello From HomePage
        </div>
    );
  }
}

export default HomePage;' > HomePage.js


echo 'import React, { Component } from "react";
import HomePage from "./components/HomePage"
import { BrowserRouter as Router, Route, Switch } from "react-router-dom"

class App extends Component {
  render() {
    return (
      <Router>
        <div>
          <Switch>
            <Route exact path="/"component={HomePage} />
          </Switch>
        </div>
      </Router>
    );
  }
}

export default App;' > ../App.js

echo 'Create React App Completed'
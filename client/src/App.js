import React from 'react'
import {
  BrowserRouter as Router,
  Route,
  Switch,
} from 'react-router-dom' 

import Resume from './components/Resume'

const App = () => (
  <Router>
    <Switch>
      <Route path='/resumes/:id' component={Resume} />
      <Route render={() => <div>404</div>} />
    </Switch>
  </Router>
)

export default App;
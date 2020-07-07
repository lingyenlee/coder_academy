import React from 'react';
import ViewSongs from './ViewSongs';
import ViewSong from './ViewSong';
import { BrowserRouter, Route } from 'react-router-dom'
import CreateSong from './CreateSong';
import EditSong from './EditSong';



function App() {
  return (
    <div>
      <BrowserRouter>
        <Route exact path="/" component={ViewSongs} />
        <Route exact path="/songs/:id"
          render={props => <ViewSong songId={props.match.params.id} />} />
        <Route exact path="/songs/new" component={CreateSong} />
        <Route exact path="/songs/:id/edit"  render={props => <EditSong songId={props.match.params.id} /> } />
      </BrowserRouter>

      {/* <ViewSongs />
      <ViewSong songId="1" /> */}
    </div>
  );
}

export default App;

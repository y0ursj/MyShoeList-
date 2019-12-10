import React from 'react';
import { withRouter } from 'react-router';

function GenrePage(props) {
  return (
    <div className="genre-container">
      {props.genres.map(genre => (
        <div
          key={genre.id}
          className="genre-card"
          onClick={(e) => {
            props.history.push(`/genres/${genre.id}`);
            window.scrollTo(0, 0);
          }}>
          <img className="genre-image" alt={genre.name} src={genre.image_url} />
          <h3>
            <p>{genre.name}</p>
          </h3>
        </div>
      ))}
    </div>
  )
}

export default withRouter(GenrePage)
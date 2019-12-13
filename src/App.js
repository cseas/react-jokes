import React from 'react';
import Joke from "./Joke"
import jokesData from "./jokesData";

function App() {
  // arrow function (ES6)
  const jokeComponents = jokesData.map(joke =>
    <Joke key={joke.id}
      question={joke.question}
      punchLine={joke.punchLine}
    />
  );

  // regular function
  // const jokeComponents = jokesData.map(function (joke) {
  //   return (
  //     <Joke key={joke.id}
  //       question={joke.question}
  //       punchLine={joke.punchLine}
  //     />
  //   );
  // });

  return (
    <div>
      {jokeComponents}
    </div>
  );
}

export default App;

import React from "react";

function Joke(props) {
  return (
    <div class="notepaper">
      <figure class="quote">
        <blockquote class="curly-quotes"
          style={{display: props.question ? "block" : "none"}}>
          {props.question}  
        </blockquote>
        <figcaption class="quote-by">
          {props.punchLine}
        </figcaption>
      </figure>
    </div>
  );
}

export default Joke;

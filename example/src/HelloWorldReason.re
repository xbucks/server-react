open ReactDom.Dsl;
open Html;

[@react.component]
let make = () => {
  <div> {"Hello World from Reason" |> React.string} </div>;
};

module Views exposing (..)

import Html exposing (..)

import Models exposing (..)

render : Model -> Html msg
render model =
  h1 [] [ text "Hello World" ]

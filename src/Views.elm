module Views exposing (..)

import Html exposing (..)

import Models exposing (..)
import Routes exposing (..)

render : Model -> Html msg
render model =
  case model.route of
    HomeRoute ->
      h1 [] [ text "Home" ]
    AboutRoute ->
      h1 [] [ text "About" ]
    NotFoundRoute ->
      h1 [] [ text "404" ]

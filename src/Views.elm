module Views exposing (..)

import Html exposing (..)
import Html.Events exposing (..)

import Models exposing (..)
import Routes exposing (..)
import Updates exposing (..)

render : Model -> Html Msg
render model =
  div []
    [ div []
      [ button [ onClick (NavigateToHome) ] [ text "Home" ]
      , button [ onClick (NavigateToAbout) ] [ text "About" ]
      , button [ onClick (NavigateTo404) ] [ text "404" ]
      ]
    , case model.route of
        HomeRoute ->
          h1 [] [ text "Home" ]
        AboutRoute ->
          h1 [] [ text "About" ]
        NotFoundRoute ->
          h1 [] [ text "404" ]
    ]

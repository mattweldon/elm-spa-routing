module App exposing (..)

import Html exposing (..)
import Navigation exposing (..)
import Hop.Types exposing (Address)

import Models exposing (..)
import Routes exposing (..)
import Routing exposing (..)

main : Program Never
main =
  Navigation.program Routing.urlParser
    { init = init
    , urlUpdate = Routing.urlUpdate
    , view = view
    , update = update
    , subscriptions = (always Sub.none)
    }

init : ( Route, Address ) -> ( Model, Cmd msg )
init ( route, address ) =
    ( Model address route, Cmd.none )

view : Model -> Html msg
view model =
  h1 [] [ text "Hello World" ]

update : msg -> Model -> ( Model, Cmd msg )
update msg model =
  ( model, Cmd.none )

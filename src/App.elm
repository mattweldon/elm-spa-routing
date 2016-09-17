module App exposing (..)

import Html exposing (..)
import Navigation exposing (..)
import Hop.Types exposing (Address)

import Models exposing (..)
import Routes exposing (..)
import Routing exposing (..)
import Views exposing (..)
import Updates exposing (..)

main : Program Never
main =
  Navigation.program Routing.urlParser
    { init = init
    , urlUpdate = Routing.urlUpdate
    , view = Views.render
    , update = Updates.update
    , subscriptions = (always Sub.none)
    }

init : ( Route, Address ) -> ( Model, Cmd msg )
init ( route, address ) =
    ( Model address route, Cmd.none )

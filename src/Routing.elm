module Routing exposing (..)

import Navigation exposing(..)
import Hop exposing (..)
import Hop.Types exposing (Address)
import UrlParser exposing (..)

import Routes exposing (..)
import Models exposing (..)

urlParser : Navigation.Parser ( Route, Address )
urlParser =
  let
    parse path =
      path
        |> UrlParser.parse identity routes
        |> Result.withDefault NotFoundRoute

    resolver =
      Hop.makeResolver hopConfig parse
  in
    Navigation.makeParser (.href >> resolver)


urlUpdate : ( Route, Address ) -> Model -> ( Model, Cmd msg )
urlUpdate ( route, address ) model =
    ( { model | route = route, address = address }, Cmd.none )

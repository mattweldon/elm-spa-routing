module Updates exposing (..)

import Models exposing (..)

update : msg -> Model -> ( Model, Cmd msg )
update msg model =
  ( model, Cmd.none )

module Updates exposing (..)

import Models exposing (..)
import Routing exposing (..)

type Msg
  = NavigateToHome
  | NavigateToAbout
  | NavigateTo404

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    NavigateToHome ->
      ( model, navigateTo "" )
    NavigateToAbout ->
      ( model, navigateTo "/about" )
    NavigateTo404 ->
      ( model, navigateTo "asdf" )

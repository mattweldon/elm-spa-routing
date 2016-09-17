module Models exposing (..)

import Hop.Types exposing (Address)

import Routes exposing (Route)

type alias Model =
  { address : Address
  , route : Route
  }

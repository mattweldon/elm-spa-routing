module Routes exposing (..)

import UrlParser exposing ((</>))
import Hop.Types exposing (Config, Address)

type Route
  = HomeRoute
  | AboutRoute
  | NotFoundRoute


routes : UrlParser.Parser (Route -> a) a
routes =
  UrlParser.oneOf
    [ UrlParser.format HomeRoute (UrlParser.s "")
    , UrlParser.format AboutRoute (UrlParser.s "about")
    ]


hopConfig : Config
hopConfig =
  { hash = False
  , basePath = ""
  }

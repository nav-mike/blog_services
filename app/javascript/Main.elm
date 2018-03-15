module Main exposing (..)

import Html exposing (Html, h1, text, div)
import Html.Attributes exposing (class)

-- bootstrap
import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid

-- MODEL

type alias Model =
  {
  }

-- INIT

init : (Model, Cmd Message)
init =
  (Model, Cmd.none)

-- VIEW

view : Model -> Html Message
view model =
  -- The inline style is being used for example purposes in order to keep this example simple and
  -- avoid loading additional resources. Use a proper stylesheet when building your own app.
  Grid.container []
    [ CDN.stylesheet
    , div [ class "page-header" ]
      [ h1 [] [ text "Hello from Elm!" ]
      ]
    ]

-- MESSAGE

type Message
  = None

-- UPDATE

update : Message -> Model -> (Model, Cmd Message)
update message model =
  (model, Cmd.none)

-- SUBSCRIPTIONS

subscriptions : Model -> Sub Message
subscriptions model =
  Sub.none

-- MAIN

main : Program Never Model Message
main =
  Html.program
    {
      init = init,
      view = view,
      update = update,
      subscriptions = subscriptions
    }

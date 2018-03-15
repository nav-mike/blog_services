import Bootstrap.Navbar as Navbar

type alias Model =
  { navbarState : Navbar.State }

initialState : (Model, Cmd Msg)
initialState =
  let
    ( navbarState, navbarCmd ) =
      Navbar.initialState NavbarMsg
  in
    ( { navbarState = navbarState }, navbarCmd )

type Msg
  = NavbarMsg Navbar.State

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NavbarMsg state ->
      ( { model | navbarState = state }, Cmd.none )

view : Model -> Html Msg
view model =
  Navbar.config NavbarMsg
    |> Navbar.withAnimation
    |> Navbar.brand [ href "#" ] [ text "Brand" ]
    |> Navbar.items
      [ Navbar.itemLink [ href "#" ] [ text "Item 1" ]
      , Navbar.itemLink [ href "#" ] [ text "Item 2" ]
      ]
    |> Navbar.view model.navbarState

subscriptions : Model -> Sub Msg
subscriptions model =
  Navbar.subscriptions model.navbarState NavbarMsg

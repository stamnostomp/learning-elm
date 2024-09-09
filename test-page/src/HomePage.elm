module HomePage exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


view model =
    div [ class "jumbotron" ]
        [ h1 [] [text "welcome to Kyles house of cards!"]
        , p []
            [ text "Kyles hous of carsd Inc. (stock symbol "
            , strong [] [ text "KHC" ]
            ,text <|
                """
                 ) is a custom card dealership specolizing in selling custom cards and things of that nature
                """
            ]
        ]



main =
    view "dummy model"

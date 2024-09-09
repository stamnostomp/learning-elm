module Playground exposing (main)

import String
import Html


escapeEarth myVelocity mySpeed fuleStatus =
    let
        escapeVelocityInKmPerSec =
            11.186

        orbitalSpeedInKmPerSec =
            7.67

        whereToLand fule =
            if fule == "low" then
                "Land on droneship"
            else
                "land on launchpad"
    in
    if myVelocity > escapeVelocityInKmPerSec then
        "Godspeed"
    else if mySpeed == orbitalSpeedInKmPerSec then
        "stay in orbit"
    else
        whereToLand fuleStatus

computeSpeed distance time =
    distance / time

computeTime startTime endTime =
    endTime - startTime

add a b =
    a + b

multiply c d =
    c * d

divide e f =
    e / f

palindrome word = word == String.revese word
main =
    escapeEarth 10 6.7 "low"
        |> Html.text


 --Html.text <| String.fromFloat <| add 5 <| multiply 10 <| divide 30 10
  {-  computeTime 2 3
        |> computeSpeed 7.67
        |> escapeEarth 11
        |> Html.text
  -}
    -- gross Html.text (escapeEarth 11 (computeSpeed 7.67 (computeTime 2 3))) -- need parentheces to make clear that we are only passing one argument to Html.text

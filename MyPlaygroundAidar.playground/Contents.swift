import UIKit

var Rock: String = "Rock"
var Paper: String = "Paper"
var Scissors: String = "Scissors"

func result(machinePick: String, humanPick: String) {
    if (machinePick == Rock && humanPick == Paper) {
        print("The Winner is Human, machine have lost")
    } else if (machinePick == Rock && humanPick == Scissors) {
        print("The Winner is Machine, you've lost")
    } else if (machinePick == Rock && humanPick == Rock) {
        print("Draw, Make your pick again")
    } else if (machinePick == Paper && humanPick == Paper) {
        print("Draw, Make your pick again")
    } else if (machinePick == Paper && humanPick == Scissors) {
        print("The Winner is Human, machine have lost")
    } else if (machinePick == Paper && humanPick == Rock) {
        print("The Winner is Machine, you've lost")
    } else if (machinePick == Scissors && humanPick == Paper) {
        print("The Winner is Machine, you've lost")
    } else if (machinePick == Scissors && humanPick == Scissors) {
        print("Draw, Make your pick again")
    } else { (machinePick == Scissors && humanPick == Rock)
        print("The Winner is Human, machine have lost")
    }
}

result(machinePick: Rock, humanPick: Rock)

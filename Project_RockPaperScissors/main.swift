import Foundation

enum Picks {
    case Rock
    case Paper
    case Scissors
}
    
class Game {
    
    var pick: Picks?
    var botPick: Picks?
    
    func startGame() {
        print("Greetings, Player!")
        print("Welcome to the Game of Rock, Paper and Scissors!")
        print("Please make your choice!")
        print("R for Rock")
        print("P for Paper")
        print("S for Scissors")
        myPick()
        BotPick()
        determinationOfWinner()
    }
    
    func myPick() {
        if let pick = readLine(){
            if pick == "R"{
                self.pick = .Rock
                print("You picked Rock")
            } else if pick == "P" {
                self.pick = .Paper
                print("You Picked Paper")
            } else if pick == "S"{
                self.pick = .Scissors
                print("You Picked Scissors")
            } else {
                print("I don't understand your pick, please make a pick")
            }
        }
    }
    
    func BotPick() {
        let random = Int.random(in: 0..<3)
        if random == 0{
            self.botPick = .Rock
            print("Bot picked Rock")
        } else if random == 1{
            self.botPick = .Paper
            print("Bot picked Paper")
        }else{
            self.botPick = .Scissors
            print("Bot picked Scissors")
        }
    }
    
    func determinationOfWinner() {
        if myPick() == BotPick(){
            print("Draw, let's give it another try!")
        }else if myPick() > BotPick(){
            print("Nice, you won! Wanna play again!")
        }else{
            print("Ah, you lost, Wanna play again!")
        }
    }
}

let game = Game()
game.startGame()





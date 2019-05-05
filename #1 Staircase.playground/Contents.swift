import UIKit

//Task #1: Staircase

func staircase(lenght:Int){
    var hash = "#"
    for i in 1...lenght {
        let repeatedSpace = String(repeating: " ", count: lenght-i)
        print("\(repeatedSpace)\(hash)")
        hash += "#"
    }
}


staircase(lenght: 6)

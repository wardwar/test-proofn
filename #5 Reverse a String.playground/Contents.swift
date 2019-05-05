import UIKit

//#5 Reverse a String

let inputString = "Wildan Angga Rahman"

func reverse(string:String) -> String?{
    if(string.count != 0){
        var reversed = ""
        for index in stride(from: string.count, to: 0, by: -1){
            let position = string.index (string.startIndex, offsetBy: index-1)
            reversed.append(string [position])
        }
        return reversed
    }
    return nil
}

print(reverse(string: inputString)!)

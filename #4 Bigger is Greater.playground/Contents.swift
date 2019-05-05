import UIKit

//#4 Bigger is greater

let input1 = "ab"
let input2 = "bb"
let input3 = "hefg"
let input4 = "dhck"
let input5 = "dkhc"

func sort(string:String){
    var arrayString = Array(string)
    
    var bigI = -1
    for i in 1...arrayString.count-1{
        let condition = arrayString[i] > arrayString[i-1];
        if(condition){
            if(i > bigI){
                bigI = i
            }
        }
    }
    
    if(bigI == -1){
     print("No Answer")
    }else{
        
        var bigJ = -1
        
        for j in 1...arrayString.count-1{
            let condition = arrayString[j] > arrayString[bigI-1];
            if(condition){
                if(j > bigJ){
                    bigJ = j
                }
            }
        }
        
        bigJ = arrayString.count-1
        
        while bigI < bigJ {
            let temp = arrayString[bigI]
            arrayString[bigI] = arrayString[bigJ]
            arrayString[bigJ] = temp
            bigI += 1
            bigJ -= 1
            
        }
        
        print(String(arrayString))
    }
    
}

sort(string: input5)

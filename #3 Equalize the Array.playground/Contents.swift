import UIKit

//#3 Equalize the Array

let input1 = [3,3,2,1,3]

struct MostValue {
    let value: Int
    var most: Int
}

func equalize(array: Array<Int>){
    
    var mostValue:Array<MostValue> = []
    for i in 0...array.count-1 {
       
        if(mostValue.isEmpty){
            mostValue.append(MostValue(value: array[i],most: 1))
        }else{
            if(mostValue.filter{$0.value == array[i]}.isEmpty){
                mostValue.append(MostValue(value: array[i],most: 1))
            }else{
                let most = mostValue.first(where:{$0.value == array[i]})?.most
                mostValue.removeAll(where: {$0.value == array[i]})
                mostValue.append(MostValue(value: array[i],most: most!+1))
                
            }
        }
        
    }
    
    let deleted = array.count - (mostValue.map{$0.most}.max() ?? 0)
    print(deleted)
}

equalize(array: input1)

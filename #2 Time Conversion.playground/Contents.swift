import UIKit

//#2 Time Conversion
let timeInput = "07:05:45PM"

func getAmPm(timeInString:String) -> String{
    let substring = timeInString.suffix(2)
    let period = String(substring)
    return period.uppercased()
}

//Time format hh:mm:ssAM  or hh:mm:ssPM
func convertTimeTo24Hours(timeInString:String) -> String{
    let timeFiltered = timeInString.dropLast(2)
    let timeSplit = timeFiltered.split(separator: ":")
    
    let period = getAmPm(timeInString: timeInString)
    let hour = Int(timeSplit[0]) ?? 0
    let minute = Int(timeSplit[1]) ?? 0
    let second = Int(timeSplit[2]) ?? 0

    if(hour == 12 && period == "AM"){
        return "00:\(String(format: "%02d", minute)):\(String(format: "%02d", second))"
    }else if(hour == 12 && period == "PM"){
        return "12:\(String(format: "%02d", minute)):\(String(format: "%02d", second))"
    }else if(period == "PM"){
       return "\(String(format: "%02d", hour+12)):\(String(format: "%02d", minute)):\(String(format: "%02d", second))"
    }else{
       return "\(String(format: "%02d", hour)):\(String(format: "%02d", minute)):\(String(format: "%02d", second))"
    }
}

print(convertTimeTo24Hours(timeInString: timeInput))


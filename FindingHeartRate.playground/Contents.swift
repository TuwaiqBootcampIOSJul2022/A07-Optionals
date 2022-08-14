import UIKit

var heartRate = 75
var hrAverage: Int?

let oldHR1 = 80
let oldHR2 = 76
let oldHR3 = 79
let oldHR4 = 70

print(heartRate)
print(heartRate)

hrAverage = (heartRate + oldHR1)/2
hrAverage = (heartRate + oldHR2)/2
hrAverage = (heartRate + oldHR3)/2
hrAverage = (heartRate + oldHR4)/2

if heartRate != nil{
    print(hrAverage)
}

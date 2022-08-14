import UIKit

struct Computer{
    var ram: Int
    var yearManufactured:Int
    
    if let ram > 0{
        print("\(ram) \(yearManufactured)")
    }else{
        print("nil")
    }
}

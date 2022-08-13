/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    var ram:Int
    var yearsManufactured:Int

    init?(ram:Int , yearsManufactured:Int){
    self.ram = ram
    self.yearsManufactured = yearsManufactured
    if ram > 0 && yearsManufactured > 1970 && yearsManufactured < 2020{
            
        }else{
         return nil
        }
    }
}


//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
var computer1 = Computer(ram: 18, yearsManufactured: 2015)
var computer2 = Computer(ram: 1, yearsManufactured: 1974)
var computer3 = Computer(ram: 19, yearsManufactured: 2019)
if let compter1 = computer1{
    print(computer1?.ram)
    print(computer1?.yearsManufactured)
}
if let computer2 = computer2{
    print(computer2.ram)
    print(computer2.yearsManufactured)
}
if let computer3 = computer3{
    print(computer3.ram)
    print(computer3.yearsManufactured)
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */

/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer{
    var ram: Int
    let yearManufactured: Int
    init?(ram: Int, yearManufactured: Int){
        if ram > 0  && yearManufactured > 1970 && yearManufactured < 2020{
            self.yearManufactured = yearManufactured
            self.ram = ram
        }
        else{
            return nil
        }
    }
}
//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
var computer1 = Computer(ram: 16, yearManufactured: 2016)
var computer2 = Computer(ram: 16, yearManufactured: 2021)

if let computer1 = computer1 {
    print(computer1.ram)
    print(computer1.yearManufactured)
}
else{
    print("Your computer specification is not in the range")
}
if let computer2 = computer2 {
    print(computer2.ram)
    print(computer2.yearManufactured)
}
else{
    print("Your computer specification is not in the range")
}

/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */

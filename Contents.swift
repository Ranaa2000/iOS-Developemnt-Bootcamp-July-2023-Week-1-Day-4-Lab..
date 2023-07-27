import UIKit

/* Task 1 */

// Declare an enum Gender with cases for male, female, and other.
enum Gender {
    case male
    case female
    case other
}

// Create a struct Car with properties for make, model, and year.
struct Car {
    var make : String = ""
    var model : String = ""
    var year : Int = 0
}

// Define a class Person with properties for name, age, and gender, and car.
class Person {
    var name : String = ""
    var age : Int = 0
    var gender : Gender = Gender.male
    var car : Car = Car()
    
    func printSelf() {
        print("Name: \(self.name), Age: \(self.age), Gender: \(self.gender), \(self.car)")
    }
}

// 2 instances of Gender
var x = Gender.male
print(x)

var y = Gender.female
print(y)

// 2 instances of Car
var c1 = Car(make: "BMW", model: "X5", year: 2023)
print(c1)

var c2 = Car(make: "Kia", model: "Sportage", year:2019)
print(c2)

// 2 instances of Person
var p1 = Person()
p1.name = "Abdulrahman"
p1.age = 35
p1.gender = x
p1.car = c1
p1.printSelf()

var p2 = Person()
p2.name = "Rana"
p2.age = 23
p2.gender = y
p2.car = c2
p2.printSelf()

/* Task 2 */

// Create a class BankAccount
class BankAccount{
    // with a balance property.
    var balance: Int = 0
    
    // Implement a method to deposit money
    func deposit (amount: Int) {
        print("deposit of \(amount)")
        self.balance += amount
    }
    
    // another to withdraw money
    func withdraw(amount: Int) {
        print("withdraw of \(amount)")
        // handling negative balances
        if (amount > self.balance) {
            print("Error: insufficient Balance \(self.balance)")
        } else {
            self.balance -= amount
        }
    }
    
    func printSelf(){
        print("Balance is: \(self.balance)")
    }
}

// Test the class using different instances, considering reference types and memory management.

var b1 = BankAccount()
var b2 = b1
var b3 = BankAccount()

// initial balance
b1.deposit(amount: 100)
b2.deposit(amount: 50)
b3.deposit(amount: 25)

// print balances
b1.printSelf()
b2.printSelf()
b3.printSelf()

// withdraw from b1
b1.withdraw(amount: 105)
// withdraw more than balance (negative value)
b2.withdraw(amount: 50)
// withdraw from b3
b3.withdraw(amount: 25)

/* Extra Point 1: Error Handling */
// Define a custom error type LoginError with cases for invalidUsername and invalidPassword.
enum LoginError : Error {
    case invalidUsername
    case invalidPassword
}

// Create a function login that takes username and password as arguments and throws a LoginError if invalid.
func login(username: String, password: String) throws {

    if username != "rana2000" {
        throw LoginError.invalidUsername
    }
    
    if password != "Rana123" {
        throw LoginError.invalidPassword
    }
    
    print("Login successful")
}

// Use do-try-catch blocks to handle errors when calling the login function.
do {
    try login(username: "rana2000", password: "Rana12")
} catch LoginError.invalidUsername {
    print("Invalid Username!")
} catch LoginError.invalidPassword {
    print("Invalid Password!")
}

import UIKit

/* MY PRACTICE FILE */


var goldBars = 100

func spendTenGoldBars(from inventory: inout Int,completion: (Int) -> Void) {
    inventory -= 10
    completion(inventory)
}
print("You had \(goldBars) gold bars.")
spendTenGoldBars(from: &goldBars) { goldBars in
    print("You spend ten gold bars")
    print("You have \(goldBars) gold bars.")}


struct TableReservation {
    var name: String
    var tableNumber: Int
    
    mutating func updateBooking(updatedName: String){
        name = updatedName
    }

}

var johnBooking = TableReservation(name: "John", tableNumber: 1)

print(johnBooking)
johnBooking.updateBooking(updatedName: "Maria")
print(johnBooking)




class LocalFile {
    let name: String
    let fileExtension: String
    var fullFileName: String {
        return name + "." + fileExtension
    }

    init(name: String, fileExtension: String){
        self.name = name
        self.fileExtension = fileExtension
    }
}

let file = LocalFile(name: "image", fileExtension: "png")
print(file.fullFileName)


struct Employee {
  var salary: Double
  var tax = 0.2
  mutating func deductTax() {
    salary = salary - (tax * salary)
  }
}
var emp = Employee(salary: 100)
emp.deductTax()
print(emp.salary)

struct Tax {
  var amount: Int = 5
}
var tax1 = Tax()
var tax2 = tax1
tax1.amount = 20
print("\(tax1.amount), \(tax2.amount)")

class Product   {
  var price: Int = 5
}
var product1 = Product()
var product2 = product1
product1.price = 20
print("\(product1.price), \(product2.price)")

class Vehicle {
  var type: String
  var noOfWheels: Int
  init(type: String, wheels: Int) {
    self.type = type
    noOfWheels = wheels + 1
  }
}
let car = Vehicle(type: "Jeep", wheels: 3)
print(car.type, "has", car.noOfWheels, "wheels")

class Square {
  var width: Double = 0
  var area: Double {
    return width * width
  }
}

let square = Square()
square.width = 2
print(square.area)



struct Book {
    var title: String
    var author: String
    var yearPublished: Int
    
}

func printBookInfo(book: Book){
    print("\"\(book.title)\" was written by \(book.author) and published in \(book.yearPublished).")
}
let myBook = Book(title: "To Kill A Mockingbird", author: "Harper Lee", yearPublished: 1960)

printBookInfo(book: myBook)


func checkEvenOrOrdd(num: Int) {
    if num % 2 == 0 {
        print("The number \(num) is even")
    }
    else {
        print("The number \(num) is odd")
    }
}

checkEvenOrOrdd(num: 3)



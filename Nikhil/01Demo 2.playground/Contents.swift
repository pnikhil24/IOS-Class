import UIKit

var greeting = "Hello, playground"

print("Hi",10,12.25)
print(greeting)

//String interpolation
//  \(variableName)
var language = "Swift"
print("I dont like \(language)")

var age = 23
print("You are \(age) years old and in another \(age) years, you will be \(age * 2)")

var name = "Nikhil"

print("Hello, \(name)!")

var grade = "A"

print("Hello, \(name)! Your grade in IOS class is \(grade)")

print("""
Hello.
World!
""")

print("Hello All, \rWelcome to Swift Programming")

//let is constant
//explict declartion the datatypes
let welcomeMessage = "  Hello!"
print(welcomeMessage , "All")

print("welcome to swift programming", terminator : "-")

print("Hello, This is \(name) in the IOS class I got \(grade)," , terminator : "!")
print("Spring 2022")

print("The list of numbers are", terminator: ":")
print(1,2,3,4,5,6)

print("The new pattern is ", terminator : ":")
print(1,2,3,4,5,6)
print(1,2,3,4,5,6, separator: "-")

var mobileBrand = "Apple"
mobileBrand = "Samsung"
print(mobileBrand)

let pi = 3.14
//let pi = 2.25
print(pi)

var ages : Int = 23
age = ages * 2
print(age)

var aweMessage = "This is Superb!"
print(aweMessage)
print("aweMessage")

var course1 = "iOS"
var course2 = "Java"
print(course1,course2)
print(course1,"-",course2)

print(10,20,30)
print(12.5,15.5)



//Topic Tuples

var httpError = (errorcode : 404 , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorcode, terminator : ":")
print(httpError.errorMessage)

var names = ("Nikhil","Akhil")
var fname = names.0
var lname = names.1
print(fname , terminator : ":")
print(lname)

var origin = (x : 0 , y : 0)
var point = origin
print(point)

let city = (name : "Maryville" , population : 11,000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

var firstname = "Joe"
var lastname = "Root"
(firstname , lastname) = (lastname , firstname)
print("First Name is \(firstname) and Last Name is \(lastname)")

var cricketKit = ("handGloves" ,"helmet",("bat","ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)

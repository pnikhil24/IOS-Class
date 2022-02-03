import UIKit

/*
When you open this file  in Xcode, it is normal that you see errors in the source code.
 */
//**************** QUESTION 1 ****************
// 1.a) Declare a variable called  distance of type Double, using type annotation
var distance : Double
// 1.b) Declare a constant called  maxWeight of type an Int, with a value of 130, using type annotation
let maxWeight : Int = 130
// 1.c) Print  "Your max weight is xxxx pounds", replacing the xxxx with the value of maxWeight. Use String interpolation
print("Your max weight is \(maxWeight)")

print("\n--------------------------------------------------------")
// 1.d) Write Swift source code to print the below in one single print statement
            /*
                Hello, All
                Welcome to Swift Programming..!
            */

//**************** END OF QUESTION 1 ****************

print("Hello, All \n", terminator: "")
print("Welcome to Swift Programming..!")
print("\n--------------------------------------------------------")


//**************** QUESTION 2 ****************
// 2.a) Predict what will happen when you try and execute below three statements when you uncomment the third line?

var x = 15
var y = 25.0
//y = x

//Answer 2.a) In the above 2 lines of code x is Int and y is double but when we make y=x , here we cannot assign the int to the double

// 2.b) Fix the error in the question 2.a


//**************** END OF QUESTION 2 ****************

//Answer 2.b) is
y = Double(x)
//print(y)


//**************** QUESTION 3 ****************
//3.a) Declare three constants x, y, z and assign the values 2, 7, 5. Write a swift code to find the largest number among the three integers.
let x1 = 0
let y1 = 6
let z1 = 0
if x1>y1,x1>z1{
    print("x is greater")
}else if y1>x1,y1>z1 {
    print("y is greater")
}else if z1>x1,z1>y1 {
    print("z is greater")
}else if x1==y1,y1>z1 {
    print("x is greater")
}else if y1==z1,z1>x1 {
    print ("y is greater")
}else {
    print("z is greater")
}

print("\n--------------------------------------------------------")
//3.b) Declare 2 variables a,b and assign values 13, 103. Write a swift code to check whether the last digit of the two given  integer values are same or not.

//**************** END OF QUESTION 3 ****************
 //Answer 3.b)
 var a=13
 var b=103
if a>0,b>0{
    if(a%10 == b%10){
        print("last digit of both a and b are same")
    }else{
        print("last digit of a and b are not same")
    }
}
print("\n--------------------------------------------------------")
//**************** QUESTION 4 ****************
//using loops
//4.a) Print the numbers 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1)
//Decalare var N = 10
//expected output is 1 10 2 9 3 8 4 7 5 6

var N = 10
for val in 1...N{
    print(val,terminator: " ")
    print(N,terminator: " ")
    N = N-1
    if val == N{
        break
    }
}
print("\n--------------------------------------------------------")
//4.b) If a number C is given, then print the following rhombus
//declare C = 5
//output
// Hint : use terminator in print statements and loops
//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *


//**************** END OF QUESTION 4 ****************

//Answer 4.b)
var C = 5
for i in 1...C
{
  if i % 2 != 0
  {
    for _ in stride(from: C, to: i, by: -1)
    {
        print(terminator : " ")
    }

    for _ in 1...i
    {
        print("*",terminator : " ")
    }
    print(" ")
  }
}
for i in stride(from: C, to: 1, by: -1)
{
   if i % 2 != 0
  {
    for _ in stride(from: C, to: i-1, by: -1)
    {
        print(terminator : " ")
    }

    for _ in stride(from: 2, to: i, by: 1)
    {
        print("*",terminator : " ")
    }
    print(" ")
  }
}
print("\n--------------------------------------------------------")
//**************** QUESTION 5 ****************
// Using Strings
//5.a) Declare a String and assign the value of your own, Write a Swift code to add "A" in front of the string and print it. If the string already begins with "A", then simply print it.
var value : String = "Nikhil Porika"
if(value.hasPrefix("A")){
    print(value)
}else{
    print("A \(value)")
}
print("\n--------------------------------------------------------")
//5.b) Declare a String str1 and and assign the value of your own. Write a swift code to add the last character at the front and back of the given string and print it.

var value1 : String = "Maryvile"
var ouput = value1
let first_char = ouput.remove(at: ouput.startIndex)
let findLast = ouput.index(before: ouput.endIndex)
let last_char = ouput.remove(at: findLast)
ouput.append(first_char)
ouput.insert(last_char, at: (ouput.startIndex))
print(ouput)
print("\n--------------------------------------------------------")

//5.c) Declare a String Swift and print them in the reverse order.
var place : String = "KansasCity"
var reverse =  String(place.reversed())
print(reverse)
print("\n--------------------------------------------------------")
//5.d) Write a Swift code  to check if the first or last characters are 'a' of a given string, return the given string without those 'a' characters in the first and last, otherwise return the given string.
 //declare var myString1 = "ababa"
 //expected output bab
//**************** END OF QUESTION 5 ****************

 //Answer 5.d)
var myString1 = "ababa"
if(myString1.hasPrefix("a")){
    myString1.removeFirst()
}
if(myString1.hasSuffix("a")){
    myString1.removeLast()
}
print(myString1)
print("\n--------------------------------------------------------")

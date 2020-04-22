import UIKit

/*
var str = "Hello, playground"
print(str) */


// ALIAS DE TIPO
typealias Feet = Int
var distance: Feet = 100
print("Resultado: ", distance)

// varA is inferred to be of type Int
var varA = 42
print(varA)

// varB is inferred to be of type Double
var varB = 3.14159
print(varB)

// varC is also inferred to be of type Double
var varC = 3 + 0.14159
//var varD = varA + varB
print(varC)

var varA1 = "Godzilla"
var varB2 = 1000.00

print("Value of \(varA1) is more than \(varB2) millions")

//ENVOLTURA AUTOMATICA

var myString:String? = "Holli"//"Holli"

if myString != nil {
    print(myString)
} else {
    print("myString has nil value","\n")
}

// ENLACE OPCIONAL
var myString2:String? = "Hello, Swift 4!"
//myString2 = "Hello, Swift 4!"

if let yourString = myString2 {
    print("Your string has - \(yourString)")
} else {
    print("Your string does not have a value")
}
// TUPLAS ///
var error501 = (errorCode: 501, description: "Not Implemented")
print(error501.errorCode)   // prints 501.

// CONSTANTES
let constA = 42
print(constA)
let constA1 = 42
print(constA1)
let constB:Float = 3.14159
print(constB)

// LITERALES
let decimalInteger = 17         // 17 in decimal notation
let binaryInteger = 0b10001     // 17 in binary notation
let octalInteger = 0o21         // 17 in octal notation
let hexadecimalInteger = 0x11   // 17 in hexadecimal notation
let stringL = "Hello\tWorld\n\nHello\'Swift 4\'"
print(stringL)

// BUCLES
//for in
var someInts:[Int] = [10, 20, 30]
for index in someInts {
    print( "Value of index is \(index)")
}
// while
var index = 10
while index < 15 {
    print( "Value of index is \(index)")
    index = index + 1
}
// repeat .. while
var index2 = 10
repeat {
    print( "repeat .. while ...Value of index is \(index2)")
    index2 = index2 + 1
}
    while index2 < 20
// Strings
// String creation using String literal
var stringA = "Hello, Swift 4!"
print( stringA )

// String creation using String instance
var stringB = String("Hello, Swift 4!")
print( stringB )

//Multiple line string

let stringC = """
Hey this is a
example of multiple Line
string by tutorialsPoint

"""
print(stringC)

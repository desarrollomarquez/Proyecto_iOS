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

// Empty string creation using String literal
var stringA1 = ""

if stringA1.isEmpty {
    print( "stringA is empty" )
} else {
    print( "stringA is not empty" )
}
// String Interpolacion
var varA3 = 20
let constA3 = 100
var varC3:Float = 20.0

var stringA3 = "\(varA3) times \(constA3) is equal to \(varC3 * 100)"
print( stringA3 )

var varA4 = "Hello, Swift 4!"
print( "\(varA), length is \((varA4.count))" )

var varA5 = "Hello, Swift 4!"
var varB5 = "Hello, World!"

if varA5 == varB5 {
    print( "\(varA5) and \(varB5) are equal" )
} else {
    print( "\(varA5) and \(varB5) are not equal" )
}

for chars in "ThisString" {
    print(chars, terminator: " ")
}
// ARRAYS
var someInts1:[Int] = [10, 20, 30]
print( "Value of first element is \(someInts1[0])" )
print( "Value of second element is \(someInts1[1])" )
print( "Value of third element is \(someInts1[2])" )
//CHANGE ARRAYS
var someInts2 = [Int]()
someInts2.append(20)
someInts2.append(30)
someInts2 += [40]

var someVar2 = someInts2[0]

print( "Value of first element array is \(someVar2)" )
print( "Value of second element is \(someInts2[1])" )
print( "Value of third element is \(someInts2[2])" )

var someStrs3 = [String]()

someStrs3.append("Apple")
someStrs3.append("Amazon")
someStrs3 += ["Google"]
for item in someStrs3 {
    print(item)
}
// SETTERS
let evens: Set = [10,12,14,16,18]
let odds: Set = [5,7,9,11,13]
let primes = [2,3,5,7]
odds.union(evens).sorted()
print(odds)
// [5,7,9,10,11,12,13,14,16,18]
odds.intersection(evens).sorted()
print(odds.intersection(evens).sorted())
//[]
odds.subtracting(primes).sorted()
print(odds.subtracting(primes).sorted())
//[9, 11, 13]
//DICCIONARIOS
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
print(someDict[1])
//Diccionario de Secuencia
var cities = ["Delhi","Bangalore","Hyderabad"]
var Distance = [2000,10, 620]
let cityDistanceDict = Dictionary(uniqueKeysWithValues: zip(cities, Distance))
print(cityDistanceDict)
// Modificando diccionarios
var someDict2:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var oldVal2 = someDict.updateValue("New value of one", forKey: 1)
var someVar3 = someDict[1]

print( "Old value of key = 1 is \(oldVal2)" )
print( "Value of key = 1 is \(someVar3)" )
print( "Value of key = 2 is \(someDict2[2])" )
print( "Value of key = 3 is \(someDict2[3])" )


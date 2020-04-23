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
/*
if myString != nil {
    print(myString)
} else {
    print("myString has nil value","\n")
}*/

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
/*var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
print(someDict[1])*/
//Diccionario de Secuencia
var cities = ["Delhi","Bangalore","Hyderabad"]
var Distance = [2000,10, 620]
let cityDistanceDict = Dictionary(uniqueKeysWithValues: zip(cities, Distance))
print(cityDistanceDict)
// Modificando diccionarios
/*var someDict2:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var oldVal2 = someDict.updateValue("New value of one", forKey: 1)
var someVar3 = someDict[1]

print( "Old value of key = 1 is \(oldVal2)" )
print( "Value of key = 1 is \(someVar3)" )
print( "Value of key = 2 is \(someDict2[2])" )
print( "Value of key = 3 is \(someDict2[3] ?? <#default value#>)" )
*/
//iterando diccionario
var someDict3:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

for (index, keyValue) in someDict3.enumerated() {
    print("Dictionary key \(index) - Dictionary value \(keyValue)")
}

// FUNCIONES

func votersname() -> String {
    return "Alice"
}

print(votersname())
func student(name: String, secondname: String) -> String {
    return name+" - "+secondname
}
print(student(name: "First Program", secondname: "Second Program"))


func display(no1: Int) -> Int {
    let a = no1
    return a
}

print(display(no1: 100))
print(display(no1: 200))

func ls(array: [Int]) -> (large: Int, small: Int) {
    var lar = array[0]
    var sma = array[0]
    
    for i in array[1..<array.count] {
        if i < sma {
            sma = i
        } else if i > lar {
            lar = i
        }
    }
    return (lar, sma)
}

let num = ls(array: [40,12,-5,78,98])
print("Largest number is: \(num.large) and smallest number is: \(num.small)")

/*
func sum(a: Int, b: Int) {
    let a = a + b
    let b = a - b
    print(a, b)
}

sum(a: 20, b: 10)
sum(a: 40, b: 10)
sum(a: 24, b: 6)
*/
//tipos de retornos opcionales
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

func vari<N>(members: N...){
    for i in members {
        print(i)
    }
}

vari(members: 4,3,5)
vari(members: 4.5, 3.1, 5.6)
vari(members: "Swift 4", "Enumerations", "Closures")

func temp(a1: inout Int, b1: inout Int) {
    let t = a1
    print(t)
    a1 = b1
    b1 = t
}

var no = 2
var co = 10
temp(a1: &no, b1: &co)
print("Swapped values are \(no), \(co)")

//tipos Funciones
func sum(a: Int, b: Int) -> Int {
    return a + b
}
var addition: (Int, Int) -> Int = sum
print("Result: \(addition(40, 89))")
/*
func another(addition: (Int, Int) -> Int, a: Int, b: Int) {
    print("Result: \(addition(a, b))")
}
print(another(sum, 10, 20))*/
//Funciones Anidadas
func calcDecrement(forDecrement total: Int) -> () -> Int {
    var overallDecrement = 0
    func decrementer() -> Int {
        overallDecrement -= total
        return overallDecrement
    }
    return decrementer
}

let decrem = calcDecrement(forDecrement: 30)
print(decrem())
// CIERRES
let studname = { print("Welcome to Swift Closures") }
studname()

let divide = {
    (val1: Int, val2: Int) -> Int in
    return val1 / val2
}

let result = divide(200, 20)
print (result)
//Expresiones Cierres
func ascend(s1: String, s2: String) -> Bool {
    return s1 > s2
}
let stringcmp = ascend(s1: "Swift43", s2: "great")
print (stringcmp)
// Retornos implicitos expresion unica
var count:[Int] = [5, 10, -6, 75, 20]
let descending = count.sorted(by: { n1, n2 in n1 > n2 })
let ascending = count.sorted(by: { n1, n2 in n1 < n2 })

print(descending)
print(ascending)
//declarar nombres
var shorthand: (String, String) -> String
shorthand = { $1 }
print(shorthand("100", "200"))
//funcion de operador
/*let numb = [98, -20, -30, 42, 18, 35]
var sortedNumbers = numb.sorted ({
    (left: Int, right: Int) -> Bool in
    return left < right
})

let asc = numb.sorted(<)
print(asc)*/
//trailer
/*import Foundation
var letters = ["North", "East", "West", "South"]

let twoletters = letters.map({
    (state: String) -> String in
    return state.substringToIndex(advance(state.startIndex, 2)).uppercaseString
})

let stletters = letters.map() {
    $0.substringToIndex(advance($0.startIndex, 2)).uppercaseString
}
print(stletters)*/
// ENUMS
enum names {
    case Swift
    case Closures
}

var lang = names.Swift
lang = .Swift

switch lang {
case .Swift:
    print("Welcome to Swift")
case .Closures:
    print("Welcome to Closures")
default:
    print("Introduction")
}
// declaracion de cambio
enum Climate {
    case India
    case America
    case Africa
    case Australia
}

var season = Climate.America
season = .America
switch season {
case .India:
    print("Climate is Hot")
case .America:
    print("Climate is Cold")
case .Africa:
    print("Climate is Moderate")
case .Australia:
    print("Climate is Rainy")
    
}
// valores asociados
enum Student {
    case Name(String)
    case Mark(Int,Int,Int)
}

var studDetails = Student.Name("Swift 4")
var studMarks = Student.Mark(98,97,95)

switch studMarks {
case .Name(let studName):
    print("Student name is: \(studName).")
case .Mark(let Mark1, let Mark2, let Mark3):
    print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
}
// valores sin procesar
enum Month: Int {
    case January = 1, February, March, April, May, June, July, August,
    September, October, November, December
}

let yearMonth = Month.May.rawValue
print("Value of the Month is: \(yearMonth).")

// ESTRUCTURAS
struct studentMarks {
    var mark1 = 100
    var mark2 = 200
    var mark3 = 300
}

let marks = studentMarks()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")




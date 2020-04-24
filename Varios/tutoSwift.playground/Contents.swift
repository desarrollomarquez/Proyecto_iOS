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

struct markStruct {
    var mark1: Int
    var mark2: Int
    var mark3: Int
    
    init(mark1: Int, mark2: Int, mark3: Int) {
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}

var marks2 = markStruct(mark1: 98, mark2: 96, mark3:100)
print(marks2.mark1)
print(marks2.mark2)
print(marks2.mark3)
// CLASES
final class User {
    var name: String

    init(name: String) {
        
        self.name = name.uppercased()
        
    } // init
    
    func changeName(value: String) {
        
        name = value
        
    } // changeName
    
} // User
/*let nery = User(name: "Nery")
print("El nombre del nuevo usuario es: \(nery.name)")
nery.changeName(value: "Maria")
print("El nombre del nuevo usuario es: \(nery.name)")*/


// operadores de identidad
var nery = User(name: "Nery")
var gloria = nery
print("El nombre asociado a la instancia gloria es: \(gloria.name)")
var maria = User(name: "Maria")
print("El nombre asociado a la instancia maria es: \(maria.name)")

if gloria === nery {
    
    print("\nLas instancias nery, gloria y maria cuentan con direcciónes de memoria propias.")
    
    withUnsafePointer(to: &gloria) { (address) in
        
        print("\nGloria address:   \(address)")
        
    } // withUnsafePointer
    
    withUnsafePointer(to: &nery) { (address) in
        
        print("Nery address:     \(address)")
        
    } // withUnsafePointer
    
    withUnsafePointer(to: &maria) { (address) in
        
        print("Maria address:    \(address)")
        
    } // withUnsafePointer
    
    print("""
        
        Sin direcciones de memoria propias estas instancias no pudieran diferenciarse, usualmente estas referencias
        se almacenan en el Stack, al mismo tiempo que hacen referencia a direcciones de memoria en el Heap,
        que es donde se inicializan los tipos por referencia.

        Ahora, lo que nos importa es verificar que en efecto las referencias nery y gloria apuntan a una dirección de memoria común,
        mientras que la instancia Maria tiene que apuntando a una dirección de memoria distinta.

        Veamos:
        
        """)
    
    let neryReferencedAddress = Unmanaged.passUnretained(nery).toOpaque()
    let gloriaReferencedAddress = Unmanaged.passUnretained(gloria).toOpaque()
    let mariaReferencedAddress = Unmanaged.passUnretained(maria).toOpaque()
    
    print("La instancia nery esta referenciando la posición de memoria:     \(neryReferencedAddress)")
    print("La instancia gloria esta referenciando la posición de memoria:   \(gloriaReferencedAddress)")
    print("La instancia maria esta referenciando la posición de memoria:    \(mariaReferencedAddress)")
    
}
//PROPIEDADES
struct Number {
    var digits: Int
    let pi = 3.1415
}
var n = Number(digits: 12345)
n.digits = 67

print("\(n.digits)")
print("\(n.pi)")
// almacenada perezosa
class sample {
    lazy var no = number()    // `var` declaration is required.
}

class number {
    var name = "Swift 4"
}

var firstsample = sample()
print(firstsample.no.name)

//calculadas
/*class sample {
    var no1 = 0.0, no2 = 0.0
    var length = 300.0, breadth = 150.0
    
    var middle: (Double, Double) {
        get {
            return (length / 2, breadth / 2)
        }
        
        set(axis){
            no1 = axis.0 - (length / 2)
            no2 = axis.1 - (breadth / 2)
        }
    }
}

var result = sample()
print(result.middle)
result.middle = (0.0, 10.0)

print(result.no1)
print(result.no2) */

// calculadas solo lectura

class film {
    var head = ""
    var duration = 0.0
    var metaInfo: [String:String] {
        return [
            "head": self.head,
            "duration":"\(self.duration)"
        ]
    }
}

var movie = film()
movie.head = "Swift 4 Properties"
movie.duration = 3.09

print(movie.metaInfo["head"]!)
print(movie.metaInfo["duration"]!)

// calculadas observadores propiedades
class Samplepgm {
    var counter: Int = 0 {
        willSet(newTotal){
            print("Total Counter is: \(newTotal)")
        }
        
        didSet {
            if counter > oldValue {
                print("Newly Added Counter \(counter - oldValue)")
            }
        }
    }
}

let NewCounter = Samplepgm()
NewCounter.counter = 100
NewCounter.counter = 800
// tipo

struct StudMarks {
    static let markCount = 97
    static var totalCount = 0
    
    var InternalMarks: Int = 0 {
        didSet {
            if InternalMarks > StudMarks.markCount {
                InternalMarks = StudMarks.markCount
            }
            if InternalMarks > StudMarks.totalCount {
                StudMarks.totalCount = InternalMarks
            }
        }
    }
}

var stud1Mark1 = StudMarks()
var stud1Mark2 = StudMarks()

stud1Mark1.InternalMarks = 98
print(stud1Mark1.InternalMarks)

stud1Mark2.InternalMarks = 87
print(stud1Mark2.InternalMarks)
// METODOS
class calculations {
    let a: Int
    let b: Int
    let res: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
        res = a + b
    }
    
    func tot(c: Int) -> Int {
        return res - c
    }
    
    func result() {
        print("Result is: \(tot(c: 20))")
        print("Result is: \(tot(c: 50))")
    }
}
let pri = calculations(a: 600, b: 300)
pri.result()

// locales y externos
class division {
    var count: Int = 0
    func incrementBy(no1: Int, no2: Int) {
        count = no1 / no2
        print(count)
    }
}

let counter = division()
counter.incrementBy(no1: 1800, no2: 3)
counter.incrementBy(no1: 1600, no2: 5)
counter.incrementBy(no1: 11000, no2: 3)

//Metodo Mutacion
struct area {
    var length = 1
    var breadth = 1
    func area() -> Int {
        return length * breadth
    }
    mutating func scaleBy(res: Int) {
        self.length *= res
        self.breadth *= res
        print(length)
        print(breadth)
    }
}

var val = area(length: 3, breadth: 5)
val.scaleBy(res: 13)
// tipo
/*class Math {
    class func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        } else {
            return number
        }
    }
}

struct absno {
    static func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        } else {
            return number
        }
    }
}

let no = Math.abs(number: -35)
let num = absno.abs(number: -5)

print(no)
print(num)*/
//SUBINDICES
struct subexample {
    let decrementer: Int
    subscript(index: Int) -> Int {
        return decrementer / index
    }
}
let division2 = subexample(decrementer: 100)

print("The number is divisible by \(division2[9]) times")
print("The number is divisible by \(division2[2]) times")
print("The number is divisible by \(division2[3]) times")
print("The number is divisible by \(division2[5]) times")
print("The number is divisible by \(division2[7]) times")

class daysofaweek {
    var days = ["Sunday", "Monday", "Tuesday", "Wednesday",
                        "Thursday", "Friday", "saturday"]
    subscript(index: Int) -> String {
        get {
            return days[index]
        }
        set(newValue) {
            self.days[index] = newValue
        }
    }
}
var p = daysofaweek()

print(p[0])
print(p[1])
print(p[2])
print(p[3])
//sobrecarga de subindices
/*struct Matrix {
    let rows: Int, columns: Int
    var print: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        print = Array(count: rows * columns, repeatedValue: 0.0)
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            return print[(row * columns) + column]
        }
        set {
            print[(row * columns) + column] = newValue
        }
    }
}
var mat = Matrix(rows: 3, columns: 3)

mat[0,0] = 1.0
mat[0,1] = 2.0
mat[1,0] = 3.0
mat[1,1] = 5.0

print("\(mat[0,0])")*/

// HERRENCIA
// SubClase
/*
class cricket {
    func print() {
        print("Welcome to Swift 4 Super Class")
    }
}

class tennis: cricket {
    override func print() {
        print("Welcome to Swift 4 Sub Class")
    }
}

let cricinstance = cricket()
cricinstance.print()

let tennisinstance = tennis()
tennisinstance.print()*/

class Circle {
    var radius = 12.5
    var area: String {
        return "of rectangle for \(radius) "
    }
}

class Rectangle: Circle {
    var print = 7
    override var area: String {
        return super.area + " is now overridden as \(print)"
    }
}

let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("Radius \(rect.area)")

class Square: Rectangle {
    override var radius: Double { // Anula los metodos creados en la superclase..
        didSet {
            print = Int(radius/5.0)+1
        }
    }
}

let sq = Square()
sq.radius = 100.0
print("Radius \(sq.area)")
// FUNCIONES GENERICAS
func exchange<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}
var numb1 = 100
var numb2 = 200

print("Before Swapping Int values are: \(numb1) and \(numb2)")
exchange(a: &numb1, b: &numb2)
print("After Swapping Int values are: \(numb1) and \(numb2)")

var str1 = "Generics"
var str2 = "Functions"

print("Before Swapping String values are: \(str1) and \(str2)")
exchange(a: &str1, b: &str2)
print("After Swapping String values are: \(str1) and \(str2)")


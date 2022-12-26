import UIKit

var greeting = "Hello, playground"
var pozdrav1 = "Dobré ráno"


//Premenné
//deklarácia
var meno = "Jano"
meno = "Ivan"
meno = "Pavol"

var moja_premenná = true


// Konštanta
let postava = "Adam Durica"
print(postava)

//CamelCase
let pracovnaPozice = "Manažer"
print(pracovnaPozice)

//PascalCase
struct AkoChces{
    
}

//komentáre
// jednoriadkové
/*
 viacriadkové
 */

var obrazok = "nieco.jpg" // komentujeme aj za

//02
//úvodzovky
let citacia = "Napíšem vetu a ked chcem použit úvodzovky tak musím pridať obrátené lomítko, asi takto \"STOJ\" a nebude hlásit chybu"

// viacriadková syntax
let recept = """
500g múku
20 vajec
1 liter mlieka
"""

//práce s textom

var silaVetra = "mierny vietor"
print(silaVetra.count)
print(silaVetra.uppercased())
var prazdnePole = "ahoj"
print(prazdnePole.isEmpty)

// Integer (z latinského slova)

let vstupne = 5

var zarobok = vstupne * 12
let zostatokNaUcte = 1_000_000_000_000_000_000
 
// Double
let pi = 3.14592654
let teplota = -15.5

// Bool
let rybaPlavaVoVode = true

//Prefix a Suffix
let obrazok2 = "fotka.jpg"
obrazok2.hasPrefix("fotka")
obrazok2.hasSuffix("jpg")

// delitelnost čísla
let rodneCislo = 8504017321
rodneCislo.isMultiple(of: 14)
100.isMultiple(of: 2)

//03.diel
5 + 1
(4 - 2)*5
3*3
//modulo

var modulo1 = 6%2
print(modulo1)
var modulo2 = 9%4
print(modulo2)
modulo2 = 9 % 5
print(modulo2)

//04 Združené operátory

var odbehnuteKilometre = 6
var dnesSomOdbehol = 3

var odbehnuteKilometreCelkovo = odbehnuteKilometre + dnesSomOdbehol
var odbehnuteKilometreCelkovo2 = odbehnuteKilometre
odbehnuteKilometreCelkovo2 += dnesSomOdbehol
/*
    +=
    -=
    *=
    %=
 */

// 05. Type Annotation

let meno05 : String = "Alice"
var skore: Double = 0

//pretipovanie

let prveCislo = 1
let druheCislo = 2.4

let vysledok05 = Double(prveCislo) + druheCislo

let pocetPsov05 = "Doma máme psov :"
let pocetPsov05a = 2

let celkovyPocetPsov = pocetPsov05 + String(pocetPsov05a)





import UIKit
import Darwin

// array
let ovocie = ["jablko","hruška","banán","ananás"]
let cisla = [2,3,4,8,9,5,12]
let teplota = [0.0, -3.2, 4.3, 7.1]

// zápis tisku
print(ovocie[0])
print(cisla[2])

//uprava pola
var ovoci = ["jablko","hruška","banán","ananás"] // pole musí byt var
ovoci.count
ovoci.append("hrozno")
ovoci.count
ovoci.append("slivka")
ovoci.append("pomaranč")
ovoci.append("čerešňa")
print(ovoci)
ovoci.count

// Rôzne druhy vytvárania Polí
var kniha = Array<String>()
var auto: [Int] = []  // požívať hlavne tento typ zápisu
var mesiac = [Double]()





//1. varianta zápisu vytvárania nového pola
var ulica = Array<String>()
ulica.append("Agátova")
ulica.append("Brezová")
ulica.append("Cédrova")
ulica.append("Dubová")

//2. varianta zápisu vytvárania nového pola
var vonkajsiaTeplota2: [Double] = []
vonkajsiaTeplota2.append(27.8)
vonkajsiaTeplota2.append(11.0)
vonkajsiaTeplota2.append(23)

vonkajsiaTeplota2 += [17.7]
vonkajsiaTeplota2 += [8.2, 31.5]
print(vonkajsiaTeplota2)
// zmena hodnoty v určitom zázname

vonkajsiaTeplota2[2] = 12.9
print(vonkajsiaTeplota2)
//nahradenie hodnôt v záznamoch 1,2,3
vonkajsiaTeplota2[1...3] = [8.4, 3.1, 47.9, 35.2, 11.5]
print(vonkajsiaTeplota2)

// odstránenie hodnoty
print(ulica)
ulica.remove(at: 1)
print(ulica)
ulica.remove(at: 1)
print(ulica)
ulica.removeAll()
print(ulica)
var vonkajsiaTeplota: [Double] = [23.1, 4.5, 2.2]

// option možnosti -> ked držím option a kliknem na akekolvek slovo tak mi to vypíše definíciu

var znacka = ["volkswagen"]
var skore = [10]

// sorted = usporiadanie
print(teplota)
print(teplota.sorted())

// shuffled = náhodné rozhádzanie

print(ovoci)
let nahodneUsporiadanieOvoci = ovoci.shuffled()
print(nahodneUsporiadanieOvoci)
let usporiadanieOvoci = ovoci.sorted()
print(usporiadanieOvoci)
print(usporiadanieOvoci[0])
print(ovoci[0])

// isEmpty = true/false

skore.isEmpty
kniha.isEmpty

//reversed = funkcionalita ktorá opačne otočí indexi

print(ovoci)
let ovocieOpacne = ovoci.reversed()
print(ovocieOpacne)

// 02 Set(Množina)
// neumožňuje obsahovat duplicity
// poradie nie je podstatné
 
var farby = Set(["červená", "zelená", "modrá", "fialová", "ružová", "žltá", "zelená" ])
print(farby) // zelená se zobrazí jenom jednou a poradí je rôzne

// insert = pridávanie
farby.insert("pomarančová")
print(farby)


// union = funkcionalita, ktorá spojuje  2 množiny(sety) + sorted(zoradenie)
let neparneCisla: Set = [1,3,5,7,9]
let parneCisla: Set = [0,2,4,6,8]
let setUnion = neparneCisla.union(parneCisla)
let setUnion1 = neparneCisla.union(parneCisla).sorted()
let setUnionSorted = setUnion.sorted()
print(setUnion)
print(setUnion.sorted())

 // intersection = výber duplicitných hodnot z dvou množin
let prvocisla: Set = [2,3,5,7]
let setInersection = prvocisla.intersection(neparneCisla).sorted()
print(setInersection)

// symmetricDifference = výber neduplicitných hodnot z dvou množin
let setSymmetricDifference = neparneCisla.symmetricDifference(prvocisla).sorted()
print(setSymmetricDifference)

// Subtracting = odčíta z množiny hodnoty ktoré sa nachádzajú v druhej množine a zanechá zbývajúce hodnoty
neparneCisla.sorted()
prvocisla.sorted()
let setSubstracting = neparneCisla.subtracting(prvocisla).sorted()
print(setSubstracting)


// 03 Dictionary (Slovník)

// jednoduchá práca s Polom

var letiska = ["LHR", "London Heathrow", "Anglicko"]
print("Kód letiska: \(letiska[0])")
print("Názov letiska: \(letiska[1])")
print("Krajina: \(letiska[2])")


//problém nastáva
letiska.remove(at: 1)
print("Názov letiska: \(letiska[1])")

//dictionary
// optional = dáta môžu obsahovať hodnotu alebo nie (NIL)

var letiska2 = [
    "idLetiska": "LHR",
    "menoLetiska": "London Heathrow",
    "krajina": "Anglicko"
]

print(letiska2["idLetiska", default: "N/A"])
print(letiska2["menoLetiska", default: "N/A"])
print(letiska2["krajina", default: "N/A"])
print(letiska2["riaditelLetiska", default: "N/A"]) // kľúč sa nenachádza v dictiory tak vypíše "nil"
print(letiska2["idLetiska", default: "N/A"]) // problém nevyhadzuje, pretože som pridal defaultnú hodnoty ak by nenašiel hodnotu v záaname alebo záznam


// dictionary obsahuje rôzne datové typy
var prvocislo = [
    1: false,
    2: true,
    3: true,
    4: false,
    5: true,
    6: false,
    7: true
]

print(prvocislo[1, default: true])
print(prvocislo[2, default: false])
print(prvocislo[12, default: false])

var pocetObyvatelov = [String: Int]()
pocetObyvatelov["BA"] = 450_000
pocetObyvatelov["KE"] = 330_000
pocetObyvatelov["PP"] = 180_000


print(pocetObyvatelov)
print(pocetObyvatelov["BA", default: 0])
print(pocetObyvatelov["TT", default: 0])

print(pocetObyvatelov.keys)
print(pocetObyvatelov.values)
print(pocetObyvatelov.count)



//1. Zoraď čísla od najmenšieho po najväčšie.
let arr = [0, 34, -14, -43, -1, 38, -8, 26, 44, 43, 33, 50, -45, 2, -13, -38, -6, -50, -46, 49, -39, 21, 19, 10, 42, -40]
print(arr.sorted())

//2.1 Zisti, či sa "duic" nachádza v Array
//2.2 Aký index má slovo "eros"

let arrSlova = ["tempus", "nulla", "cras", "orci", "vel", "non", "commodo", "imperdiet", "enim", "eu", "varius", "amet", "tempus", "id", "quam", "vulputate", "nunc", "morbi", "lectus", "fringilla", "elit", "augue", "eros", "sagittis", "dolor", "donec", "ultrices", "mattis", "ultricies", "elit", "fringilla", "augue", "quis", "sagittis", "ipsum", "accumsan", "mauris", "tincidunt", "malesuada", "venenatis", "felis", "leo", "nec", "non", "hendrerit", "auctor", "efficitur", "laoreet", "id", "quisque", "vitae", "libero", "morbi", "felis", "eu", "condimentum", "ut", "magna", "quis", "arcu", "ex", "mi", "duis", "pulvinar", "vitae", "suscipit", "tempus", "non", "bibendum", "nullam", "volutpat", "aliquam", "vivamus", "sed", "quam", "velit", "ultricies", "ut", "auctor", "magna", "ligula", "nec", "nisi", "rutrum", "sem", "sed", "a", "interdum", "fringilla", "viverra", "ullamcorper", "nibh", "maecenas", "pulvinar", "vestibulum", "odio", "sit", "vel", "metus", "fusce"]

print(arrSlova.contains("duic"))



//arrSlova[0]
//print(arrSlova.firstIndex(of: "eros"))




//adsf
// pokračovat t= 08:14

// iba som si testoval výpočet rč
/*
var rc = 8504017335
rc.isMultiple(of: 11)

var rok: String
var mesic: String
var den: String

rok = "1985"
mesic = "04"
den = "01"
var rocnik = rok.dropFirst(2)
var rcPosledniCast = "0000"

var rc1 = rocnik + mesic + den + rcPosledniCast
var rcCislo = Int(rc1)
var delitelneJedenasti: Bool = rcCislo!.isMultiple(of: 11)

func Vypocet(cisloVstup:Int)-> Bool{
    delitelneJedenasti = cisloVstup.isMultiple(of: 11)
    return delitelneJedenasti
}

if delitelneJedenasti == false
{
    while delitelneJedenasti == false{
        rcCislo! += 1
        Vypocet(cisloVstup: rcCislo!)
        print(Vypocet(cisloVstup: rcCislo!))
    }
    print(rcCislo!)
    
}else{ print(rcCislo ?? "Chyba")
    
}
print("Hotovo")


*/

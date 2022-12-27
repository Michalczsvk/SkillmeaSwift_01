import UIKit

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

import UIKit
/*
1. Spojte nasledovné stringy dokopy
auto / servis
ľadový / čaj
poly / styrén

2. Automatizuj vzorec na výpočet obvodu obdĺžnika

3. Automatizuj vzorec na výpočet objemu kocky

4. Chopok je na slovensku najveternejšie miesto. Priemerná ročná rýchlosť vetra je 10 m/s.
Aká je priemerná rýchlosť vetra v jednotkách km/h a ktas?Programovanie je kažodenné riešenie problémov. Koľko ktas je 1km/h? Hľadajte, googlite, študujte :)

5. 29.11.1965 bola najvyššia nameraná rýchlosť vetra na slovensku na Skalnatom Plese. Vietor dosahoval rýchlosť 283 km/h.
Chcem vedieť aká rýchlosť to je v m/s a ktas.
*/

//1.
let automobil = "auto"
let servis1 = "servis"
print(automobil+servis1)

let p1 = "ľadový"
let p12 = "\(p1) čaj"
print(p12)

let p2 = "poly"
let p23 = "\(p2)styrén"
print(p23)

// 2. Automatizuj vzorec na výpočet obvodu obdĺžnika

var stranaA : Double = 5
var stranaB : Double = 4.2
let vypocetObvodu : Double = 2 * (stranaA + stranaB)
let veta = """
"Pro  strany a= \(stranaA) cm
a     stranu b= \(stranaB) cm
se rovná obvod=\(vypocetObvodu) cm
"""
print(veta)

// 3. Automatizuj vzorec na výpočet objemu kocky

var stranaKocky : Double = 6.3
let vypocetObjemuKocky : Double = stranaKocky * stranaKocky * stranaKocky
let vetaObjemKocky = "Pro stranu a = \(stranaKocky) cm se objem rovná = \(vypocetObjemuKocky) cm."
print(vetaObjemKocky)

/*
 4. Chopok je na slovensku najveternejšie miesto. Priemerná ročná rýchlosť vetra je 10 m/s.
 Aká je priemerná rýchlosť vetra v jednotkách km/h a ktas?Programovanie je kažodenné riešenie problémov. Koľko ktas je 1km/h? Hľadajte, googlite, študujte :)
 */

let priemernaRocnaRychlostVetraMetre: Double = 10
let vypocetMetrNaKm: Double = priemernaRocnaRychlostVetraMetre * 3.5999971
var promenaA : Double = vypocetMetrNaKm
var vypocetKts : Double = promenaA * 0.53996
let veta04 = "Priemerná ročná rýchlosť vetra na Chopku je \(vypocetMetrNaKm) km/h a ktas = \(vypocetKts) ktas."
print(veta04)


/*
 5. 29.11.1965 bola najvyššia nameraná rýchlosť vetra na slovensku na Skalnatom Plese. Vietor dosahoval rýchlosť 283 km/h.
 Chcem vedieť aká rýchlosť to je v m/s a ktas .
 */
let najvyssiaNameranaRychlostKmH : Double = 283
let vypocetKmNaMetr : Double = najvyssiaNameranaRychlostKmH / 3.5999971
promenaA = najvyssiaNameranaRychlostKmH
var vypocetKts2 : Double = promenaA * 0.53996
let veta05 = "Najvyššia rýchlosť je \(vypocetKmNaMetr) m/s a ktas bolo \(vypocetKts2) ktas."
print(veta05)


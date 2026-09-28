// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: Prisfraga v4.1
// Genererad: 2026-09-26

Logical: PrisfragaRequest
Id: prisfraga-request
Title: "Prisfraga — Request"
Description: """
  Logisk modell för begäran i Prisfraga
  (urn:riv:se.apotekensservice:pris:PrisfragaResponder:4, PrisfragaRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB"
* argosHeader 1..1 BackboneElement "argosHeader" "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction"
  * forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
  * legitimationskod 0..1 string "legitimationskod" "legitimationskod"
  * fornamn 0..1 string "fornamn" "fornamn"
  * efternamn 0..1 string "efternamn" "efternamn"
  * yrkesgrupp 0..1 string "yrkesgrupp" "yrkesgrupp"
  * befattningskod 0..1 string "befattningskod" "befattningskod"
  * arbetsplatskod 0..1 string "arbetsplatskod" "arbetsplatskod"
  * arbetsplatsnamn 0..1 string "arbetsplatsnamn" "arbetsplatsnamn"
  * postort 0..1 string "postort" "postort"
  * postadress 0..1 string "postadress" "postadress"
  * postnummer 0..1 string "postnummer" "postnummer"
  * telefonnummer 0..1 string "telefonnummer" "telefonnummer"
  * requestId 0..1 string "requestId" "requestId"
  * rollnamn 0..1 string "rollnamn" "rollnamn"
  * hsaID 0..1 string "hsaID" "hsaID"
  * katalog 0..1 string "katalog" "katalog"
  * organisationsnummer 0..1 string "organisationsnummer" "organisationsnummer"
  * systemnamn 0..1 string "systemnamn" "systemnamn"
  * systemversion 0..1 string "systemversion" "systemversion"
  * systemIp 0..1 string "systemIp" "systemIp"
* klientinformation 1..1 BackboneElement "klientinformation" "Objekt innehållande information om anropande klientsystem."
  * anvandare 1..1 string "anvandare" "Unikt användarid i anropande system."
  * session 1..1 string "session" "Sessionens id i anropande system."
  * system 1..1 string "system" "GLN-kod för anropande system."
* periodStart 0..1 dateTime "periodStart" "Start av period. Om periodStart anges så avses normalt annan period än innevarande period. Innehållet är en periodstart och kan avse föregående period, innevarande period eller kommande period."
* personnummer 1..1 string "personnummer" "Personnummer för person som prisfrågan gäller. Om personnummer saknas, använd tjänsten AnonymPrisfraga"
* rader 1..* BackboneElement "rader" "Rader"
  * antal 1..1 integer "antal" "Antal förpackningar av vara som expedieras. Vid kreditering sätts detta fält till ett negativt värde. Altenativt kan fälten pris och prisUtbyte sättas till negativa värden."
  * formansVal 1..1 string "formansVal" "Farmacevtens bedömning om vilken förmån som gäller för receptraden. Förmånstyp R, U, F, L kan förekomma."
  * pris 1..1 decimal "pris" "Apoteksaktörs utpris inkl. eventuell moms per förpackning för vara som avses att expedieras."
  * prisUtbyte 0..1 decimal "prisUtbyte" "Apoteksaktörs utpris inkl. eventuell moms för billigare vara som ej expedieras vid möjligt byte inom högkostnadsskyddet. Anges om pristillägg skall gälla, dvs när kund motsätter sig byte och väljer förskriven vara."
  * radNr 1..1 integer "radNr" "Radnr."
* transaktionstid 0..1 dateTime "transaktionstid" "Transaktionsdag som priset ska beräknas för. Om värdet inte anges används dagens datum. För att garantera korrekt prisberäkning för en efterföljande transaktionsregistrering skall denna parameter ha samma värde som parametern transTid i RegistreraHkdbTransaktion. Får inte vara mer än ett år och en dag bakåt i tiden, eller två timmar framåt i tiden."
* ursprungligTransaktionstid 0..1 dateTime "ursprungligTransaktionstid" "Ursprunglig transaktionstidpunkt. Ges vid kreditering. Avser tidpunkten när det ursprungliga köpet gjordes. Används för att avgöra om personen var över eller under 18 år vid köptillfället. Parametern blir obligatorisk i och med att lagen om kostnadsbefrielse för barn under 18 år trätt i kraft. (Refererat element ur PrisfragaResponder_4.1_ext.xsd, namnrymd urn:riv:se.apotekensservice:pris:PrisfragaResponder:4.1.)"

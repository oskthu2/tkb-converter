// Elementen genereras ur BirthRegistrationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för healthcertificate.lifeline v1.0 (fält ur XSD, se TKB avsnitt 3; scripts/xsd_to_ig.py)
// Kontrakt: BirthRegistration v1.0
// Genererad: 2026-09-26

Logical: BirthRegistrationRequest
Id: birthregistration-request
Title: "BirthRegistration — Request"
Description: """
  Logisk modell för begäran i BirthRegistration
  (urn:riv:healthcertificate:lifeline:BirthRegistrationResponder:1, BirthRegistrationTYPE), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* FodelseanmalanId 1..1 string "FodelseanmalanId" "FodelseanmalanId"
* Dokumentuppgifter 1..1 Base "DokumentuppgifterTYPE" "Dokumentuppgifter"
* Dokumentuppgifter.Ingivarnamn 1..1 string "Ingivarnamn" "Ingivarnamn"
* Dokumentuppgifter.AnmalningsTyp 1..1 string "AnmalningsTyp" "AnmalningsTyp"
* Dokumentuppgifter.AnmalningsId 1..1 string "AnmalningsId" "AnmalningsId"
* Dokumentuppgifter.Ingivartelefon 0..1 string "Ingivartelefon" "Ingivartelefon"
* Arendeuppgifter 1..1 Base "ArendeuppgifterTYPE" "Arendeuppgifter"
* Arendeuppgifter.Moder 1..1 Base "PersonTYPE" "Moder"
* Arendeuppgifter.Moder.Namn 0..1 Base "NamnTYPE" "Namn"
* Arendeuppgifter.Moder.Namn.Fornamn 0..1 string "Fornamn" "Fornamn"
* Arendeuppgifter.Moder.Namn.Mellannamn 0..1 string "Mellannamn" "Mellannamn"
* Arendeuppgifter.Moder.Namn.Efternamn 0..1 string "Efternamn" "Efternamn"
* Arendeuppgifter.Moder.Fodelsedatum 0..1 Base "DatumTYPE" "Fodelsedatum"
* Arendeuppgifter.Moder.Fodelsedatum.FodelseAr 1..1 string "FodelseAr" "FodelseAr"
* Arendeuppgifter.Moder.Fodelsedatum.FodelseManad 1..1 string "FodelseManad" "FodelseManad"
* Arendeuppgifter.Moder.Fodelsedatum.FodelseDag 1..1 string "FodelseDag" "FodelseDag"
* Arendeuppgifter.Moder.PersonNummer 0..1 string "PersonNummer" "PersonNummer"
* Arendeuppgifter.Moder obeys birthregistrationrequest-choice-1
* Arendeuppgifter.ModersMake 0..1 Base "PersonTYPE" "ModersMake"
* Arendeuppgifter.ModersMake.Namn 0..1 Base "NamnTYPE" "Namn"
* Arendeuppgifter.ModersMake.Namn.Fornamn 0..1 string "Fornamn" "Fornamn"
* Arendeuppgifter.ModersMake.Namn.Mellannamn 0..1 string "Mellannamn" "Mellannamn"
* Arendeuppgifter.ModersMake.Namn.Efternamn 0..1 string "Efternamn" "Efternamn"
* Arendeuppgifter.ModersMake.Fodelsedatum 0..1 Base "DatumTYPE" "Fodelsedatum"
* Arendeuppgifter.ModersMake.Fodelsedatum.FodelseAr 1..1 string "FodelseAr" "FodelseAr"
* Arendeuppgifter.ModersMake.Fodelsedatum.FodelseManad 1..1 string "FodelseManad" "FodelseManad"
* Arendeuppgifter.ModersMake.Fodelsedatum.FodelseDag 1..1 string "FodelseDag" "FodelseDag"
* Arendeuppgifter.ModersMake.PersonNummer 0..1 string "PersonNummer" "PersonNummer"
* Arendeuppgifter.ModersMake obeys birthregistrationrequest-choice-6
* Arendeuppgifter.Barn 1..1 Base "BarnTYPE" "Barn"
* Arendeuppgifter.Barn.DatumFodelse 1..1 date "DatumFodelse" "DatumFodelse"
* Arendeuppgifter.Barn.Kon 0..1 string "Kon" "Kon"
* Arendeuppgifter.Barn.OrdningsNr 1..1 string "OrdningsNr" "OrdningsNr"
* Arendeuppgifter.Barn.AntalBarn 1..1 string "AntalBarn" "AntalBarn"
* Arendeuppgifter.Barn.FodelseKommun 1..1 string "FodelseKommun" "FodelseKommun"
* Arendeuppgifter.Barn.Levande 1..1 string "Levande" "Levande"
* Arendeuppgifter.Vistelseadress 0..1 Base "AdressTYPE" "Vistelseadress"
* Arendeuppgifter.Vistelseadress.AdressRad1 1..1 string "AdressRad1" "AdressRad1"
* Arendeuppgifter.Vistelseadress.AdressRad2 0..1 string "AdressRad2" "AdressRad2"
* Arendeuppgifter.Vistelseadress.AdressRad3 0..1 string "AdressRad3" "AdressRad3"
* Arendeuppgifter.Vistelseadress.AdressRad4 0..1 string "AdressRad4" "AdressRad4"
* Arendeuppgifter.Vistelseadress.AdressRad5 0..1 string "AdressRad5" "AdressRad5"
* Arendeuppgifter.Bostadsadress 0..1 Base "AdressTYPE" "Bostadsadress"
* Arendeuppgifter.Bostadsadress.AdressRad1 1..1 string "AdressRad1" "AdressRad1"
* Arendeuppgifter.Bostadsadress.AdressRad2 0..1 string "AdressRad2" "AdressRad2"
* Arendeuppgifter.Bostadsadress.AdressRad3 0..1 string "AdressRad3" "AdressRad3"
* Arendeuppgifter.Bostadsadress.AdressRad4 0..1 string "AdressRad4" "AdressRad4"
* Arendeuppgifter.Bostadsadress.AdressRad5 0..1 string "AdressRad5" "AdressRad5"
* Arendeuppgifter.KontaktTelefon 0..1 string "KontaktTelefon" "KontaktTelefon"
* Arendeuppgifter.KontaktTelefon2 0..1 string "KontaktTelefon2" "KontaktTelefon2"
* Arendeuppgifter.KontaktTelefon3 0..1 string "KontaktTelefon3" "KontaktTelefon3"
* Arendeuppgifter.KontaktTelefon4 0..1 string "KontaktTelefon4" "KontaktTelefon4"
* Arendeuppgifter.KontaktTelefon5 0..1 string "KontaktTelefon5" "KontaktTelefon5"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert BirthRegistrationRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* Arendeuppgifter.Moder obeys birthregistration-request-moder-id-choice
* Arendeuppgifter.ModersMake obeys birthregistration-request-modersmake-id-choice
* Arendeuppgifter.Barn obeys birthregistration-request-barn-ordningsnr

Invariant: birthregistrationrequest-choice-1
Description: "Exakt ett av Fodelsedatum, PersonNummer ska anges (xs:choice i schemat)."
Expression: "Fodelsedatum.exists() xor PersonNummer.exists()"
Severity: #error

Invariant: birthregistrationrequest-choice-6
Description: "Exakt ett av Fodelsedatum, PersonNummer ska anges (xs:choice i schemat)."
Expression: "Fodelsedatum.exists() xor PersonNummer.exists()"
Severity: #error

Invariant: birthregistration-request-moder-id-choice
Description: "Exakt ett av Fodelsedatum och PersonNummer ska anges för modern (xs:choice i schemat)."
Expression: "Fodelsedatum.exists() xor PersonNummer.exists()"
Severity: #error

Invariant: birthregistration-request-modersmake-id-choice
Description: "Exakt ett av Fodelsedatum och PersonNummer ska anges för moderns make (xs:choice i schemat)."
Expression: "Fodelsedatum.exists() xor PersonNummer.exists()"
Severity: #error

Invariant: birthregistration-request-barn-ordningsnr
Description: "OrdningsNr och AntalBarn ska vara 1–9, och OrdningsNr får inte vara större än AntalBarn (TKB Fältregler, avsnitt 7.1.4 i IG:n)."
Expression: "OrdningsNr >= 1 and OrdningsNr <= 9 and AntalBarn >= 1 and AntalBarn <= 9 and OrdningsNr <= AntalBarn"
Severity: #error

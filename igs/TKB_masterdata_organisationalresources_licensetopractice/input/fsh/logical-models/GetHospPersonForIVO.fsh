// Elementen genereras ur GetHospPersonForIvoResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB masterdata:organisationalresources:licensetopractice v2.0
// Kontrakt: GetHospPersonForIVO v2.0
// Namespace: urn:riv:masterdata:organisationalresources:licensetopractice:GetHospPersonForIvoResponder:2
// Genererad: 2026-05-19

Logical: GetHospPersonForIVO
Id: gethosppersonforivo
Title: "GetHospPersonForIVO"
Description: """
  Logisk modell för tjänstekontraktet GetHospPersonForIVO
  (RIV-TA urn:riv:masterdata:organisationalresources:licensetopractice:GetHospPersonForIvoResponder:2).
  Representerar responsens informationsstruktur — en lista av HoSp-personer med fullständig legitimationsinformation.
  Tjänsten ger Inspektionen för vård och omsorg (IVO) direktåtkomst till Socialstyrelsens register
  över hälso- och sjukvårdspersonal (HoSp) med utökade sökparametrar jämfört med den publika tjänsten.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* hospPerson 0..* Base "HospPersonType" "hospPerson"
* hospPerson.hospId 1..1 Base "HospIdType" "hospId"
* hospPerson.hospId.extension 1..1 integer "extension" "extension"
* hospPerson.hospId.root 1..1 string "root" "root"
* hospPerson.personId 0..1 Base "PersonIdType" "personId"
* hospPerson.personId.extension 1..1 string "extension" "extension"
* hospPerson.personId.extension only PersonIdentitet
* hospPerson.personId.root 0..1 code "root" "root Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
* hospPerson.tidigarePersonId 0..1 Base "PersonIdType" "tidigarePersonId"
* hospPerson.tidigarePersonId.extension 1..1 string "extension" "extension"
* hospPerson.tidigarePersonId.extension only PersonIdentitet
* hospPerson.tidigarePersonId.root 0..1 code "root" "root Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
* hospPerson.efternamn 1..1 string "efternamn" "efternamn"
* hospPerson.mellannamn 0..1 string "mellannamn" "mellannamn"
* hospPerson.samtligaFornamn 1..* string "samtligaFornamn" "samtligaFornamn"
* hospPerson.tilltalsnamn 0..1 string "tilltalsnamn" "tilltalsnamn"
* hospPerson.fodelsedatum 1..1 string "fodelsedatum" "fodelsedatum"
* hospPerson.fodelsedatum only DateType
* hospPerson.kon 0..1 Base "KonType" "kon"
* hospPerson.lan 0..1 Base "LanType" "lan"
* hospPerson.kommun 0..1 Base "KommunType" "kommun"
* hospPerson.folkbokforingsort 0..1 string "folkbokforingsort" "folkbokforingsort"
* hospPerson.skyddadIdentitet 0..1 boolean "skyddadIdentitet" "skyddadIdentitet"
* hospPerson.skyddadIdentitetUpplysning 0..1 string "skyddadIdentitetUpplysning" "skyddadIdentitetUpplysning"
* hospPerson.avliden 0..1 boolean "avliden" "avliden"
* hospPerson.avlidenDatum 0..1 string "avlidenDatum" "avlidenDatum"
* hospPerson.avlidenDatum only PartielltDatum
* hospPerson.utvandrad 0..1 boolean "utvandrad" "utvandrad"
* hospPerson.forskrivarkod 0..1 Base "ForskrivarkodType" "forskrivarkod"
* hospPerson.forskrivarkod.extension 1..1 integer "extension" "extension"
* hospPerson.forskrivarkod.root 1..1 string "root" "root"
* hospPerson.legitimation 0..* Base "LegitimationType" "legitimation"
* hospPerson.legitimation.legitimeratYrke 1..1 Base "LegitimeratYrkeTyp" "legitimeratYrke"
* hospPerson.legitimation.giltigLegitimation 1..1 boolean "giltigLegitimation" "giltigLegitimation"
* hospPerson.legitimation.utbildning 0..1 Base "UtbildningType" "utbildning"
* hospPerson.legitimation.utbildningsland 0..1 string "utbildningsland" "utbildningsland"
* hospPerson.legitimation.internationellOverrenskommelse 0..1 string "internationellOverrenskommelse" "internationellOverrenskommelse"
* hospPerson.legitimation.legitimationsDatum 1..1 string "legitimationsDatum" "legitimationsDatum"
* hospPerson.legitimation.legitimationsDatum only PartielltDatum
* hospPerson.legitimation.beslutsdatumFysioterapeut 0..1 string "beslutsdatumFysioterapeut" "beslutsdatumFysioterapeut"
* hospPerson.legitimation.beslutsdatumFysioterapeut only PartielltDatum
* hospPerson.legitimation.examensdatum 0..1 string "examensdatum" "examensdatum"
* hospPerson.legitimation.examensdatum only PartielltDatum
* hospPerson.legitimation.larosate 0..1 string "larosate" "larosate"
* hospPerson.legitimation.grundyrke 0..1 string "grundyrke" "grundyrke"
* hospPerson.legitimation.forskrivningsratt 0..1 boolean "forskrivningsratt" "forskrivningsratt"
* hospPerson.legitimation.forskrivningsrattDatum 0..1 string "forskrivningsrattDatum" "forskrivningsrattDatum"
* hospPerson.legitimation.forskrivningsrattDatum only PartielltDatum
* hospPerson.legitimation.specialistbevis 0..* Base "SpecialistbevisType" "specialistbevis"
* hospPerson.legitimation.specialistbevis.specialistinriktning 1..1 Base "SpecialistinriktningType" "specialistinriktning"
* hospPerson.legitimation.specialistbevis.utbildningsland 0..1 string "utbildningsland" "utbildningsland"
* hospPerson.legitimation.specialistbevis.internationellOverrenskommelse 0..1 string "internationellOverrenskommelse" "internationellOverrenskommelse"
* hospPerson.legitimation.specialistbevis.specialistbevisDatum 1..1 string "specialistbevisDatum" "specialistbevisDatum"
* hospPerson.legitimation.specialistbevis.specialistbevisDatum only PartielltDatum
* hospPerson.legitimation.behorighetsbegransning 0..* Base "BehorighetsbegransningType" "behorighetsbegransning"
* hospPerson.legitimation.behorighetsbegransning.typAvBehorighetsbegransning 1..1 Base "TypAvBehorighetsbegransning" "typAvBehorighetsbegransning"
* hospPerson.legitimation.behorighetsbegransning.fromDatum 1..1 string "fromDatum" "fromDatum"
* hospPerson.legitimation.behorighetsbegransning.fromDatum only DateType
* hospPerson.legitimation.behorighetsbegransning.tomDatum 0..1 string "tomDatum" "tomDatum"
* hospPerson.legitimation.behorighetsbegransning.tomDatum only DateType
* hospPerson.legitimation.behorighetsbegransning.begransadForskrivningsrattText 0..1 string "begransadForskrivningsrattText" "begransadForskrivningsrattText"
* hospPerson.legitimation.ovrigBehorighet 0..* Base "OvrigBehorighetType" "ovrigBehorighet"
* hospPerson.legitimation.ovrigBehorighet.behorighet 1..1 Base "UtbildningType" "behorighet"
* hospPerson.legitimation.ovrigBehorighet.behorighetsDatum 1..1 string "behorighetsDatum" "behorighetsDatum"
* hospPerson.legitimation.ovrigBehorighet.behorighetsDatum only PartielltDatum

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHospPersonForIVOFieldDescriptions

// Genererad från TKB processmanagement:decisionsupport:insurancemedicinedecisionsupport v1.0
// Kontrakt: GetDiagnosInformation v1.0
// Genererad: 2026-05-19

Logical: GetDiagnosInformation
Id: getdiagnosinformation
Title: "GetDiagnosInformation"
Description: """
  Logisk modell för tjänstekontraktet GetDiagnosInformation
  (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1).
  Representerar responsens informationsstruktur — generell information om diagnoser.
  Sådan information kan gälla för en eller flera diagnoser samtidigt.
"""
Characteristics: #can-be-target

* diagnosInformation 0..* BackboneElement "Diagnosinformation"
* diagnosInformation.informationsId 1..1 Identifier "Identitet för diagnosinformationen"
* diagnosInformation.giltighetsTidStart 1..1 date "Giltighetstid — starttid"
  """
  Starttiden i intervallet skall alltid anges.
  """
* diagnosInformation.giltighetsTidSlut 0..1 date "Giltighetstid — sluttid"
  """
  Om sluttid ej anges är diagnosinformationen aktiv.
  Diagnosinformation som inte är aktiv skall innehålla ett slutdatum som ligger tidigare
  än aktuellt datum, eller ett startdatum som ligger senare än aktuellt datum.
  """
* diagnosInformation.version 1..1 integer "Versionsnummer för diagnosinformationen"
  """
  Versionen räknas upp när diagnosinformationen förändrats i sin innebörd eller ändrar giltighetstid.
  """
* diagnosInformation.rubrik 1..1 string "Rubrik för diagnosinformationen"
* diagnosInformation.aktivitetsbegransningBeskrivning 0..1 string "Beskrivning av aktivitetsbegränsningar"
  """
  En beskrivande text för aktivitetsbegränsningar förknippade med diagnosen.
  """
* diagnosInformation.funktionsnedsattningsBeskrivning 0..1 string "Beskrivning av funktionsnedsättningar"
  """
  En beskrivande text för funktionsnedsättningar förknippade med diagnosen.
  """
* diagnosInformation.senastAndrad 1..1 dateTime "Tidpunkt när diagnosinformationen senast ändrades"
* diagnosInformation.huvuddiagnos 1..* BackboneElement "Huvuddiagnos"
* diagnosInformation.huvuddiagnos.varde 1..1 CodeableConcept "Diagnos angiven med ICD-10-SE-kod"
* diagnosInformation.aktivitetsbegransning 0..* BackboneElement "Aktivitetsbegränsning"
  """
  Innehåller information om en eller flera aktivitetsbegränsningar som vanligt förekommer
  för den eller de diagnoser som diagnosgruppen omfattar.
  """
* diagnosInformation.aktivitetsbegransning.kod 1..1 CodeableConcept "Kod som anger aktivitetsbegränsning"
* diagnosInformation.funktionsnedsattning 0..* BackboneElement "Funktionsnedsättning"
  """
  Innehåller information om en eller flera funktionsnedsättningar som vanligt förekommer
  för den eller de diagnoser som diagnosgruppen omfattar.
  """
* diagnosInformation.funktionsnedsattning.kod 1..1 CodeableConcept "Kod som anger funktionsnedsättning"
* diagnosInformation.ovrigFmbInformation 0..1 BackboneElement "Övrig FMB-information"
* diagnosInformation.ovrigFmbInformation.symtomPrognosBehandling 0..1 string "Allmän information om symtom, prognos och behandling"
* diagnosInformation.ovrigFmbInformation.generellInformation 0..1 string "Information av betydelse för bedömning av sjukskrivningsbehov"
* fmbVersion 1..1 BackboneElement "Versionsinformation för hela FMB"
* fmbVersion.senasteVersionsuppdatering 1..1 dateTime "Tidpunkt för senaste versionsuppdatering bland all diagnosinformation"
* fmbVersion.senasteAndring 1..1 dateTime "Tidpunkt för senaste ändring bland all diagnosinformation"

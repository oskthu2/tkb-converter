// Genererad från TKB population:residentmaster v1.2
// Kontrakt: LookupResidentForFullProfile v1.2
// Genererad: 2026-09-17

Logical: LookupResidentForFullProfileRequest
Id: lookupresidentforfullprofile-request
Title: "LookupResidentForFullProfile — Request"
Description: """
  Logisk modell för requestparametrar i LookupResidentForFullProfile
  (RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1).
"""
Characteristics: #can-be-target

* personId 1..* Identifier "Personnummer att slå upp"
    """
    Personnummer på format ÅÅÅÅMMDDNNNN. Flera personnummer kan anges i samma fråga
    (max 1000 per anrop, se avsnitt 4.6). personId kan även vara reservnummer i det
    fall tjänstekonsumenten är en regional/lokal instans.
    Kardinalitet: Obligatorisk, minst ett värde.
    """
* lookUpSpecification 1..1 BackboneElement "Uppslagsbegränsning"
    """
    Urvalsbegränsning enligt datatypen LookUpSpecificationType (avsnitt 5.2).
    Elementet är enligt käll-XSD:t obligatoriskt även om samtliga dess underfält är
    valfria — se ASSUME-PRM-001 i QUESTIONS.md.
    """
  * avregistreringsorsak 0..* string "Begränsning på avregistreringsorsak"
      """
      2 tecken per värde. Ett eller flera värden ur AvregistreringsorsakKodKomplettTYPE
      begränsar svaret till personer med någon av angivna avregistreringsorsaker.
      Värdet "  " (två blanktecken) begränsar svaret till personer utan
      avregistreringsorsak. Värdet "OO" begränsar svaret till personer med
      avregistreringskod som avviker från "AV" och "GN" (bakåtkompatibilitet med 1.0).
      Utelämnat fält innebär ingen begränsning.
      """
  * sekretessmarkeringFilter 0..1 boolean "Begränsning på sekretessmarkering"
      """
      true (J) = returnera endast poster med sekretessmarkering. false (N) =
      returnera endast poster utan sekretessmarkering (eller utan angiven
      sekretessmarkering).
      """
  * senasteAndringFolkbokforingFilter 0..1 date "Begränsning på senaste ändringsdatum"
      """
      Endast poster med senare datum i fältet SenasteAndringFolkbokforing än angivet
      datum returneras. Strikt olikhet används — poster med samma datum returneras
      inte.
      """
  * historiskTidpunkt 0..1 dateTime "Historisk tidpunkt"
      """
      Anger historisk tidpunkt i syfte att svaret ska spegla personuppgifternas
      värden vid denna tidpunkt. Kan inte kombineras med
      senasteAndringFolkbokforingFilter.
      """

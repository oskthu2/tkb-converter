// Genererad från TKB processdevelopment:infections v1.0.2
// Kontrakt: ProcessCareEncounter v1.0
// Genererad: 2026-09-17

Invariant: processcareencounter-end-after-start
Description: "Sluttidpunkt för vårdkontakten (om angiven) måste vara efter starttidpunkten (RIV-TA felkod 50003)."
Expression: "endTime.exists() implies startTime <= endTime"
Severity: #error

Logical: ProcessCareEncounter
Id: processcareencounter
Title: "ProcessCareEncounter"
Description: """
  Logisk modell för tjänstekontraktet ProcessCareEncounter
  (RIV-TA processdevelopment:infections). Representerar responsens
  informationsstruktur — bekräftar registrering av en patientplacering
  (vårdkontakt).
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Resultatkod"
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar"
    """
    Beskrivning av fel som uppstått alternativt information om genomförd
    registrering.
    """

Logical: ProcessCareEncounterRequest
Id: processcareencounter-request
Title: "ProcessCareEncounter — Request"
Description: """
  Logisk modell för requestparametrar i ProcessCareEncounter. Registrerar en
  ny patientplacering med information om patient, organisatorisk enhet och
  period för placeringen. En befintlig patientplacering kan uppdateras genom
  att ett nytt meddelande med samma vårdkontaktid skickas in.
"""
Characteristics: #can-be-target

* logicalAddress 1..1 Identifier "Logisk adress"
    """
    Logisk adress till tjänsteimplementationen. HSA-id för organisationspost
    motsvarande vårdgivare i HSA-trädet.
    """
* careEncounterId 1..1 string "Vårdkontakt-id"
    """
    RIV-specifikation: Vårdkontakt.vårdkontakt-id. HSA-id + Lokalt id
    (HSA-id för den enhet inom vilket aktuellt id är unikt anges före det
    lokala id:t).
    """
* startTime 1..1 dateTime "Vårdkontaktens starttidpunkt" "RIV-specifikation: Vårdkontakt.vårdkontakttid."
  * obeys processcareencounter-end-after-start
* endTime 0..1 dateTime "Vårdkontaktens sluttidpunkt" "RIV-specifikation: Vårdkontakt.vårdkontakttid."
* careProviderId 1..1 Identifier "Vårdgivare" "HSA-id för aktuell vårdgivare."
* registeringUnitId 1..1 Identifier "Registrerande enhet" "RIV-specifikation: Vårdkontakt.utförs vid.Enhet.enhets-id."
* personIdIssuer 1..1 string "Utfärdare av person-id"
    """
    För personnummer och samordningsnummer: "Skatteverket". För lokalt
    reservnummer: "CeHis".
    """
* personIdAssigner 1..1 string "Tilldelare av person-id"
    """
    För personnummer och samordningsnummer: "Folkbokföringen". För lokalt
    reservnummer: HSA-id för den enhet inom vilket aktuellt reservnummer är
    unikt.
    """
* patientId 1..1 Identifier "Patientens person-id"
    """
    RIV-specifikation: Patient.person-id. system = OID för personnummer,
    nationellt reservnummer eller samordningsnummer (se personIdOid),
    value = själva numret.
    """
* personIdOid 1..1 uri "OID för person-id" "OID för personnummer, nationellt reservnummer eller samordningsnummer."
* patientBirthTime 1..1 dateTime "Patientens födelsetidpunkt" "RIV-specifikation: Patient.födelsetidpunkt."
* patientGender 1..1 code "Patientens kön"
    """
    RIV-specifikation: Patient.kön. Kodverk anges externt i
    RIV-specifikation Infektionsverktyget.pdf — inte återgivet i TKB-texten.
    """

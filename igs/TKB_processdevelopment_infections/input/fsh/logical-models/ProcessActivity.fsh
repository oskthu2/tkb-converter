// Genererad från TKB processdevelopment:infections v1.0.2
// Kontrakt: ProcessActivity v1.0
// Genererad: 2026-09-17

Logical: ProcessActivity
Id: processactivity
Title: "ProcessActivity"
Description: """
  Logisk modell för tjänstekontraktet ProcessActivity
  (RIV-TA processdevelopment:infections). Representerar responsens
  informationsstruktur — bekräftar registrering av en aktivitet.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Resultatkod"
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar"
    """
    Beskrivning av fel som uppstått alternativt information om genomförd
    registrering.
    """

Logical: ProcessActivityRequest
Id: processactivity-request
Title: "ProcessActivity — Request"
Description: """
  Logisk modell för requestparametrar i ProcessActivity. Registrerar en eller
  flera aktiviteter som utförts på en patient på en viss enhet. En befintlig
  aktivitet kan uppdateras genom att ett nytt meddelande med samma
  aktivitetsid skickas in.
"""
Characteristics: #can-be-target

* logicalAddress 1..1 Identifier "Logisk adress"
    """
    Logisk adress till tjänsteimplementationen. HSA-id för organisationspost
    motsvarande vårdgivare i HSA-trädet.
    """
* activityMomentTime 1..1 dateTime "Aktivitetsmomenttid"
    """
    RIV-specifikation: Aktivitetsmoment.aktivitetsmomenttid. Då detta anges i
    elementet start_time och meddelandet omfattar flera aktiviteter ska den
    första (i tid mätt) aktivitetens tid anges.
    """
* careProviderId 1..1 Identifier "Vårdgivare" "HSA-id för aktuell vårdgivare."
* registeringUnitId 1..1 Identifier "Registrerande enhet" "RIV-specifikation: Aktivitetsmoment.utförs vid.Enhet.enhets-id."
* activityId 1..1 string "Aktivitets-id"
    """
    RIV-specifikation: Aktivitet.aktivitets-id. HSA-id + Lokalt id (HSA-id
    för den enhet inom vilket aktuellt aktivitets-id är unikt anges före
    det lokala id:t).
    """
* terminologyId 1..1 uri "Kodverksidentifierare"
    """
    Identifierare som anger vilket kodverk aktuell kod tillhör. Möjliga
    värden är OID för Snomed CT och OID för KVÅ.
    """
* activityCode 1..1 code "Aktivitetskod" "RIV-specifikation: Aktivitetsmoment.aktivitetskod."
* unitActivityId 1..1 Identifier "Enhet för aktivitets-id" "HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt."
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

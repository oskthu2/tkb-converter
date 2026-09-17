// Genererad från TKB processdevelopment:infections v1.0.2
// Kontrakt: ProcessPrescriptionReason v1.0
// Genererad: 2026-09-17

Invariant: processprescriptionreason-activity-or-order
Description: "Ange antingen aktivitetsmoment eller ordinationsmoment, inte båda."
Expression: "activityMoment.exists() xor orderMoment.exists()"
Severity: #error

Invariant: processprescriptionreason-activity-requires-activity
Description: "Om aktivitetsmoment anges måste även aktivitet anges."
Expression: "activityMoment.exists() implies activity.exists()"
Severity: #error

Logical: ProcessPrescriptionReason
Id: processprescriptionreason
Title: "ProcessPrescriptionReason"
Description: """
  Logisk modell för tjänstekontraktet ProcessPrescriptionReason
  (RIV-TA processdevelopment:infections). Representerar responsens
  informationsstruktur — bekräftar registrering av en ordinationsorsak.
"""
Characteristics: #can-be-target

* resultCode 1..1 code "Resultatkod"
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar"
    """
    Beskrivning av fel som uppstått alternativt information om genomförd
    registrering.
    """

Logical: ProcessPrescriptionReasonRequest
Id: processprescriptionreason-request
Title: "ProcessPrescriptionReason — Request"
Description: """
  Logisk modell för requestparametrar i ProcessPrescriptionReason. Registrerar
  en ordinationsorsak med information om patient, organisatorisk enhet,
  eventuell aktivitet eller ordination som ordinationsorsaken kopplas till.
  En befintlig ordinationsorsak uppdateras genom att ett nytt meddelande med
  samma id (aktivitetsid eller tillståndsid) skickas in.
"""
Characteristics: #can-be-target

* logicalAddress 1..1 Identifier "Logisk adress"
    """
    Logisk adress till tjänsteimplementationen. HSA-id för organisationspost
    motsvarande vårdgivare i HSA-trädet.
    """
* registrationOrderTime 0..1 dateTime "Registrerings-/ordinationstidpunkt"
    """
    I de fall en ordination finns anges här ordinationsmoment.ordinationstidpunkt.
    I annat fall lämnas detta fält tomt.
    """
* careProviderId 1..1 Identifier "Vårdgivare" "HSA-id för aktuell vårdgivare."
* registeringUnitId 1..1 Identifier "Registrerande enhet"
    """
    RIV-specifikation: Ordinationsorsak.registreras vid.Enhet.enhets-id.
    """
* registrationTime 0..1 dateTime "Registreringstidpunkt"
    """
    I de fall en ordinationsorsak registreras utan ordination anges här
    Ordinationsorsak.registreringstidpunkt, i annat fall lämnas detta fält tomt.
    """
* activityMoment 0..1 BackboneElement "Aktivitetsmoment"
    """
    Ange antingen aktivitetsmoment eller ordinationsmoment, se invariant
    processprescriptionreason-activity-or-order.
    """
  * obeys processprescriptionreason-activity-or-order
  * terminologyId 1..1 uri "Kodverksidentifierare"
      """
      Identifierare (OID eller annan unik identifierare) som anger vilket
      kodverk aktuell kod tillhör. Möjliga värden: OID för Snomed CT och id
      för Infektionsverktygets kodverk med annan-koder.
      """
  * activityCode 1..1 code "Aktivitetskod" "RIV-specifikation: Aktivitetsmoment.aktivitetskod."
* activity 0..1 BackboneElement "Aktivitet"
    """
    Obligatoriskt om aktivitetsmoment är angivet, annars frivilligt.
    """
  * obeys processprescriptionreason-activity-requires-activity
  * issuerId 1..1 string "Utfärdare av aktivitets-id"
      """
      Möjliga värden: "CeHis" (i de fall värdet i enhetAktivitetsId är ett
      HSA-id) eller "Infektionsverktyget" (i de fall värdet i
      enhetAktivitetsId är en annan unik identifierare, t.ex. vid aktivitet
      utförd hos annan vårdgivare).
      """
  * unitActivityId 1..1 string "Enhet för aktivitets-id"
      """
      HSA-id alternativt annan unik identifierare för den enhet inom vilket
      aktuellt aktivitets-id är unikt. Särskilda konstantvärden används när
      aktiviteten är utförd hos en annan vårdgivare (se TKB avsnitt 4.1 för
      exakta GUID-värden för "Annan vårdgivare" / "Annan vårdgivare Sverige"
      / "Annan vårdgivare utomlands").
      """
  * activityId 1..1 string "Aktivitets-id"
      """
      RIV-specifikation: Aktivitet.aktivitets-id. HSA-id + Lokalt id (HSA-id
      för den enhet inom vilket aktuellt aktivitets-id är unikt anges före
      det lokala id:t). Notera att detta attribut har olika betydelse
      beroende på om mallen för Activity (profylax) eller Condition
      (infektion) används.
      """
  * activityIdTypeOid 0..1 uri "OID för lokalt aktivitets-id"
      """
      OID för lokalt id då ett id anges i activityId. Då aktiviteten är
      utförd hos en annan vårdgivare och inget id finns ska detta lämnas tomt.
      """
* assessedHealthCondition 0..1 BackboneElement "Bedömt hälsorelaterat tillstånd"
  * conditionCode 1..1 code "Tillståndskod" "RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillståndskod."
  * transmissionRoute 1..1 code "Smittväg" "RIV-specifikation: Bedömt hälsorelaterat tillstånd.smittväg."
  * unitConditionId 1..1 Identifier "Enhet för tillstånds-id" "HSA-id för den enhet inom vilket aktuellt tillstånds-id är unikt."
  * conditionId 1..1 string "Tillstånds-id"
      """
      RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillstånds-id.
      HSA-id + Lokalt id.
      """
* orderMoment 0..1 BackboneElement "Ordinationsmoment"
    """
    Ange antingen ordinationsmoment eller aktivitetsmoment, se invariant
    processprescriptionreason-activity-or-order.
    """
  * orderTime 1..1 dateTime "Ordinationstidpunkt" "RIV-specifikation: Ordinationsmoment.ordinationstidpunkt."
  * unitOrderId 1..1 Identifier "Enhet för ordinations-id" "HSA-id för den enhet inom vilket aktuellt ordinations-id är unikt."
  * orderId 1..1 string "Ordinations-id"
      """
      RIV-specifikation: Ordination.ordinations-id. HSA-id + Lokalt id.
      """
  * atcCode 1..* code "ATC-kod" "RIV-specifikation: Läkemedelssubstans.ATC-kod."
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
    samordningsnummer eller icke-nationell identifierare (se personIdOid),
    value = själva numret.
    """
* personIdOid 1..1 uri "OID för person-id"
    """
    OID för personnummer, samordningsnummer eller icke-nationell
    identifierare Org+lokalt unikt id.
    """
* patientBirthTime 1..1 dateTime "Patientens födelsetidpunkt" "RIV-specifikation: Patient.födelsetidpunkt."
* patientGender 1..1 code "Patientens kön"
    """
    RIV-specifikation: Patient.kön. Kodverk anges externt i
    RIV-specifikation Infektionsverktyget.pdf — inte återgivet i TKB-texten.
    """

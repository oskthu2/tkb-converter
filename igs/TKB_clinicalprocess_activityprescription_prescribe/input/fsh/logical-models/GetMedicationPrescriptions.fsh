// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: GetMedicationPrescriptions v2.0
// Genererad: 2026-03-19

Logical: GetMedicationPrescriptions
Id: getmedicationprescriptions
Title: "GetMedicationPrescriptions"
Description: """
  Logisk modell för tjänstekontraktet GetMedicationPrescriptions
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationPrescriptions:2).
  Representerar responsens informationsstruktur — patientens samlade läkemedelslista.
"""
Characteristics: #can-be-target

* medicationListVersion 1..1 Identifier "Version på patientens samlade läkemedelslista"
    """
    Unik version för patientens aktuella läkemedelslista.
    Format: se avsnitt 5 i TKB (Formatregler).
    """
* medicationList 0..1 BackboneElement "Samlad läkemedelslista"
    """
    Övergripande objekt som håller ihop läkemedelslistan för patienten.
    Valfri — returneras om data finns.
    """
  * medicationPrescriptionSequence 0..* BackboneElement "Läkemedelsbehandling (ordination)"
      """
      En läkemedelsordination med status, startdatum, utsättningsdatum etc.
      """
    * medicationPrescriptionSequenceId 1..1 Identifier "Unikt id för läkemedelsbehandlingen"
    * medicationPrescription 1..* BackboneElement "Enskild ordination inom behandlingssekvensen"
      * medicationPrescriptionId 1..1 Identifier "Unikt id för ordinationen"
      * registrationData 1..1 BackboneElement "Registreringsdata"
        * id 1..1 Identifier "Systeminternt id"
        * registeredBy 1..1 BackboneElement "Registrerande person"
        * registrationTime 1..1 dateTime "Registreringstidpunkt"
      * medicationInformation 1..1 BackboneElement "Läkemedelsinformation"
      * startTime 1..1 dateTime "Insättningstidpunkt"
      * endTime 0..1 dateTime "Utsättningstidpunkt"
      * prescribedBy 1..1 BackboneElement "Förskrivare"
  * medicationStatementSequence 0..* BackboneElement "Egenmedicinering (sequence)"
* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod (OK/INFO/ERROR)"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod (om resultCode=ERROR)"
  * errorCode from ErrorCodeVS (required)
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"

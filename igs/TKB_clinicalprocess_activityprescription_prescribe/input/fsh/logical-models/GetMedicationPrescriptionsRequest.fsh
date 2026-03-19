// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: GetMedicationPrescriptions v2.0 — Request
// Genererad: 2026-03-19

Logical: GetMedicationPrescriptionsRequest
Id: getmedicationprescriptions-request
Title: "GetMedicationPrescriptions — Request"
Description: "Logisk modell för requestparametrar i GetMedicationPrescriptions."
Characteristics: #can-be-target

* patientId 1..1 Identifier "Person- eller samordningsnummer"
    """
    Person- eller samordningsnummer enligt Skatteverket.
    """
* medicationPrescriptionSequenceId 0..* Identifier "Filter: unikt id för läkemedelsbehandlingen"
    """
    Om angivet returneras bara dessa behandlingssekvenser. Kan anges som lista.
    """
* includeMedicalDispenseAuthorizations 1..1 boolean "Inkludera expedieringsunderlag i svaret"
* medicationStatus 1..1 code "Filtrera på status"
    """
    Inkludera ordinationer enligt FHIR MedicationRequest status-koder
    (http://www.hl7.org/fhir/valueset-medicationrequest-status.html).
    """
* medicationListVersion 0..1 Identifier "Specifik version av läkemedelslistan"
* currentVersion 1..1 boolean "Hämta senaste version"
    """
    Sätts till true om senaste version ska returneras.
    """
* validTimePeriod 0..1 BackboneElement "Tidsperiod för giltiga ordinationer"
  * start 0..1 dateTime "Från-datum"
  * end 0..1 dateTime "Till-datum"
* registrationTime 0..1 dateTime "Hämta listan som den såg ut vid angiven tidpunkt (point-in-time)"

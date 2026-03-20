// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: RegisterMedicationPrescription v2.0 — Request
// Genererad: 2026-03-19
// ASSUME-PRESC-001: patientInformation innehåller antingen patientId (personnummer)
//   eller patientInformation_setter med demografiska uppgifter. Modellerad som BackboneElement.

Logical: RegisterMedicationPrescriptionRequest
Id: registermedicationprescription-request
Title: "RegisterMedicationPrescription — Request"
Description: "Logisk modell för requestparametrar i RegisterMedicationPrescription."
Characteristics: #can-be-target

* patientInformation 1..1 BackboneElement "Patientinformation (personnummer eller demografiska uppgifter)"
    """
    Antingen patientId eller kombinationen givenName+familyName+dateOfBirth måste anges.
    ASSUME-PRESC-001: villkorlig kardinalitet — modellerad som 0..1 per underfält med notering.
    """
  * patientId 0..1 Identifier "Patientens personnummer eller samordningsnummer"
  * givenName 0..1 string "Förnamn"
  * familyName 0..1 string "Efternamn"
  * dateOfBirth 0..1 date "Födelsedatum (8 siffror)"
  * gender 0..1 code "Kön"
  * gender from GenderVS (required)
* medicationListVersion 1..1 Identifier "Aktuell version av läkemedelslistan (optimistisk låsning)"
* medicationPrescriptionList 1..1 BackboneElement "Ordinationslista att registrera"
  * medicationPrescriptionSequence 1..* BackboneElement "Behandlingssekvens"
    * medicationPrescription 1..* BackboneElement "Ordination"
      * prescribedBy 1..1 BackboneElement "Förskrivare"
        * prescriberId 1..1 Identifier "Förskrivarens HSA-ID"
        * prescriberName 0..1 string "Förskrivarens namn"
        * prescriberCode 0..1 string "Förskrivarkod"
        * workplaceCode 0..1 string "Arbetsplatskod"
      * startTime 1..1 dateTime "Insättningstidpunkt"
      * endTime 0..1 dateTime "Utsättningstidpunkt"
      * treatmentReason 0..1 BackboneElement "Behandlingsorsak"
      * medicationInformation 1..1 BackboneElement "Läkemedelsinformation"

// Genererad från TKB ehr:patientrelationship v1.0.1
// Kontrakt: GetPatientRelationsForCareProvider v1.0 — Request
// Genererad: 2026-05-19

Logical: GetPatientRelationsForCareProviderRequest
Id: getpatientrelationsforcareprovider-request
Title: "GetPatientRelationsForCareProvider — Request"
Description: "Logisk modell för requestparametrar i GetPatientRelationsForCareProvider."
Characteristics: #can-be-target

* careProviderId 1..1 Identifier "HSA-id på den vårdgivare vars patientrelationer skall hämtas"
* createdOnOrAfter 0..1 dateTime "Valfritt startdatum — returnerar bara patientrelationer skapade på eller efter denna tidpunkt"
  """
  Användbart vid upprepande förfrågningar för att undvika att data som redan inhämtats returneras igen.
  """
* getCancelledFlag 1..1 boolean "Flagga som avgör om makulerade och återkallade patientrelationer skall returneras"

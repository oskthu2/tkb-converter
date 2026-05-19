// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: GetConsentsForCareProvider v1.0 — Request-modell
// RIV-TA: urn:riv:ehr:patientconsent:querying:GetConsentsForCareProviderResponder:1
// Genererad: 2026-04-22

Logical: GetConsentsForCareProviderRequest
Id: getconsentsforcareprovider-request
Title: "GetConsentsForCareProvider — Request"
Description: "Logisk modell för requestparametrar i GetConsentsForCareProvider."
Characteristics: #can-be-target

* careProviderId 1..1 Identifier "HSA-id på den vårdgivare vars samtycken skall hämtas"
  """
  Identifierare för vårdgivare. system = urn:oid:1.2.752.129.2.1.4.1. Max 32 tecken.
  """
* createdOnOrAfter 0..1 dateTime "Ej obligatoriskt startdatum för hur gamla samtyckesintyg som skall hämtas"
  """
  Om angivet returneras endast samtyckesintyg som är giltiga i tjänsten på eller efter denna tidpunkt.
  Användbart vid upprepande förfrågningar för att undvika att data som redan inhämtats returneras.
  """
* getCancelledFlag 1..1 boolean "Flagga som avgör om makulerade och återkallade samtyckesintyg skall returneras"
  """
  Om true returneras även makulerade och återkallade intyg som inte är utgångna.
  Utgångna intyg (giltigt t o m har passerats) returneras ej oavsett makulering eller återkallning.
  """

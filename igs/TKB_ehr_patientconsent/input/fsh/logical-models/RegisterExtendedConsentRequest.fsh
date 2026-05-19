// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: RegisterExtendedConsent v1.0 — Request-modell
// RIV-TA: urn:riv:ehr:patientconsent:administration:RegisterExtendedConsentResponder:1
// Genererad: 2026-04-22

Logical: RegisterExtendedConsentRequest
Id: registerextendedconsent-request
Title: "RegisterExtendedConsent — Request"
Description: "Logisk modell för requestparametrar i RegisterExtendedConsent."
Characteristics: #can-be-target

* assertionId 1..1 Identifier "Unik, global identifierare för intyget (UUID-format, max 36 tecken)"
  """
  Tjänstekonsumenten ansvarar för att generera id:et.
  """
* assertionType 1..1 CodeableConcept "Typ av intyg (Consent eller Emergency)"
  """
  Anger om intyget är ett patientsamtycke eller nödsituationsintyg.
  """
* assertionType from AssertionTypeVS (required)
* scope 1..1 CodeableConcept "Omfånget/tillämpningsområde på intyget"
* scope from ScopeVS (required)
* patientId 1..1 Identifier "Patientens personnummer alternativt samordningsnummer (max 12 tecken)"
* careProviderId 1..1 Identifier "HSA-id på den vårdgivare som intyget gäller för/kopplas till (max 32 tecken)"
* careUnitId 1..1 Identifier "HSA-id på den vårdenhet som intyget gäller för/kopplas till (max 32 tecken)"
* employeeId 0..1 Identifier "Medarbetar-id — anges om samtycket är personligt (max 32 tecken)"
  """
  Om samtycket gäller all behörig personal på angiven vårdenhet, skall inget medarbetarid anges.
  """
* startDate 0..1 dateTime "Ej obligatoriskt startdatum för intygets giltighetstid"
  """
  Om ett startdatum är angivet gäller intyget fr.o.m denna tidpunkt, annars gäller samtycket fr.o.m registreringstidpunkten.
  """
* endDate 0..1 dateTime "Ej obligatoriskt slutdatum för intygets giltighetstid"
  """
  Om ett slutdatum är angivet gäller intyget t.o.m denna tidpunkt. Om inget slutdatum anges gäller samtycket tills återkallat/makulerat.
  """
* representedBy 0..1 Identifier "Ej obligatorisk företrädare/vårdnadshavare som företräder patienten (max 12 tecken)"
* registrationAction 1..1 BackboneElement "Identifierar de personer som begärt och registrerat intyget samt tidpunkter"
  * requestDate 1..1 dateTime "Tidpunkt för begäran om registrering"
  * requestedBy 1..1 BackboneElement "Aktör som begärt registreringen"
    * employeeId 1..1 Identifier "HSA-id för medarbetaren (max 32 tecken)"
    * assignmentId 0..1 Identifier "HSA-id för medarbetaruppdraget (max 32 tecken)"
    * assignmentName 0..1 string "Namn på medarbetaruppdraget (max 256 tecken)"
  * registrationDate 1..1 dateTime "Tidpunkt för genomförd registrering"
  * registeredBy 1..1 BackboneElement "Aktör som utfört registreringen"
    * employeeId 1..1 Identifier "HSA-id för medarbetaren (max 32 tecken)"
    * assignmentId 0..1 Identifier "HSA-id för medarbetaruppdraget (max 32 tecken)"
    * assignmentName 0..1 string "Namn på medarbetaruppdraget (max 256 tecken)"
  * reasonText 0..1 string "Anledning till åtgärden i fritext (max 1024 tecken)"

// Genererad från TKB followup:qualityregistry:nkrr v1.2.2
// Kontrakt: ProcessRegistrationNotification v1.0
// Genererad: 2026-05-19

Logical: ProcessRegistrationNotificationRequest
Id: processregistrationnotification-request
Title: "ProcessRegistrationNotification — Request"
Description: """
  Logisk modell för requestparametrar i ProcessRegistrationNotification
  (RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1).
"""
Characteristics: #can-be-target

* type 0..1 string "Den typ av registrering i kvalitetsregistret som notifieringen avses ge upphov till"
    """
    Den typ av registrering i kvalitetsregistret som notifieringen avses ge upphov till.
    Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller
    för att beskriva hanteringen av notifiering till registret.
    Typen av registrering ska vara unik inom en tjänsteproducent.
    """
* patientId 1..* Identifier "Id för patienten"
    """
    Id för patienten där fältet extension sätts till patientens identitetsbeteckning.
    Anges med 12 tecken utan avskiljare.
    Fältet root sätts till OID för typ av identifierare.
    För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.
    För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.
    """
* healthcareProviderId 1..1 Identifier "Id för informationsägande vårdgivare"
    """
    Id för informationsägande vårdgivare för informationen i notifieringen.
    I första hand HSA-id (root = OID 1.2.752.129.2.1.4.1) alternativt i andra hand
    organisationsnummer (root = OID 1.2.752.29.4.3).
    """
* registerUnitId 0..1 string "Id för registerenhet"
    """
    Id för registerenhet. Registerenhet är den minsta indelning av datatillhörighet som ett
    kvalitetsregister använder för registrering och analys av data.
    Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller.
    """
* reference 0..* BackboneElement "Information om referenser till tidigare registreringar i kvalitetsregistret"
    """
    Information om referenser till tidigare registreringar i kvalitetsregistret.
    Informationen används för att ge rätt kontext på den avsedda registreringen.
    Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller.
    Obs: NkrrParameters eller reference får inte anges om fler än en patient anges.
    """
* reference.key 1..1 string "Nyckel för referens"
    """
    Nyckel för referens. Vad som ska anges som nyckel ska framgå i den informationsspecifikation
    som kvalitetsregistret tillhandahåller.
    """
* reference.value 1..1 string "Information om tidigare registrering"
    """
    Information om tidigare registrering enligt den angivna nyckeln.
    """
* nkrrParameters 0..1 BackboneElement "Parametrar för tjänstekontraktet GetFormData"
    """
    Parametrar som används i begäran för tjänstekontraktet GetFormData.
    Ska fyllas i enligt den informationsspecifikation som kvalitetsregistret tillhandahåller.
    Obs: NkrrParameters eller reference får inte anges om fler än en patient anges.
    """
* nkrrParameters.formId 0..1 string "Identifierare av mallen"
    """
    Identifierare av mallen.
    """
* nkrrParameters.sampleDate 0..* string "Datum för filtrering vid insamling av underlag"
    """
    Datum för filtrering vid insamling av underlag. Datum som skickas i attributet används för att
    populera attributen careEncounterStartDate och careEncounterEndDate i tjänstekontraktet GetFormData.
    Observera att ordningen på datumen som skickas kan ha betydelse.
    """
* nkrrParameters.careUnitId 0..* Identifier "Vårdenheter inom vilka underlag för registrering ska hämtas"
    """
    Vårdenheter inom vilka underlag för registrering ska hämtas.
    Fältet root sätts till OID (1.2.752.129.2.1.4.1) för HSA.
    Fältet extension sätts till HSA-id på vårdenhet.
    """

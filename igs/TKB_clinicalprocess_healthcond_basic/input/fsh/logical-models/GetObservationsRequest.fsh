// Genererad från TKB clinicalprocess:healthcond:basic 1.2.3 (Bitbucket-tagg 1.2.3, TKB-dokument version 1.2.1)
// Kontrakt: GetObservations v1.2 (GetObservationsResponder_1.2.xsd)
// Genererad: 2026-10-08

Logical: GetObservationsRequest
Id: getobservations-request
Title: "GetObservations — Request"
Description: """
  Logisk modell för begäran i tjänstekontraktet GetObservations 1.2
  (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservations).
  Den enda sökparametern som explicit behöver anges är patientId (övrig regel 1.1).
  En begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent.
"""
Characteristics: #can-be-target

* ^version = "1.2"
* patientId 1..1 Identifier "Personidentifierare för den patient sökningen avser (IIType)."
    """
    Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret
    leverera alla uppgifter kopplade till patienten, dvs. även uppgifter som har registrerats på andra,
    till individen, kopplade personidentifierare. Regel 1.1.
    - root: OID för typ av personidentifierare. Personnummer 1.2.752.129.2.1.3.1,
      samordningsnummer 1.2.752.129.2.1.3.3, för andra typer av personidentifierare aktuell OID.
    - extension: patientens identifierare, 12 tecken utan avskiljare.
    """
* time 0..1 BackboneElement "Begränsar sökningen till angivet tidsintervall (TimePeriodType)."
    """
    Om Observation.time i svaret är en tidpunkt returneras poster där tidpunkten ligger inom sökintervallet.
    Om Observation.time är ett intervall returneras poster vars intervall överlappar sökintervallet.
    """
  * start 0..1 instant "Startdatum. Format ÅÅÅÅMMDDttmmss (TimeStampType)."
  * end 0..1 instant "Slutdatum. Format ÅÅÅÅMMDDttmmss (TimeStampType)."
* observationType 0..* CodeableConcept "Begränsning till en viss typ av observation (CVType)."
    """
    Begränsning av sökning avseende observationen till en viss typ av värde, t.ex. kliniskt fynd eller diagnoser.
    code och codeSystem anges (1..1). codeSystemName, codeSystemVersion och displayName ska ignoreras
    i begäran och ej skickas (0..0).
    """
* observationId 0..* Identifier "Identitet för en specifik observation (IIType)."
    """
    Motsvarar observation/id i svaret.
    - root: källsystemets HSA-id.
    - extension: den i källsystemet unika identiteten för observationen.
    """
* careGiverId 0..1 Identifier "Vårdgivare att söka hos (IIType)."
    """
    - root: OID för HSA-id, 1.2.752.129.2.1.4.1.
    - extension: HSA-id för vårdgivaren från vilken observationer ska returneras.
    """
* careUnitId 0..1 Identifier "PDL-vårdenhet med ansvar för dokumentationen (IIType)."
    """
    - root: OID för HSA-id, 1.2.752.129.2.1.4.1.
    - extension: HSA-id för PDL-vårdenheten.
    """
* interactionAgreementId 1..1 string "Används inte. Ange UUID 2866a7c4-9c60-433f-9035-a4d779ffe7a1 (UUIDType)."
    """
    Attributet används inte, men är obligatoriskt i schemat. Ange UUID 2866a7c4-9c60-433f-9035-a4d779ffe7a1.
    UUIDType: 36 tecken, mönster [0-9a-fA-F]{8}-[0-9a-fA-F]{4}-4[0-9a-fA-F]{3}-[8-9a-bA-B][0-9a-fA-F]{3}-[0-9a-fA-F]{12}.
    """
* sourceSystemHSAId 0..1 Identifier "Källsystem att söka i (HSAIdType)."
    """
    Begränsar sökningen till observationer skapade i det angivna källsystemet. Motsvarar
    observationGroup/sourceSystem i svaret. I schemat en sträng (HSAIdType) med källsystemets HSA-id.
    """
* relation 0..* BackboneElement "Filter på relationer (RelationFilterType)."
    """
    Endast de poster med relationer som matchar villkoren i denna lista ska returneras.
    Om listan är tom filtreras inte observationer på deras relationer.
    """
  * relationId 0..1 Identifier "Identitet som anges i sambandet/relationen (relation.id, IIType)."
      """
      - root: HSA-id för den vårdgivare som är ansvarig för informationen som sambandet pekar ut.
      - extension: id som är unikt inom vårdgivaren oavsett vilket källsystem informationen lagras inom.
      """
  * typeCode 0..1 CodeableConcept "Sambandstyp att filtrera på (CVType)."
      """
      code och codeSystem för sambandstyp. codeSystemName, codeSystemVersion och displayName ska ej skickas.
      """
  * referredInformationType 1..1 string "Typ av uppgift som sambandet pekar ut (Categorization i engagemangsindex)."
      """
      I denna version av tjänstekontraktet är följande typer möjliga: chb-o (observation), caa-a (aktivitet).
      """

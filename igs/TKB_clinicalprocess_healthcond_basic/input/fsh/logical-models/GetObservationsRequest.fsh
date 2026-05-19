// Genererad från TKB clinicalprocess:healthcond:basic v2.0
// Kontrakt: GetObservations v2.0
// Genererad: 2026-05-18

Logical: GetObservationsRequest
Id: getobservations-request
Title: "GetObservations — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetObservations
  (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsInteraction:2).
  Den enda alltid obligatoriska sökparametern är personPatientId. Minst en ytterligare
  sökparameter måste anges — annars ska producenten avvisa begäran med SOAP exception.
"""
Characteristics: #can-be-target

* personPatientId 1..1 Identifier "Id för den person som är patient och för vilken observationer ska returneras."
    """
    Identiteten kan vara antingen person-id (person- eller samordningsnummer) eller
    patient-id (nationell reservidentitet). Lokala reservnummer är inte tillåtna.
    - OID personnummer: 1.2.752.129.2.1.3.1
    - OID samordningsnummer: 1.2.752.129.2.1.3.3
    - OID nationell reservidentitet: 1.2.752.74.9.1
    Kardinalitet: Obligatorisk (1..1).
    """

* time 0..1 Period "Begränsning av sökning i tid."
    """
    Resultatet innehåller poster vars tid (observations/observationBody/time) ligger
    inom det sökta tidsintervallet (start- och/eller slutpunkt inkluderas).
    Om endast start anges sker sökning även på pågående observationer.
    Minst en av start och end måste anges om time anges.
    Format: ÅÅÅÅMMDDttmmss.
    """

* observationType 0..* CodeableConcept "Begränsning av sökning till en viss typ av observation."
    """
    Filtrerar på observations/observationBody/type.
    Notera: om observerad storhet är ett kliniskt fynd är observationstyp oftast inte
    angiven — använd då observationCodedValue för filtrering.
    Fälten codeSystemVersion och displayName ska ignoreras i begäran och ej skickas.
    """

* observationCodedValue 0..* CodeableConcept "Begränsning av sökning till ett visst kodat värde som är utfallet av en observation."
    """
    Filtrerar på observations/observationBody/value. Används då observationType inte
    kan användas för att begränsa sökmängden.
    Fälten codeSystemVersion och displayName ska ignoreras i begäran och ej skickas.
    """

* observationId 0..* Identifier "Begränsning av sökning till en viss observation."
    """
    Filtrerar på observations/observationBody/id.
    Identiteten ska garanterat vara unik inom vårdgivaren.
    - root: Den informationsägande vårdgivarens HSA-id
    - extension: Den inom vårdgivaren unika id-beteckningen för observationen
    Om observationId anges är sourceSystemHSAId tvingande.
    """

* observationStatus 0..* CodeableConcept "Begränsning av sökning till observationer med en viss status."
    """
    Filtrerar på observations/observationBody/status.
    Koder tillhandahålls av Socialstyrelsen som urval ur Snomed CT (urvals-id: 56431000052106).
    Snomed CT OID: 1.2.752.116.2.1.1.
    Fälten codeSystemVersion och displayName ska ignoreras i begäran och ej skickas.
    """

* sourceSystemHSAId 0..1 Identifier "HSA-id för det källsystem inom vilket observationens id är unikt."
    """
    Används när man vill söka ur ett specifikt källsystem.
    Värdet måste överensstämma med logicalAddress i anropets tekniska kuvertering (SOAP-header).
    Fältet är tvingande om observationId angivits.
    OID för HSA-id: 1.2.752.129.2.1.4.1
    """

* careGiverId 0..1 Identifier "Begränsning av sökning till observationer hos en viss vårdgivare."
    """
    Filtrerar på den ansvariga vårdgivare som angetts i headern
    (observations/header/accessControlHeader/accountableCareGiver).
    OID för HSA-id: 1.2.752.129.2.1.4.1
    """

* careUnitId 0..* Identifier "Begränsning av sökning till observationer hos viss vårdenhet."
    """
    Filtrerar på den ansvariga vårdenhet som angetts i headern
    (observations/header/accessControlHeader/accountableCareUnit).
    OID för HSA-id: 1.2.752.129.2.1.4.1
    """

* careProcessId 0..1 string "Begränsning av sökning till observationer inom en viss individanpassad vårdprocess."
    """
    Filtrerar på observations/header/accessControlHeader/careProcessId.
    Om fältet anges och producentsystemet inte hanterar individanpassad vårdprocess
    returneras ett tomt svar.
    """

* relation 0..* BackboneElement "Begränsning av sökning till observationer med samband till andra observationer eller aktiviteter."
    """
    Minst en av relation/relationType och relation/referredInformationId ska vara angiven.
    """
  * relationType 0..1 CodeableConcept "Filtrering på sambandstyp."
      """
      Filtrerar på observations/observationBody/relation/type.
      Koder tillhandahålls av Socialstyrelsen som urval ur Snomed CT (urvals-id: 53371000052106).
      Snomed CT OID: 1.2.752.116.2.1.1.
      """
  * referredInformationId 0..1 Identifier "Filtrering på identitet på den refererade informationen."
      """
      Filtrerar på observations/observationBody/relation/referredInformation/id.
      Ger möjlighet att söka ut alla observationer som har ett samband till en viss aktivitet.
      """
  * referredInformationCategorization 1..1 string "Typ av information som sambandet pekar ut."
      """
      Kod från Categorization i engagemangsindexposten.
      Möjliga värden i denna version: chb-o (observation), caa-ga (aktivitet).
      """

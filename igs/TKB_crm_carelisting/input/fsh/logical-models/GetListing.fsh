// Genererad från informationsspecifikation crm:carelisting v1.0
// Kontrakt: GetListing v1.0
// Namespace: urn:riv:crm:carelisting:GetListingResponder:1
// Genererad: 2026-03-24

Logical: GetListing
Id: getlisting
Title: "GetListing"
Description: """
  Logisk modell för tjänstekontraktet GetListing (Visa tjänsteval)
  (RIV-TA urn:riv:crm:carelisting:GetListingResponder:1).
  Representerar responsens informationsstruktur.
  Hämtar information om en persons aktiva listning (tjänsteval).
"""
Characteristics: #can-be-target

* subjectOfCare 1..1 BackboneElement "En persons listningar"
    """
    SubjectOfCare: root-element som beskriver tjänsteval för en person.
    PostCondition: tillgängliga listningstyper för en listnings vårdenhet är utelämnad.
    Kardinalitet: Obligatorisk.
    """
* subjectOfCare.personId 1..1 string "Identitetsbeteckning för vård- och omsorgstagaren"
    """
    Personnummer, samordningsnummer eller reservnummer för vård- och omsorgstagaren.
    Pattern: (([1-9]\d{7})|(\d{6}))[\-]?\d{4}
    Kardinalitet: Obligatorisk.
    """
* subjectOfCare.listing 0..* BackboneElement "En listning för personen"
    """
    En persons listning, dvs. en koppling till en vårdenhet och optionellt en resurs.
    Kardinalitet: Valfri, lista.
    """
* subjectOfCare.listing.validFromDate 0..1 dateTime "Datum för när listningen började gälla"
    """
    Anger datum för när listningen började gälla.
    Kardinalitet: Valfri.
    """
* subjectOfCare.listing.validToDate 0..1 dateTime "Datum när listningen slutade gälla"
    """
    Anger datum när listningen slutade gälla.
    Om datum saknas är det implicit obestämt in i framtiden.
    Kardinalitet: Valfri.
    """
* subjectOfCare.listing.listingType 1..1 string "Typ av listning"
    """
    Typ av listning, t.ex. BVC, HLM, FL.
    Listningstyp saknar centralt kodverk — se QUESTIONS.md.
    Kardinalitet: Obligatorisk.
    """
* subjectOfCare.listing.healthcareFacility 1..1 BackboneElement "Vårdinrättning som ansvarar för personen"
    """
    Facility: Vårdinrättning/vårdenhet som ansvarar för personen som listat sig hos dem.
    Det är denna inrättning som för ekonomisk ersättning för personen.
    Kardinalitet: Obligatorisk.
    """
* subjectOfCare.listing.healthcareFacility.facilityId 1..1 Identifier "HSA-ID för vårdenheten"
    """
    HSA-ID eller alternativt Orgnr+lokalt id för vårdenheten.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA-id).
    Kardinalitet: Obligatorisk.
    """
* subjectOfCare.listing.healthcareFacility.facilityName 1..1 string "Namn på vårdenheten"
    """
    Enhetens officiella namn.
    Kardinalitet: Obligatorisk.
    """
* subjectOfCare.listing.healthcareFacility.hasQueue 0..1 boolean "Indikerar om vårdenheten har kö"
    """
    Boolskt värde som indikerar om vårdenheten har kö vid listningar.
    Kan utelämnas om information inte har någon betydelse i kontexten.
    Kardinalitet: Valfri.
    """
* subjectOfCare.listing.healthcareFacility.supportedListingTypes 0..* string "Listningstyper som vårdenheten stödjer"
    """
    Lista med listningstyper som vårdenheten stödjer.
    Utelämnas per postcondition i GetListing-svaret.
    Kardinalitet: Valfri, lista.
    """
* subjectOfCare.listing.resource 0..1 BackboneElement "Specifik resurs som utför listningstjänsten"
    """
    Resource: specifik resurs (t.ex. en läkare eller husläkarteam) som utför listningstjänsten.
    Om listning pekar ut en specifik resurs.
    Kardinalitet: Valfri.
    """
* subjectOfCare.listing.resource.resourceId 1..1 Identifier "HSA-ID för resursen"
    """
    HSA-ID för resursen (personal).
    I de fall HSA-id inte finns tillgängligt kan alternativ id-beteckning användas.
    Kardinalitet: Obligatorisk.
    """
* subjectOfCare.listing.resource.resourceName 1..1 string "Namn på vårdgivaren"
    """
    Aktuell persons förnamn och efternamn.
    Kardinalitet: Obligatorisk.
    """

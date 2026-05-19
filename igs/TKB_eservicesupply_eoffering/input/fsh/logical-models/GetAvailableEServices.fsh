// Genererad från TKB eservicesupply:eoffering v1.0 (källdokument v0.3, 2011-04-18)
// Kontrakt: GetAvailableEServices v1.0
// Namnrymd: urn:riv:eservicesupply:eoffering:GetAvailableEServicesResponder:1
// Genererad: 2026-05-19

Logical: GetAvailableEServices
Id: getavailableeservices
Title: "GetAvailableEServices"
Description: """
  Logisk modell för tjänstekontraktet GetAvailableEServices
  (RIV-TA urn:riv:eservicesupply:eoffering:GetAvailableEServicesResponder:1).
  Representerar responsens informationsstruktur.

  Tjänsten redovisar vilka e-tjänster en vårdenhet (identifierad via HSA-ID) erbjuder
  (stödtjänst Erbjuden e-tjänst).
"""
Characteristics: #can-be-target

* availableEServices 0..* BackboneElement "E-tjänster per vårdenhet"
    """
    Lista med tillgängliga e-tjänster per vårdenhet.
    Kardinalitet: Valfri, lista.
    """

* availableEServices.healthcareFacility 1..1 BackboneElement "Vårdenhetsinformation"
    """
    Vårdenhet som erbjuder e-tjänster.
    Kardinalitet: Obligatorisk.
    """

* availableEServices.healthcareFacility.healthcareFacilityId 1..1 Identifier "Vårdenhetens HSA-id"
    """
    Vårdenhetens hsa-id. Hsa-id måste vara ett giltigt hsa-id i HSA-katalogen.
    XSD: hsaIdType (string).
    Kardinalitet: Obligatorisk.
    """

* availableEServices.healthcareFacility.healthcareFacilityName 0..1 string "Vårdenhetens namn"
    """
    Vårdenhetens namn. Om utelämnat ska vårdenhetens namn hämtas från HSA-katalog.
    Kardinalitet: Valfri.
    """

* availableEServices.eservice 0..* BackboneElement "E-tjänst"
    """
    Information om e-tjänsten.
    Kardinalitet: Valfri, lista (en vårdenhet kan ha noll eller flera e-tjänster).
    """

* availableEServices.eservice.commonName 1..1 string "E-tjänstens namn"
    """
    E-tjänstens (resursens) namn. Ex: Tidbokning.
    Kardinalitet: Obligatorisk.
    """

* availableEServices.eservice.description 1..1 string "Beskrivning av e-tjänst"
    """
    Information om e-tjänsten. Kan innehålla beskrivningar och villkor för användandet
    av tjänsten (riktad mot användare/patient).
    Kardinalitet: Obligatorisk.
    """

* availableEServices.eservice.resourceId 1..1 string "E-tjänstens id"
    """
    E-tjänstens id. Unikt id för e-tjänsten. Tjänsteproducentens unika id.
    XSD: resourceIdType (string).
    Kardinalitet: Obligatorisk.
    """

* availableEServices.eservice.securitylevel 0..1 code "Autentiseringsnivå"
    """
    Tjänstens krav på autentiseringsnivå (Assurance Level, ISO/IEC 29115).
    AL1 = Tillitsnivå 1, AL2 = Tillitsnivå 2,
    AL3 = Mjuka certifikat/stark autentisering med engångskod,
    AL4 = Hårda certifikat.
    Kardinalitet: Valfri.
    """
* availableEServices.eservice.securitylevel from SecurityLevelVS (required)

* availableEServices.eservice.url 0..1 url "URL till e-tjänst"
    """
    URL till e-tjänst. URL måste kunna nås via internet.
    Ex: https://host/funktion?operation&param.
    XSD: anyURI.
    Kardinalitet: Valfri.
    """

* availableEServices.eservice.restrictions 0..1 BackboneElement "Restriktioner"
    """
    Information om de restriktioner som finns kopplade till e-tjänsten.
    En e-tjänst utan restriktioner är tillgänglig för alla.
    Kardinalitet: Valfri.
    """

* availableEServices.eservice.restrictions.eserviceAreaCode 0..1 BackboneElement "Betjäningsområde"
    """
    Information om e-tjänstens geografiska betjäningsområde (län, kommun och kommundel).
    Kardinalitet: Valfri.
    """

* availableEServices.eservice.restrictions.eserviceAreaCode.countycode 1..* string "Länskod"
    """
    Länskod. Anger i vilka län e-tjänsten är tillgänglig/erbjuds.
    E-tjänsten betjänar invånare i detta län.
    XSD: countycode (string).
    Kardinalitet: Obligatorisk, lista (minst ett lärn krävs).
    """

* availableEServices.eservice.restrictions.eserviceAreaCode.municipalityCode 0..* string "Kommunkod"
    """
    Kommunkod. Avgränsar länskod. Visar i vilka specifika kommuner e-tjänsten erbjuds.
    Utelämnas denna gäller hela länet.
    Kardinalitet: Valfri, lista.
    """

* availableEServices.eservice.restrictions.eserviceAreaCode.municipalitySectionCode 0..* string "Kommundelskod"
    """
    Kommundelskod. Avgränsar kommunkod. Visar i vilka specifika kommundelar e-tjänsten erbjuds.
    Utelämnas denna gäller hela kommunen.
    Kardinalitet: Valfri, lista.
    """

* availableEServices.eservice.restrictions.gender 0..1 code "Kön"
    """
    E-tjänsten riktar sig till ett visst kön.
    1 = Man, 2 = Kvinna.
    ASSUME: Modellat som code med domänspecifikt ValueSet.
    XSD: genderType (string — ej enumeration i schemat).
    Kardinalitet: Valfri.
    """
* availableEServices.eservice.restrictions.gender from GenderEofferingVS (required)

* availableEServices.eservice.restrictions.listing 1..1 boolean "Listningskrav"
    """
    Listningskrav. true = kräver listning, false = kräver ej listning.
    Kardinalitet: Obligatorisk.
    """

* availableEServices.eservice.restrictions.referal 1..1 boolean "Remisskrav"
    """
    Remisskrav. true = kräver remiss, false = kräver ej remiss.
    Kardinalitet: Obligatorisk.
    """

* availableEServices.eservice.restrictions.referalTypeId 0..1 string "Remisstyp"
    """
    Kodverk för remisstyper 1–8 (KV Framställantyp).
    Definiera vilken typ av remiss e-tjänsten kräver.
    QUESTIONS: Canonical URL för KV Framställantyp är okänd — se QUESTIONS.md.
    Kardinalitet: Valfri.
    """

* availableEServices.eservice.restrictions.ageMin 0..1 integer "Ålderskrav minimum"
    """
    Ålderskrav minimum (år).
    Kardinalitet: Valfri.
    """

* availableEServices.eservice.restrictions.ageMax 0..1 integer "Ålderskrav maximum"
    """
    Ålderskrav maximum (år).
    Kardinalitet: Valfri.
    """

# supportprocess: logistics: carelisting

<!-- tkb-version -->
**TKB-version:** 2.1 · **IG-version:** 2.1.0 · **Källa:** Bitbucket-tagg `2.1`
<!-- /tkb-version -->

## Översikt

FHIR Implementation Guide för tjänstedomänen **supportprocess: logistics: carelisting** (Listning) version 2.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 2.1 (2025-06-13), och domänens WSDL- och XSD-filer (tagg 2.1).

Domänen används för invånares listning på vårdcentral eller annan listningsbar mottagning: att hämta listningstyper, mottagningar och vårdpersonal, att lista sig eller lista om sig, också över regiongräns, och att hämta var och hur invånaren är listad. Domänen ersätter crm:carelisting 1.0, som har en egen IG.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [CreateListing](7-tjanstekontrakt.html#createlisting) | 2.0 | Tjänstekontraktet CreateListing anropas av tjänstekonsument för att förmedla att invånare önskar lista sig /lista om sig på vald listningsbar mottagning/vårdenhet. Aktören för tjänstekonsumenten är invånaren eller vårdnadshavare som på uppdrag av invånaren önskar utföra omlistningen. Tjänstekontraktet får inte anropas av övriga aktörer. |
| [GetAvailableHealthcareFacilities](7-tjanstekontrakt.html#getavailablehealthcarefacilities) | 2.1 | Tjänstekontraktet GetAvailableHealthcareFacilities anropas av tjänstekonsument för att hämta lista med listningsbara mottagningar som en region erbjuder. Listan kan i anropet filtreras för att endast hämta mottagningar som stödjer ett urval av listningstyper (för region som exponerar flera olika listningstyper) eller en lista med HSAId:n för de mottagningar som ska returneras. |
| [GetAvailableHealthcarePersonnel](7-tjanstekontrakt.html#getavailablehealthcarepersonnel) | 2.0 | Tjänstekontraktet GetAvailableHealthcarePersonnel anropas av tjänstekonsument för att hämta lista med valbar vårdpersonal för specifik listningsbar mottagning, motsvarande den lista med ”fast läkarkontakt” som mottagningen/vårdenheten erbjuder. |
| [GetListingCounty](7-tjanstekontrakt.html#getlistingcounty) | 2.0 | Tjänstekontraktet GetListingCounty anropas av tjänstekonsument för att hämta invånares nuvarande listningsregion(er). En tjänstekonsument ska adressera anropet av tjänstekontraktet till den region där invånaren är folkbokförd. Tjänstekontraktets syfte är att kunna förmedla om invånare eventuellt är utomlänslistad. Det är folkbokföringsregionens ansvar att hålla reda på i vilken annan region en invånare är listad hos, om invånaren är utomlänslistad. Om en region erbjuder mer än en listningstyp kan det inträffa att svaret innehåller mer än en region – se scenario 3 nedan. |
| [GetListing](7-tjanstekontrakt.html#getlisting) | 2.1 | Tjänstekontraktet GetListing anropas av tjänstekonsument för att hämta invånares nuvarande listningsdetaljer. En invånare kan vara listad hos mer än en region samtidigt, i det fall då hemregionen (folkbokföringsregionen) erbjuder mer än en listningstyp (läs mer om listningstyper i Informationsspecifikation R3). I ett sådant fall behöver tjänstekonsumenten anropa respektive region separat via tjänstekontraktet. |
| [GetListingTypes](7-tjanstekontrakt.html#getlistingtypes) | 2.0 | Tjänstekontraktet GetListingTypes anropas av tjänstekonsument för att hämta de listningstyper som erbjuds invånare i den adresserade regionen. Tjänstekontraktet kan användas i två olika sammanhang. |
| [UpdateListing](7-tjanstekontrakt.html#updatelisting) | 2.0 | Tjänstekontraktet UpdateListing anropas av tjänstekonsument (region) för att meddela annan region om att en utomlänslistning har skett för berörd invånare. Tjänstekonsument är normalt alltid en regions listningssystem. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)

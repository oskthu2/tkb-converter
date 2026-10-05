# strategicresourcemanagement: organizational: organization

<!-- tkb-version -->
**TKB-version:** 2.0_RC1 · **IG-version:** 2.0.0-rc1 · **Källa:** Bitbucket-commit `b349285d18c2`, efter taggen `2.0_RC1`
<!-- /tkb-version -->

## Översikt

FHIR Implementation Guide för tjänstedomänen **strategicresourcemanagement: organizational: organization** (infrastruktur: katalogtjänster: organisation), version 2.0_RC1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB) och domänens WSDL- och XSD-filer i senaste commit med innehåll (b349285d18c2, 2017-02-27, efter taggen 2.0_RC1).

> **Utgången domän.** Domänen kom aldrig längre än 2.0_RC1. I september 2017 flyttades tjänstekontrakten till infrastructure.directory.organization, som har en egen IG. Domänens repo är sedan dess tomt.

Tjänstedomänens ändamål är att förse övriga tjänster med kvalitetssäkrade och aktuella organisations-, enhets- och funktionsuppgifter ur HSA.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetHealthCareUnit](7-tjanstekontrakt.html#gethealthcareunit) | 2.0 | Metoden söker ut vilken vårdenhet den angivna enheten eller funktionen är kopplad till. Kan användas av tjänstekonsumenten för att koppla ihop en enhet eller funktion i ett vårdsystem med vårdenhet i enlighet med PDL. Notera särskilt att alla enheter inte är kopplade till en vårdenhet. Om enheten i sig själv är utpekad som vårdenhet markeras detta med en flagga i svaret. |
| [GetHealthCareUnitList](7-tjanstekontrakt.html#gethealthcareunitlist) | 2.0 | Metoden söker fram och listar en angiven vårdgivares alla vårdenheter, definierade enligt PDL. Kan användas av tjänstekonsumenten för att t.ex. skapa en förvalslista i ett användargränssnitt. |
| [GetHealthCareUnitMembers](7-tjanstekontrakt.html#gethealthcareunitmembers) | 2.0 | Metoden söker fram alla kopplade enheter för den angivna vårdenheten. Kan användas av tjänstekonsumenten för att se vilka mottagningar och avdelningar som ingår i en klinik eller för att i ett användargränssnitt skapa en förvalslista med samtliga arbetsplatskoder kopplade till vårdenheten. Notera särskilt att alla enheter inte är kopplade till en vårdenhet och att samtliga arbetsplatskoder inte finns registrerade. |
| [GetUnit](7-tjanstekontrakt.html#getunit) | 2.0 | GetUnit returnerar information om den angivna enheten (med enhet avses här alla typer av organisatoriska objekt, d.v.s. både organisation, enhet och funktion). Kan användas av tjänstekonsumenten för att presentera detaljerad information om en enhet i t.ex. en vårdsökning eller en kontaktlista. Notera särskilt att alla attribut inte är obligatoriska och att ytterst få enheter innehåller samtlig information enligt nedan specifikation. |
| [GetHealthCareUnitIncludingManager](7-tjanstekontrakt.html#gethealthcareunitincludingmanager) | 2.0 | Metoden söker ut vilken vårdenhet den angivna enheten eller funktionen är kopplad till. Kan användas av tjänstekonsumenten för att koppla ihop en enhet eller funktion i ett vårdsystem med vårdenhet i enlighet med PDL. Notera särskilt att alla enheter inte är kopplade till en vårdenhet. Om enheten i sig själv är utpekad som vårdenhet markeras detta med en flagga i svaret. Metoden är identisk med GetHealthCareUnit men innehåller även attribut för utpekad verksamhetschef i söksvaret. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [8 Bilaga, attributtabeller](8-bilaga-attributtabeller.html)
* [Artefakter](artifacts.html)

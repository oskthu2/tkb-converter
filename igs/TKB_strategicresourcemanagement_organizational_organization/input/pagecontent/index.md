# strategicresourcemanagement: organizational: organization

<!-- tkb-version -->
**TKB-version:** 2.0_RC1 · **IG-version:** 2.0.0-rc1 · **Källa:** Bitbucket-commit `b349285d18c2`, efter taggen `2.0_RC1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tjänstedomänens ändamål är att förse övriga tjänster med kvalitetssäkrade och aktuella organisations-, enhets- och funktionsuppgifter. Användningsområden utgörs främst av • Publika vårdsökningar efter kontaktinformation till enheter verksamma inom vård och omsorg • Hämtning av information om vårdgivare och vårdenheter kopplade till Patientdatalagen, PDL</td></tr>
<tr><th>Svenskt kortnamn</th><td>organisation</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:katalogtjänster:organisation</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.organizational.organization/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.organizational.organization/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.0_RC1 · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.organizational.organization/src/2.0_RC1">tagg 2.0_RC1</a> · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.organizational.organization/get/b349285d18c2.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

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

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.0_RC1</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_organizational_organization/2.0_RC1/T-granskning%20strategicresourcemanagement_organizational_organization_2.0_RC1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_organizational_organization/2.0_RC1/ServiceContracts_strategicresourcemanagement_organizational_organization_2.0_RC1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.organizational.organization/src/2.0_RC1">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td></td></tr>
</tbody>
</table>

<p><i>Källa: ögonblicksbild av DOMDB från 2021-08-24, via RIV-TA-portalen.</i></p>

<!-- /landningssida:versioner -->

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

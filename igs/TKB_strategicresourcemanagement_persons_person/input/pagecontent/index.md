# strategicresourcemanagement: persons: person

<!-- tkb-version -->
**TKB-version:** 5.1 · **IG-version:** 5.1.0 · **Källa:** Bitbucket-tagg `5.1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Syftet med denna domän är primärt att göra personuppgifter tillgängliga som är registrerade i Skatteverkets folkbokföringsregister. Folkbokföringsuppgifterna omfattar bland annat namn, adress, fastighetsuppgifter m.m. Domänen har även stöd för att kunna utfärda och hantera reservidentiteter (reservnummer), samt stöd för personens egna tilläggsuppgifter, såsom kontaktuppgifter och kontaktpersoner. Konsumenter av domänens information är de flesta vård- och omsorgssystem som hanterar patienter/invånare. Konsumenter kan också vara system som hanterar medarbetare, identitetshanteringssystem och liknande. *OBSERVERA: I releasepaketet nedan finns testsviter för sex av tjänstekontrakten, dessa testsviter kan med fördel användas vid testning. Skicka i nuläget däremot inte in testresultat i de mallar för självdeklarationer som också finns där, då Ineras testmodell ännu inte är införd för den här tjänsten.”</td></tr>
<tr><th>Svenskt kortnamn</th><td>personuppgiftshantering</td></tr>
<tr><th>Svenskt namn</th><td>underlagförprocesstöd:invånare:personuppgifter</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src">Bitbucket</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 5.1 · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src/5.1">tagg 5.1</a> · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/get/5.1.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **strategicresourcemanagement: persons: person** (Personuppgiftstjänsten, PU-tjänsten) version 5.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 5.1 (2024-11-28), och domänens WSDL- och XSD-filer (tagg 5.1).

Personuppgiftstjänsten tillhandahåller personuppgifter ur Skatteverkets folkbokföring (Navet) och hanterar reservidentiteter och personers kontaktuppgifter. Kontrakten med suffixet *Unrestricted* returnerar även uppgifter för personer med skyddade personuppgifter. Utöver RIV-TA-kontrakten beskriver TKB:n REST-tjänsten [GetPersonsByFile](7-tjanstekontrakt.html#getpersonsbyfile).

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetPersonsForProfile](7-tjanstekontrakt.html#getpersonsforprofile) | 5.0 | Tjänst för att hämta uppgifter för 1..* personidentiteter. |
| [GetPersonsForProfileUnrestricted](7-tjanstekontrakt.html#getpersonsforprofileunrestricted) | 5.0 | Tjänst för att hämta uppgifter för 1..* personidentiteter. |
| [SearchPersonsForProfile](7-tjanstekontrakt.html#searchpersonsforprofile) | 5.0 | Tjänst för att söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax. |
| [SearchPersonsForProfileUnrestricted](7-tjanstekontrakt.html#searchpersonsforprofileunrestricted) | 5.0 | Tjänst för att söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax. |
| [SearchPersonsForProfileByOrder](7-tjanstekontrakt.html#searchpersonsforprofilebyorder) | 5.0 | Tjänst för att asynkront söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax. Denna tjänst tillskillnad från SearchPersonsForProfile returnerar endast ett orderId som sedan ska användas tillsammans med tjänsten GetFilesForOrderId för att få tillgång till resultatet av sökningen. Se sekvensschemat i kapitel 3.1.10. |
| [SearchPersonsForProfileByOrderUnrestricted](7-tjanstekontrakt.html#searchpersonsforprofilebyorderunrestricted) | 5.0 | Tjänst för att asynkront söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax. |
| [GetFilesForOrderId](7-tjanstekontrakt.html#getfilesfororderid) | 4.0 | Tjänst för få en adress (URL) utifrån ett givet OrderId, där man kan hämta begärda data. Till exempel personposter utifrån en tidigare begärd sökning med tjänsten SearchPersonsForProfileByOrder eller förändrade personposter. |
| [GetPersonContactInformation](7-tjanstekontrakt.html#getpersoncontactinformation) | 4.0 | Tjänst för att hämta information om kontaktinformation, exempelvis mailadress eller mobilnummer till personen. Kontaktinformationen kan ha skapats antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller av t.ex en vårdaktör via vårdaktörens tjänst. Kontaktuppgifterna består dels av vilka kontaktvägar (telefon, mail etc) som personen själv i fråga kan nås på, dels av kontaktpersoner och kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård. |
| [GetPersonContactInformationUnrestricted](7-tjanstekontrakt.html#getpersoncontactinformationunrestricted) | 4.0 | Tjänst för att hämta information om kontaktinformation, exempelvis mailadress eller mobilnummer till personen. |
| [UpdatePersonContactInformation](7-tjanstekontrakt.html#updatepersoncontactinformation) | 4.0 | Tjänst för att skapa/uppdatera kontaktinformation. Antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller där en vårdaktör uppger personen kontaktuppgifter via vårdaktörens journalsystem/eTjänst. Kontaktuppgifterna består dels av vilka kontaktvägar som personen själv i fråga kan nås på (exempelvis telefon, email), dels av kontaktpersoner samt kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård. En konsument av denna tjänst kan således dels vara en tjänst såsom Journalen, dels ett vårdsystem. |
| [UpdatePersonContactInformationUnrestricted](7-tjanstekontrakt.html#updatepersoncontactinformationunrestricted) | 4.0 | Tjänst för att skapa/uppdatera kontaktinformation. Antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller där en vårdaktör uppger personen kontaktuppgifter via vårdaktörens journalsystem/eTjänst. |
| [UpdatePerson](7-tjanstekontrakt.html#updateperson) | 5.0 | Tjänst för att ta ut en ny reservidentitet (NRID), uppdatera en befintlig reservidentitet, eller lägga till en lokal reservidentitet (LRID). Om tjänsten anropas utan identitet så erhålls en ny identitet (NRID) i svaret baserad på de uppgifter som har angivets på personen, ex födelsedatum, kön. |
| [LinkPersonIdentity](7-tjanstekontrakt.html#linkpersonidentity) | 4.0 | Tjänst för att koppla en persons identitet till dess huvudidentitet. T.ex en reservidentitet (LRID/NRID) till ett personnummer. Dvs kunna ange att en person som har 2 identiteter är densamma person. Genom denna koppling kan t.ex NPÖ för en person som är journalförd på 2 olika identiteter, t.ex en reservidentitet och sitt ordinarie personnummer, visa upp journalerna för bägge identiteterna. |
| [UnlinkPersonIdentity](7-tjanstekontrakt.html#unlinkpersonidentity) | 4.0 | Tjänst för att koppla isär en tidigare koppling mellan 2 identiteter. T.ex  en koppling mellan en reservidentitet (LRID/NRID) och ett personnummer (PNR). Skälet till isärkopplingen är normalt en felaktig tidigare genomförd koppling. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>3.3.1</td><td>AB, IS, TKB</td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/VIS_granskning%20-%20strategicresourcemanagement_persons_person_3.3.1.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/VIS_granskning%20-%20strategicresourcemanagement_persons_person_3.3.1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/T-granskning%20-%20%20strategicresourcemanagement_persons_person_3.3.1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/ServiceContracts_strategicresourcemanagement_persons_person_3.3.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src/3.3.1">källkod</a></td></tr>
<tr><td>3.3</td><td>TKB, IS, AB</td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/T-granskning%20-%20%20%20strategicresourcemanagement_persons_person_3.3.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/VIS_granskning%20-%20strategicresourcemanagement_persons_person_3.3_.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/VIS_granskning%20-%20strategicresourcemanagement_persons_person_3.3_.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/ServiceContracts_strategicresourcemanagement_persons_person_3.3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src/3.3">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, IS, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src/master">källkod</a></td></tr>
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
* [8 Aktuella profiler](8-aktuella-profiler.html)
* [Artefakter](artifacts.html)

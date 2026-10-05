# strategicresourcemanagement: persons: person

<!-- tkb-version -->
**TKB-version:** 5.1 · **IG-version:** 5.1.0 · **Källa:** Bitbucket-tagg `5.1`
<!-- /tkb-version -->

## Översikt

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

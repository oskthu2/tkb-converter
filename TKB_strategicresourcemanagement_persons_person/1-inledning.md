# 1 Inledning - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

# 1 Inledning

Källa: **Personuppgiftstjänsten – Tjänstekontraktsbeskrivning**, version 5.1 (2024-11-28), [TKB_strategicresourcemanagement_persons_person.docx](TKB_strategicresourcemanagement_persons_person.docx).

### Dokumentinformation

| | |
| :--- | :--- |
| Domän | strategicresourcemanagement: persons: person (Underlagförprocesstöd: invånare: personuppgifter) |
| Version | 5.1 |
| Datum | 2024-11-28 (senaste revision) |

#### Revisionshistorik

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| 2.0 | 0.1 | 2016-01-25 | Daniel Fjällström, CGI | Första utkast |
| 2.0 | 0.2 | 2016-01-28 | Daniel Fjällström, CGI | Uppdateringar |
| 2.0 | 0.3 | 2016-02-01 | Daniel Fjällström, CGI | Uppdateringar |
| 2.0 | RC1 | 2016-02-11 | Daniel Fjällström, CGI | Uppdateringar efter granskning från Khaled |
| 2.0 | RC2 | 2016-02-29 | Per Mützell | Uppdateringar efter granskning Inera A&R: / Kap 4.3 Felhantering / Ändrat till enbart tekniska fel via SOAP faults för läsande tjänst. / Övriga uppdateringar: / 7.1.21 ImmigrationIdentity / förbättrad struktur, landskodning. / 7.1.3 Address namnbyte till AddressInformation / Gender borttagen (används ej) |
| 2.0 | RC3 | 2016-04-22 | Per Mützell | protectedPersonIndicator: obligatorisk (tidigare optionell). / testIndicator: obligatorisk (tidigare optionell). / referredPersonalIdentityNumber byter namn till: referredPersonalIdentity. / searchDate byter namn till notificationDate. / Dokumentationsändringar: / 2.1.3 Förtydligande vilket äldre kontrakt som ersätts. / 3.1.1.2. Justering sekvensdiagram (enligt granskningsprotokoll). / 4.1 Informationssäkerhet och juridik, justerad. / 4.2.1 Justerat krav för last. / 5.1 Uppdaterad V-MIM enligt ovan. / 8. Förtydligande vilka attribut som levereras vid sekretessmarkering / 7.1.29 searchDate, uppdaterad beskrivning / 7.1.29 modificationTime, uppdaterad beskrivning / 7.1.34 maritalStatus, rättad felstavning |
| 2.1 | 0.1 | 2016-10-13 | Björn Skeppner | Utökad infomängd (enligt beslut i ref.grupp) vid sekretessmarkering. Län & hänvisningspersonnummer ska nu visas. |
| 2.1 | 0.2 | 2016-10-18 | David Komar | Nya arbetsflöden och sekvensdiagram |
| 2.1 | 0.3 | 2016-10-21 | Björn Skeppner | Nya kontrakt (SearchPersonsForProfile, GetFilesForOrderId) samt smärre textjusteringar och justeringar i fältregler |
| 2.1 | RC1 | 2016-10-25 | Björn Skeppner | Infört (temporär) regel för kontrakt / SearchPersonsForProfile samt förtydligat / fältregler för GetFilesForOrderId |
| 3.0 | 0.1 | 2017-01-18 | Björn Skeppner | Första arbetet mot version 3 |
| 3.0 | RC1 | 2017-01-30 | Björn Skeppner | Bytt domännamn samt justerad efter synpunkter intern runda. Version för granskning |
| 3.0 | RC2 | 2017-02-20 | Björn Skeppner | Justerat efter granskning |
| 3.0 | RC3 | 2017-03-14 | Daniel Petersson, Björn Skeppner | Lyft ut bilagor till personRecord samt smärre textjusteringar |
| 3.0 | RC4 | 2017-07-04 | Björn Skeppner | Ändrat så att kopplade identiteter även visas för en person med sekretessmarkering |
| 3.1 | RC1 | 2018-08-29 | Björn Skeppner | Lagt till stöd för personens aviseringsvägar |
| 3.1 | RC2 | 2018-09-17 | Björn Skeppner | Justerat efter granskningskommentarer på RC1. |
| 3.1 | RC3 | 2018-11-20 | Björn Skeppner | Justerat efter nya attribut från SKV (Skyddad folkbokföring (protectedPopulationRecord) & Anträffad död (datum) (FoundDeadAtDate). / Har även lagt till regel #4 i GetPersonsForProfile samt ändrat tabellen 2.1.3 |
| 3.1 | RC4 | 2018-11-29 | Björn Skeppner | UpdatePerson påverkas av uppdaterad deRegistrationType. Justerat |
| 3.1.1 | - | 2019-04-08 | Björn Skeppner | Lagt till nya kontrakt som möjliggör åtkomst till personuppgifter som har sekretessmarkering, genom Get/SearchUnrestrictedXxxx. Nya regler tillagda på uppdaterande kontrakt gällande attributet versionToUpdate |
| 3.2 | RC1 | 2019-08-16 | Björn Skeppner | Lagt till ny komplex typ, UUID under klass AddressInformationType |
| 3.2.1 | RC1 | 2019-10-09 | Björn Skeppner | Justerat/rättat versionsnummer på några kontrakt & tabellen för kompabilitet |
| 3.2.1 | RC2 | 2019-10-10 | Björn Skeppner | P.g.a tidigare arv så har 1.0 och 1.1-versionerna ändrats till 3.2 resp 3.2 |
| 3.2.1 | RC3 | 2019-10-14 | Björn Skeppner | Justerat Profiltabellen (digitalNotification) saknades för kontaktperson |
| 3.2.1 | - | 2019-10-17 | Björn Skeppner | Infört rättningar och rättningskommentarer i följande schemafiler: / UpdatePersonContactInformationUnrestricted_3.1 / -Bugg rättat i schemafilen. Kontraktet har aldrig byggts, så kontraktets versionsnummer kvarstår därför. / -UpdatePersonContactInformation / Har en dubbelimport av core och ext-schema som f.n anses vara onödig, men är infört tillsvidare p.g.a att applikationsförvaltaren får fel vid bygget annars. / -UpdatePersonContactInformationUnrestricted_3.1 / Se kommentar ovan. / 4.3.1.2 samt 4.3.2.2 Texten Soap Exception ändrats till Soap Fault. |
| 3.2.2 | RC1 | 2019-12-04 | Björn Skeppner | Förbättrad viss text för ökad läsbarhet och förståelse, enligt inkomna kommentarer. |
| 3.3 | RC1 | 2021-03-05 | Björn Skeppner | Lagt till landskod för vem som utfärdat identitetshandlingen (reservidentitet). Lagt till Utlandsadress som möjlig class för reservidentitet. Uppdaterat länkar till referenser. Några små textjusteringar. |
| 3.3 | RC2 | 2021-03-05 | Björn Skeppner | Ändrat tillbaka SearchPersonsForProfileByOrder & SearchPersonsForProfileByOrderUnrestricted till 3.2 då det rent tekniskt ej har skett någon förändring med dem |
| 3.3 | - | 2021-03-16 | Björn Skeppner | Ändrat versionsnumret från 3.3_RC2 till 3.3 |
| 3.3.1 | - | 2021-04-09 | Björn Skeppner | Uppdaterat versionsnumret pga uppdaterad domänversion |
| 3.3.2 | RC1 | 2021-04-19 | Björn Skeppner | Uppdaterat kap 7.1.50 vad gäller statuskod för relationsperson med ett förtydligande. |
| 3.3.2 | RC2 | 2021-06-09 | Björn Skeppner | Uppdaterat kap 4 gällande krav på konsument kring hanteringen av kopplade personidentiteter som har en sekretessmarkering/skyddad folkbokföring. / Även uppdatering på format för telefonnummer och mail (kap 7.1.13). |
| 4.0 | RC1 | 2021-11-05 | Björn Skeppner | Uppdaterad majorversion till 4.0. / Uppdateringar enligt förändringar i Navet: / Klasserna Samordningsnummeruppgift, Hänvisningar, Identitetsstatus tillagda. / Avregistreringskoderna AS(Avslutad) och GS (Gammalt samordningsnummer) i klassen Avregistrering borttagna. / Övrigt: / Korrigerat dokumentet efter senaste mallen (från 2019-05-28): Kapitel 5 och 6, 8. / Klassen Historik har utökats med attributen ”registreringstidpunkt” och ”tidpunkt då nyare historisk post finns”. |
| 4.0 | RC1 | 2021-11-08 | Björn Skeppner | Ändrat datumtypen för klassen coOrdinationNumberDataType |
| 4.0 | RC1 | 2021-12-03 | Björn Skeppner | Diverse textuella förbättringar efter inkomna synpunkter |
| 4.0 | RC1 | 2022-03-23 | Björn Skeppner | Ändrat versionsnummer på SearchByOrder-kontrakten från 3.2 till 4.0. Detta eftersom det resultat man får GetFilesForOrderId då skiljer sig (xml-filen) skiljer sig från tidigare SearchByOrder-kontrakt. Även lagt till beskrivning av REST-kontraktet SearchPersonsByFile. |
| 4.0 | RC2 | 2022-04-04 | Jimmy Fridh | Uppdateringar efter I-granskning (VITS-kontroll) |
| 4.0 | RC4 | 2022-04-12 | Jimmy Fridh | Uppdateringar efter I-granskning (VITS-kontroll): Tomma celler |
| 4.0 | RC5 | 2022-04-25 | Jimmy Fridh | Versionsuppdatering för att matcha andra uppdaterade dokument. |
| 4.0 | RC6 | 2022-10-05 | Björn Skeppner | Versionsuppdatering för att matcha andra uppdaterade dokument. |
| 4.0 | RC7 | 2022-10-10 | Jimmy Fridh | Versionsuppdatering för att matcha andra ändrade dokument. |
| 4.0 | - | 2022-10-31 | Jimmy Fridh | Fastställd version. |
| 4.0.1 | - | 2023-01-20 | Jimmy Fridh | Komplettering av testsviter och självdeklarationer för att domänen ska vara kompatibel med Inera Testmodell 2. / Rättning av SKV Termkod för attribut "referredPersonalIdentity", kap 7.1.29. Från termkod 01308 till 01402. / Rättning av kap 8 listning av historicalRecordsType samt underliggande fält. |
| 4.0.2 | - | 2023-03-10 | Björn Skeppner | Lagt till födelsedatum (dateOfBirth) i profil 1, 2 samt 3. Dvs personens födelsedatum ska synas även om personen har skyddade folkbokföringsuppgifter. / Lagt till förtydligande gällande förekomst av information i kapitel 7.1.54 |
| 4.10 | - | 2024-01-06 | Jimmy Fridh | Lagt in regel om felmeddelande i tjänstekontrakt SearchPersonsForProfileByOrder/Unrestricted om antalet sökträffar överskrider en supporterad maxgräns. |
| 5.0 | RC1 | 2024-02-12 | Björn Skeppner | Uppdaterat TKB efter ny mall. / Ny majorversion p.g.a nya attribut för samordningsnummer och aktör. / Borttagna attribut: / givenName.attested (Fornamn-styrkt) / middleName.attested (Mellamnamn-styrkt) / surName.attested (Efternamn-styrkt) / placeOfBirthAbroad (FodelseortUtland-styrkt) / citizenshipCountryCode.attested (MedborgarskapslandKod-styrkt) / Tillagt: / IdentityLevel (identitetsnivå) / IdentityLevelDate (identitetsnivå datum) / updateTime (uppdateringstid) |
| 5.0 | RC2 | 2024-02-22 | Jimmy Fridh | Ny releasekandidat där korrigeringar av namespace gjorts i schemafilerna. |
| 5.0 | - | 2024-03-18 | Jimmy Fridh | Major-version av Personuppgiftstjänsten, med innehåll enligt RC1 och RC2. / Följande förändringar ingår även: / - Byte till ny dokumentmall för TKB / - Namnbyte av REST-tjänst SearchPersonsByFile / - Uppdaterad referenslista / - Rättelse av kardinalitet för attribut relationshipId / - Förtydligande av beskrivning av parameter primaryidentity i tjänst SearchPersonsByFile / - Förtydligande av användandet av attribut versionToUpdate i tjänstekontrakt UpdatePersonContactInformation |
| 5.0.1 | - | 2024-06-04 | Jimmy Fridh | Regeländring för landsangivelse av utlandsadress (attributet countryCode i gruppen AddressAbroadType) för reservidentiteter. Ingen ändring i scheman. |
| 5.1 | RC1 | 2024-10-25 | Jimmy Fridh | Ny tjänstekontraktversion GetFilesForOrderId v4 för kompatibilitet med domänversion 5. / Korrigering av svar från PU-tjänsten i tjänstekontrakt SearchPersonsForProfileByOrder v5 (samt Unrestricted v5) för att korrekt följa givet schema. |
| 5.1 | - | 2024-11-28 | Jimmy Fridh | Ändringar enligt RC1 ovan, samt korrigering av tillåtna värden för attributen identityStatus samt identityStatusCause (avsnitt 7.1.50) |

#### Referenser

| | | | |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Personuppgifter | Obligatoriskt | Bilaga AB_ strategicresourcemanagement_persons_person.docx |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Informationsspecifikation - / Personuppgifter | Gällande samma domän som denna TKB | IS_ strategicresourcemanagement.persons.person.docx |
| R4 | ISO8601 | ISO8601-standarden för datum- och tidsformat | https://sv.wikipedia.org/wiki/ISO_8601 |
| R5 | RFC3339 | Standard för datum- och tidsformat för internetbaserade protokoll baserat på ISO8601 | https://www.ietf.org/rfc/rfc3339.txt |
| R6 | ISO 3166-1 alpha-2 | Standard för landskod | https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 |
| R7 | Tillämpningsanvisning frågespråk | Anvisning över syntax och sökmöjligheter för via SearchPersonsForProfile | https://inera.atlassian.net/wiki/spaces/PU/pages/3353215428/SimpleQL |
| R8 | RIV Tekniska Anvisningar – Kryptografi | ARK_0036 | http://rivta.se/documents/ARK_0036/ |
| R9 | Regel #11, Logiska fel | RIV Tekniska Anvisningar - Tjänsteschema 2.1 | http://rivta.se/documents/ARK_0005/ |
| R10 | Styrande dokument Personuppgiftstjänsten | Översiktlig beskrivning av tjänsten. | Avtal om kundens användning av Personuppgiftstjänsten |
| R11 | Verksamhetsramverk för personens meddelanden | Stödjande dokument för hantering av kontaktuppgifter | Verksamhetsramverk för användning av personens kontaktuppgifter i Personuppgiftstjänsten för meddelandehantering - PU-tjänsten: Ramverk för aviseringar - Confluence (atlassian.net) |
| R12 | Ramverk för hantering av reservidentiteter | Stödjande dokument för hantering av reservidentiteter samt skyddsmarkerade personuppgifter | https://inera.atlassian.net/wiki/spaces/PNRFHAR/pages/282568677/Ramverk+f+r+hantering+av+reservidentiteter |
| R13 | Formatspecifikation reservidentiteter | Beskrivning format reservidentiteter | https://inera.atlassian.net/wiki/spaces/PU/pages/3353216812/Nationellt+Reservid |
| R14 | Beskrivning hämta personuppgifter baserat på en infil av personidentiteter | Beskrivning av funktionen | https://inera.atlassian.net/wiki/spaces/PU/pages/3353215446/REST-tj+nster+f+r+filhantering |
| R15 | Skatteverkets vägledning för hantering av sekretessmarkerade personuppgifter i offentlig förvaltning | Handledning för hantering av personer med skyddade folkbokföringsuppgifter | https://skatteverket.se/offentligaaktorer/folkbokforing/vagledningforoffentligaaktorershanteringavskyddadepersonuppgifter.4.18e1b10334ebe8bc80002541.html |

#### Förkortningar

| | | |
| :--- | :--- | :--- |
| NAVET | Tjänst för att tillgängliggöra folkbokföringsuppgifter till myndigheter | - |
| PU-tjänst | Personuppgiftstjänst | - |
| PNR | Personnummer enligt Skatteverkets definition | - |
| SNR | Samordningsnummer enligt Skatteverkets definition | - |
| RID | Förkortning för lokal reservidentitet eller nationell reservidentitet (se nedan). ) används då det inte finns en entydigt identitet på en individ (saknar PNR/SNR) | - |
| LRID | Lokal reservidentitet (ofta benämnd som reservnummer) | - |
| NRID | Nationell reservidentitet. En reservidentitet som kan tas ut från den nationella PU-instansen. Syftar till att användas i samverkan mellan organisationer. | - |

#### Kompletterande dokument i källan

| | |
| :--- | :--- |
| Arkitekturella beslut – Personuppgifter (referens R1) | [AB_strategicresourcemanagement_persons_person.docx](AB_strategicresourcemanagement_persons_person.docx) |
| Informationsspecifikation – Personuppgifter (referens R3) | [IS_strategicresourcemanagement_persons_person.docx](IS_strategicresourcemanagement_persons_person.docx) |
| Release notes | [Release_notes.pdf](Release_notes.pdf) |
| Informationsmodell PU, reservnummer, kontaktuppgifter och aviseringsväg (bild i arbetsmaterialet) | [Informationsmodell_PU_reservnummer_kontaktuppgifter_aviseringsvag.png](Informationsmodell_PU_reservnummer_kontaktuppgifter_aviseringsvag.png) |

Självdeklarationer och XML-exempel finns under respektive kontrakt i avsnitt 7. Källan innehåller även Visual Paradigm-modeller, ett Visio-sekvensdiagram, en PowerPoint-presentation om styrkt identitet (`docs/work_material/`) och SoapUI-testsviter, som inte publiceras här.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

strategicresourcemanagement: persons: person

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

Underlagförprocesstöd: invånare: personuppgifter

Personuppgiftshantering


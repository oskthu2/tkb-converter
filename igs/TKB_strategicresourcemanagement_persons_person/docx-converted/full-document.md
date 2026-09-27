Personuppgiftstjänsten (Strategicresourcemanegement.persons.person)

![img_005.png](images/img_005.png)

![img_012.png](images/img_012.png)
Innehållsförteckning
1	Inledning	13
1.1	Svenskt namn	13
2	Versionsinformation	14
2.1	Version 5.0	14
2.1.1	Oförändrade tjänstekontrakt	14
2.1.2	Nya tjänstekontrakt	14
2.1.3	Utgångna tjänstekontrakt	16
2.2	Version tidigare	16
3	Tjänstedomänens arkitektur	17
3.1	Flöden	17
3.1.1	Flöde 1: Hämta personuppgifter på personidentitet	17
3.1.2	Flöde 2: Hämta personuppgifter baserat på sökvillkor	18
3.1.3	Flöde 3: Hämta personens kontaktuppgifter	19
3.1.4	Flöde 4: Uppdatera personens kontaktuppgifter	20
3.1.5	Flöde 5: Uttag av ny reservidentitet	21
3.1.6	Flöde 5.a: Uttag av anonym reservidentitet	22
3.1.7	Flöde 6: Uppdatera befintlig reservidentitet	23
3.1.8	Flöde 7: Koppla ihop en identitet med en huvudidentitet	24
3.1.9	Flöde 8: Isärkoppling av kopplade identiteter	25
3.1.10	Flöde 9: Hämtning av personuppgifter utifrån urvalskriterier, asynkront	26
3.1.11	Flöde 10: Hämtning av personuppgifter utifrån en fil innehållande en lista med personidentiteter.	27
3.1.12	Obligatoriska kontrakt	28
3.2	Adressering	28
3.3	Aggregering och engagemangsindex	28
4	Tjänstedomänens krav och regler	29
4.1	Informationssäkerhet och juridik	29
4.1.1	Allmänt om informationen inom domänen	29
4.1.2	Grundläggande lagstöd och personuppgiftsansvar	29
4.1.3	Sekretessmarkerade personuppgifter samt Skyddad folkbokföring (Skyddade personuppgifter)	30
4.1.4	Krav på tjänstekonsumenten	30
4.1.5	Krav på tjänsteproducenten	30
4.1.6	Konfidentialitet	31
4.2	Icke funktionella krav	32
4.2.1	SLA krav	32
4.2.2	Övriga krav	32
4.3	Felhantering	32
4.3.1	Krav på en tjänsteproducent	32
4.3.2	Krav på en tjänstekonsument	33
5	Tjänstedomänens meddelandemodeller	34
5.1	V-MIM	34
5.2	Formatregler	34
5.2.1	Personidentitet	34
5.2.2	Datum	34
5.2.3	Datum och Tid	34
5.2.4	Tidszon	34
5.2.5	Landskod	35
5.3	Profiler	35
6	Tjänstekontrakt	36
6.1	GetPersonsForProfile	36
6.1.1	Version	36
6.1.2	Fältregler	36
6.1.3	Övriga regler	36
6.1.4	Annan information om kontraktet	37
6.2	GetPersonsForProfileUnrestricted	38
6.2.1	Version	38
6.2.2	Fältregler	38
6.2.3	Övriga regler	38
6.3	SearchPersonsForProfile	39
6.3.1	Version	39
6.3.2	Fältregler	39
6.3.3	Övriga regler	40
6.3.4	Annan information om kontraktet	40
6.4	SearchPersonsForProfileUnrestricted	41
6.4.1	Version	41
6.4.2	Fältregler	41
6.4.3	Övriga regler	41
6.4.4	Annan information om kontraktet	41
6.5	SearchPersonsForProfileByOrder	42
6.5.1	Version	42
6.5.2	Fältregler	42
6.5.3	Övriga regler	43
6.5.4	Annan information om kontraktet	43
6.6	SearchPersonsForProfileByOrderUnrestricted	44
6.6.1	Version	44
6.6.2	Fältregler	44
6.6.3	Övriga regler	44
6.6.4	Annan information om kontraktet	44
6.7	GetFilesForOrderId	45
6.7.1	Version	45
6.7.2	Fältregler	45
6.7.3	Övriga regler	45
6.7.4	Annan information om kontraktet	46
6.8	GetPersonContactInformation	47
6.8.1	Version	47
6.8.2	Fältregler	47
6.8.3	Övriga regler	48
6.8.4	Annan information om kontraktet	48
6.9	GetPersonContactInformationUnrestricted	49
6.9.1	Version	49
6.9.2	Fältregler	49
6.9.3	Övriga regler	49
6.9.4	Annan information om kontraktet	49
6.10	UpdatePersonContactInformation	50
Version	50
Fältregler	50
6.10.1	Övriga regler	51
6.10.2	Annan information om kontraktet	52
6.11	UpdatePersonContactInformationUnrestricted	53
6.11.1	Version	53
6.11.2	Fältregler	53
6.11.3	Övriga regler	53
6.11.4	Annan information om kontraktet	54
6.12	UpdatePerson	55
6.12.1	Version	55
6.12.2	Fältregler	55
6.12.3	Övriga regler	56
6.12.4	Annan information om kontraktet	57
6.13	LinkPersonIdentity	58
6.13.1	Version	58
6.13.2	Fältregler	58
6.13.3	Övriga regler	59
6.13.4	Annan information om kontraktet	60
6.14	UnlinkLinkPersonIdentity	61
6.14.1	Version	61
6.14.2	Fältregler	61
6.14.3	Övriga regler	62
6.14.4	Annan information om kontraktet	62
6.15	GetPersonsByFile	63
6.15.1	Version	63
6.15.2	Fältregler	63
6.15.3	Övriga regler	65
6.15.4	Annan information om kontraktet	65
7	Datatyper	66
7.1	Datatyper från namnrymd urn:riv:strategicresourcemanagement:persons:person:5	66
7.1.1	urn:riv:strategicresourcemanagement:persons:person:5:ActorType	66
7.1.2	urn:riv:strategicresourcemanagement:persons:person:5:AddressAbroadType	67
7.1.3	urn:riv:strategicresourcemanagement:persons:person:5:AddressInformationType	67
7.1.4	urn:riv:strategicresourcemanagement:persons:person:5:AddressPlaceId	67
7.1.5	urn:riv:strategicresourcemanagement:persons:person:5:AdministrativeInformationType	68
7.1.6	urn:riv:strategicresourcemanagement:persons:person:5:ApartmentId	68
7.1.7	urn:riv:strategicresourcemanagement:persons:person:5:BirthType	69
7.1.8	urn:riv:strategicresourcemanagement:persons:person:5:BirthAbroadType	69
7.1.9	urn:riv:strategicresourcemanagement:persons:person:5:CitizenshipType	69
7.1.10	urn:riv:strategicresourcemanagement:persons:person:5:CodedValue	70
7.1.11	urn:riv:strategicresourcemanagement:persons:person:5:ConfirmedIdentityType	71
7.1.12	urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationType	71
7.1.13	urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationRecordType	73
7.1.14	urn:riv:strategicresourcemanagement:persons:person:5:ContactPersonType	73
7.1.15	urn:riv:strategicresourcemanagement:persons:person:5:CountryCode	74
7.1.16	urn:riv:strategicresourcemanagement:persons:person:5:DatePeriodType	74
7.1.17	urn:riv:strategicresourcemanagement:persons:person:5:DateTypeFormatType	74
7.1.18	urn:riv:strategicresourcemanagement:persons:person:5:DeregistrationType	75
7.1.19	urn:riv:strategicresourcemanagement:persons:person:5:DistrictType	75
7.1.20	urn:riv:strategicresourcemanagement:persons:person:5:DistrictCode	75
7.1.21	urn:riv:strategicresourcemanagement:persons:person:5:FictitiousPropertyNumber	75
7.1.22	urn:riv:strategicresourcemanagement:persons:person:5:GivenNameIndicator	75
7.1.23	urn:riv:strategicresourcemanagement:persons:person:5:HistoricalRecordsType	76
7.1.24	urn:riv:strategicresourcemanagement:persons:person:5:IIType	76
7.1.25	urn:riv:strategicresourcemanagement:persons:person:5:ImmigrationType	76
7.1.26	urn:riv:strategicresourcemanagement:persons:person:5:ImmigrationIdentityType	77
7.1.27	urn:riv:strategicresourcemanagement:persons:person:5:LinkedIdentityType	77
7.1.28	urn:riv:strategicresourcemanagement:persons:person:5:ReferredPersonalIdentityType	78
7.1.29	urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType	79
7.1.30	urn:riv:strategicresourcemanagement:persons:person:5:MaritalStatusType	79
7.1.31	urn:riv:strategicresourcemanagement:persons:person:5:MultimediaType	80
7.1.32	urn:riv:strategicresourcemanagement:persons:person:5:NameType	80
7.1.33	urn:riv:strategicresourcemanagement:persons:person:5:NationalKeysType	81
7.1.34	urn:riv:strategicresourcemanagement:persons:person:5:UUIDType	81
7.1.35	urn:riv:strategicresourcemanagement:persons:person:5:NotificationCaseType	81
7.1.36	urn:riv:strategicresourcemanagement:persons:person:5:OrderId	82
7.1.37	urn:riv:strategicresourcemanagement:persons:person:5:PartialDateType	82
7.1.38	urn:riv:strategicresourcemanagement:persons:person:5:PartialDateValue	82
7.1.39	urn:riv:strategicresourcemanagement:persons:person:5:PersonRecordType	83
7.1.40	urn:riv:strategicresourcemanagement:persons:person:5:PersonalIdentityNumber	84
7.1.41	urn:riv:strategicresourcemanagement:persons:person:5:PlaceOfBirthSwedenType	85
7.1.42	urn:riv:strategicresourcemanagement:persons:person:5:PopulationRegistrationLocalityType	85
7.1.43	urn:riv:strategicresourcemanagement:persons:person:5:PopulationRegistrationRecordType	85
7.1.44	urn:riv:strategicresourcemanagement:persons:person:5:PostalCode	86
7.1.45	urn:riv:strategicresourcemanagement:persons:person:5:ProfessionalType	86
7.1.46	urn:riv:strategicresourcemanagement:persons:person:5:PropertyId	86
7.1.47	urn:riv:strategicresourcemanagement:persons:person:5:RecordId	86
7.1.48	urn:riv:strategicresourcemanagement:persons:person:5:RelationshipType	88
7.1.49	urn:riv:strategicresourcemanagement:persons:person:5: CoOrdinationNumberDataType	88
7.1.50	urn:riv:strategicresourcemanagement:persons:person:5: PersonalIdentityStatusType	89
7.1.51	urn:riv:strategicresourcemanagement:persons:person:5:RelationshipIdType	90
7.1.52	urn:riv:strategicresourcemanagement:persons:person:5:RequestedPersonRecordType	90
7.1.53	urn:riv:strategicresourcemanagement:persons:person:5:ResidentialAddressType	90
7.1.54	urn:riv:strategicresourcemanagement:persons:person:5:ResidentialAddressType	91
7.1.55	urn:riv:strategicresourcemanagement:persons:person:5:ResultType	91
7.1.56	urn:riv:strategicresourcemanagement:persons:person:5:ResultCodeType	91
7.1.57	urn:riv:strategicresourcemanagement:persons:person:5:String2	92
7.1.58	urn:riv:strategicresourcemanagement:persons:person:5:String40	92
7.1.59	urn:riv:strategicresourcemanagement:persons:person:5:String80	92
7.1.60	urn:riv:strategicresourcemanagement:persons:person:5:Timestamp	92
7.1.61	urn:riv:strategicresourcemanagement:persons:person:5: UpdatePersonContactInformationResultType	92
7.1.62	urn:riv:strategicresourcemanagement:persons:person:5:UpdatePersonResultType	93
8	Aktuella profiler	94
Revisionshistorik

| Version | Revision | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- | :--- |
| 2.0 | 0.1 | 2016-01-25 | Daniel Fjällström, CGI | Första utkast |
| 2.0 | 0.2 | 2016-01-28 | Daniel Fjällström, CGI | Uppdateringar |
| 2.0 | 0.3 | 2016-02-01 | Daniel Fjällström, CGI | Uppdateringar |
| 2.0 | RC1 | 2016-02-11 | Daniel Fjällström, CGI | Uppdateringar efter granskning från Khaled |
| 2.0 | RC2 | 2016-02-29 | Per Mützell | Uppdateringar efter granskning Inera A&R:
Kap 4.3 Felhantering / Ändrat till enbart tekniska fel via SOAP faults för läsande tjänst. / Övriga uppdateringar: / 7.1.21 ImmigrationIdentity
förbättrad struktur, landskodning. / 7.1.3 Address namnbyte till AddressInformation / Gender borttagen (används ej) |
| 2.0 | RC3 | 2016-04-22 | Per Mützell | protectedPersonIndicator: obligatorisk (tidigare optionell). / testIndicator: obligatorisk (tidigare optionell).
referredPersonalIdentityNumber  byter  namn till: referredPersonalIdentity. / searchDate byter  namn till notificationDate. / Dokumentationsändringar: / 2.1.3 	Förtydligande vilket äldre kontrakt som ersätts. / 3.1.1.2. 	Justering sekvensdiagram (enligt granskningsprotokoll). / 4.1 Informationssäkerhet och juridik, justerad. / 4.2.1 Justerat krav för last. / 5.1 Uppdaterad V-MIM enligt ovan.
8. 	Förtydligande  vilka attribut som levereras vid sekretessmarkering / 7.1.29 searchDate, uppdaterad beskrivning
7.1.29 modificationTime, uppdaterad beskrivning / 7.1.34 maritalStatus, rättad felstavning |
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
| 3.1 | RC3 | 2018-11-20 | Björn Skeppner | Justerat efter nya attribut från SKV (Skyddad folkbokföring (protectedPopulationRecord) & Anträffad död (datum) (FoundDeadAtDate).
Har även lagt till regel #4 i GetPersonsForProfile samt ändrat tabellen 2.1.3 |
| 3.1 | RC4 | 2018-11-29 | Björn Skeppner | UpdatePerson påverkas av uppdaterad deRegistrationType. Justerat |
| 3.1.1 | - | 2019-04-08 | Björn Skeppner | Lagt till nya kontrakt som möjliggör åtkomst till personuppgifter som har sekretessmarkering, genom Get/SearchUnrestrictedXxxx. Nya regler tillagda på uppdaterande kontrakt gällande attributet versionToUpdate |
| 3.2 | RC1 | 2019-08-16 | Björn Skeppner | Lagt till ny komplex typ, UUID under klass AddressInformationType |
| 3.2.1 | RC1 | 2019-10-09 | Björn Skeppner | Justerat/rättat versionsnummer på några kontrakt & tabellen för kompabilitet |
| 3.2.1 | RC2 | 2019-10-10 | Björn Skeppner | P.g.a tidigare arv så har 1.0 och 1.1-versionerna ändrats till 3.2 resp 3.2 |
| 3.2.1 | RC3 | 2019-10-14 | Björn Skeppner | Justerat Profiltabellen (digitalNotification) saknades för kontaktperson |
| 3.2.1 | - | 2019-10-17 | Björn Skeppner | Infört rättningar och rättningskommentarer i följande schemafiler:
UpdatePersonContactInformationUnrestricted_3.1 / -Bugg rättat i schemafilen. Kontraktet har aldrig byggts, så kontraktets versionsnummer kvarstår därför. / -UpdatePersonContactInformation / Har en dubbelimport av core och ext-schema som f.n anses vara onödig, men är infört tillsvidare p.g.a att applikationsförvaltaren får fel vid bygget annars. / -UpdatePersonContactInformationUnrestricted_3.1 / Se kommentar ovan. / 4.3.1.2 samt 4.3.2.2 Texten Soap Exception ändrats till Soap Fault. |
| 3.2.2 | RC1 | 2019-12-04 | Björn Skeppner | Förbättrad viss text för ökad läsbarhet och förståelse, enligt inkomna kommentarer. |
| 3.3 | RC1 | 2021-03-05 | Björn Skeppner | Lagt till landskod för vem som utfärdat identitetshandlingen (reservidentitet). Lagt till Utlandsadress som möjlig class för reservidentitet. Uppdaterat länkar till referenser. Några små textjusteringar. |
| 3.3 | RC2 | 2021-03-05 | Björn Skeppner | Ändrat tillbaka SearchPersonsForProfileByOrder & SearchPersonsForProfileByOrderUnrestricted till 3.2 då det rent tekniskt ej har skett någon förändring med dem |
| 3.3 | - | 2021-03-16 | Björn Skeppner | Ändrat versionsnumret från 3.3_RC2 till 3.3 |
| 3.3.1 | - | 2021-04-09 | Björn Skeppner | Uppdaterat versionsnumret pga uppdaterad domänversion |
| 3.3.2 | RC1 | 2021-04-19 | Björn Skeppner | Uppdaterat kap 7.1.50 vad gäller statuskod för relationsperson med ett förtydligande. |
| 3.3.2 | RC2 | 2021-06-09 | Björn Skeppner | Uppdaterat kap 4 gällande krav på konsument kring hanteringen av kopplade personidentiteter som har en sekretessmarkering/skyddad folkbokföring. / Även uppdatering på format för telefonnummer och mail (kap 7.1.13). |
| 4.0 | RC1 | 2021-11-05 | Björn Skeppner | Uppdaterad majorversion till 4.0.
Uppdateringar enligt förändringar i Navet: / Klasserna Samordningsnummeruppgift, Hänvisningar, Identitetsstatus tillagda. / Avregistreringskoderna AS(Avslutad) och GS (Gammalt samordningsnummer) i klassen Avregistrering borttagna. / Övrigt: / Korrigerat dokumentet efter senaste mallen (från 2019-05-28): Kapitel 5 och 6, 8. / Klassen Historik har utökats med  attributen ”registreringstidpunkt” och ”tidpunkt då nyare historisk post finns”. |
| 4.0 | RC1 | 2021-11-08 | Björn Skeppner | Ändrat datumtypen för klassen coOrdinationNumberDataType |
| 4.0 | RC1 | 2021-12-03 | Björn Skeppner | Diverse textuella förbättringar efter inkomna synpunkter |
| 4.0 | RC1 | 2022-03-23 | Björn Skeppner | Ändrat versionsnummer på SearchByOrder-kontrakten från 3.2 till 4.0. Detta eftersom det resultat man får GetFilesForOrderId då skiljer sig (xml-filen) skiljer sig från tidigare SearchByOrder-kontrakt. Även lagt till beskrivning av REST-kontraktet SearchPersonsByFile. |
| 4.0 | RC2 | 2022-04-04 | Jimmy Fridh | Uppdateringar efter I-granskning (VITS-kontroll) |
| 4.0 | RC4 | 2022-04-12 | Jimmy Fridh | Uppdateringar efter I-granskning (VITS-kontroll): Tomma celler |
| 4.0 | RC5 | 2022-04-25 | Jimmy Fridh | Versionsuppdatering för att matcha andra uppdaterade dokument. |
| 4.0 | RC6 | 2022-10-05 | Björn Skeppner | Versionsuppdatering för att matcha andra uppdaterade dokument. |
| 4.0 | RC7 | 2022-10-10 | Jimmy Fridh | Versionsuppdatering för att matcha andra ändrade dokument. |
| 4.0 | - | 2022-10-31 | Jimmy Fridh | Fastställd version. |
| 4.0.1 | - | 2023-01-20 | Jimmy Fridh | Komplettering av testsviter och självdeklarationer för att domänen ska vara kompatibel med Inera Testmodell 2. 
Rättning av SKV Termkod för attribut "referredPersonalIdentity", kap 7.1.29. Från termkod 01308 till 01402.
Rättning av kap 8 listning av historicalRecordsType samt underliggande fält. |
| 4.0.2 | - | 2023-03-10 | Björn Skeppner | Lagt till födelsedatum (dateOfBirth) i profil 1, 2 samt 3. Dvs personens födelsedatum ska synas även om personen har skyddade folkbokföringsuppgifter. / Lagt till förtydligande gällande förekomst av information i kapitel 7.1.54 |
| 4.10 | - | 2024-01-06 | Jimmy Fridh | Lagt in regel om felmeddelande i tjänstekontrakt SearchPersonsForProfileByOrder/Unrestricted om antalet sökträffar överskrider en supporterad maxgräns. |
| 5.0 | RC1 | 2024-02-12 | Björn Skeppner | Uppdaterat TKB efter ny mall. / Ny majorversion p.g.a nya attribut för samordningsnummer och aktör. / Borttagna attribut: 
givenName.attested (Fornamn-styrkt) / middleName.attested (Mellamnamn-styrkt) / surName.attested (Efternamn-styrkt) / placeOfBirthAbroad (FodelseortUtland-styrkt) / citizenshipCountryCode.attested (MedborgarskapslandKod-styrkt) / Tillagt: / IdentityLevel (identitetsnivå) / IdentityLevelDate (identitetsnivå datum) / updateTime (uppdateringstid) |
| 5.0 | RC2 | 2024-02-22 | Jimmy Fridh | Ny releasekandidat där korrigeringar av namespace gjorts i schemafilerna. |
| 5.0 | - | 2024-03-18 | Jimmy Fridh | Major-version av Personuppgiftstjänsten, med innehåll enligt RC1 och RC2. / Följande förändringar ingår även: / - Byte till ny dokumentmall för TKB / - Namnbyte av REST-tjänst SearchPersonsByFile / - Uppdaterad referenslista / - Rättelse av kardinalitet för attribut relationshipId / - Förtydligande av beskrivning av parameter primaryidentity i tjänst SearchPersonsByFile / - Förtydligande av användandet av attribut versionToUpdate i tjänstekontrakt UpdatePersonContactInformation |
| 5.0.1 | - | 2024-06-04 | Jimmy Fridh | Regeländring för landsangivelse av utlandsadress (attributet countryCode i gruppen AddressAbroadType) för reservidentiteter. Ingen ändring i scheman. |
| 5.1 | RC1 | 2024-10-25 | Jimmy Fridh | Ny tjänstekontraktversion GetFilesForOrderId v4 för kompatibilitet med domänversion 5.
Korrigering av svar från PU-tjänsten i tjänstekontrakt SearchPersonsForProfileByOrder v5 (samt Unrestricted v5) för att korrekt följa givet schema. |
| 5.1 | - | 2024-11-28 | Jimmy Fridh | Ändringar enligt RC1 ovan, samt korrigering av tillåtna värden för attributen identityStatus samt identityStatusCause (avsnitt 7.1.50) |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Personuppgifter | Obligatoriskt | Bilaga AB_ strategicresourcemanagement_persons_person.docx |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Informationsspecifikation -
Personuppgifter | Gällande samma domän som denna TKB | IS_ strategicresourcemanagement.persons.person.docx |
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
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| NAVET | Tjänst för att tillgängliggöra folkbokföringsuppgifter till myndigheter | - |
| PU-tjänst | Personuppgiftstjänst | - |
| PNR | Personnummer enligt Skatteverkets definition | - |
| SNR | Samordningsnummer enligt Skatteverkets definition | - |
| RID | Förkortning för lokal reservidentitet eller nationell reservidentitet (se nedan). ) används då det inte finns en entydigt identitet på en individ (saknar PNR/SNR) | - |
| LRID | Lokal reservidentitet (ofta benämnd som reservnummer) | - |
| NRID | Nationell reservidentitet. En reservidentitet som kan tas ut från den nationella PU-instansen. Syftar till att användas i samverkan mellan organisationer. | - |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
strategicresourcemanagement: persons: person
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Underlagförprocesstöd: invånare: personuppgifter
Personuppgiftshantering

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen strategicresourcemanagement: persons: person.
Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 5.0

#### Oförändrade tjänstekontrakt
GetFilesForOrderId, version 3.0

#### Nya tjänstekontrakt
GetPersonsByFile, version 1. Ersätter SearchPersonsByFile.

##### Förändrade tjänstekontrakt
LinkPersonIdentity, version 4.0
UnlinkPersonIdentity, version 4.0
UpdatePersonContactInformation, version 4.0
UpdatePersonContactInformationUnrestricted, version 4.0
GetPersonContactInformation, version 4.0
GetPersonContactInformationUnrestricted, version 4.0
GetPersonForProfile, version 5.0
GetPersonForProfileUnrestricted, version 5.0
SearchPersonsForProfile, version 5.0
SearchPersonsForProfileUnrestricted, version 5.0
SearchPersonsForProfileByOrder, version 5.0
SearchPersonsForProfileByOrderUnrestricted, version 5.0
UpdatePerson, version 5.0
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| LinkPersonIdentity, 
UnlinkPersonIdentity | 3.x | 4.x | EJ kompatibel |
|  | 4.x | 3.x | EJ kompatibel |
| UpdatePersonContactInformation,
UpdatePersonContactInformationUnrestricted | 3.x | 4.x | EJ kompatibel |
|  | 4.x | 3.x | EJ kompatibel |
| GetPersonContactInformation,
GetPersonContactInformationUnrestricted | 3.x | 4.x | EJ kompatibel |
|  | 4.x | 3.x | EJ kompatibel |
| GetPersonForProfile,
GetPersonForProfileUnrestricted | 4.x | 5.x | EJ kompatibel |
|  | 5.x | 4.x | EJ kompatibel |
| SearchPersonsForProfile,
SearchPersonsForProfileUnrestricted | 4.x | 5.x | EJ kompatibel |
|  | 5.x | 4.x | EJ kompatibel |
| SearchPersonsForProfileByOrder,
SearchPersonsForProfileByOrderUnrestricted | 4.x | 5.x | EJ kompatibel |
|  | 5.x | 4.x | EJ kompatibel |
| UpdatePerson, | 4.x | 5.x | EJ kompatibel |
|  | 5.x | 4.x | EJ kompatibel |

#### Utgångna tjänstekontrakt
SearchPersonsByFile, version 2, byts ut mot GetPersonsByFile. I detta byte inkluderas både infört stöd för nuvarande tjänstedomän samt att REST-tjänsten bytt namn.

### Version tidigare
Se kapitel 2.1

## Tjänstedomänens arkitektur
Tjänstedomänen hanterar uppgifter om person som dels finns registrerade i folkbokföringsregistret hos Skatteverket, dels har tillkommit genom uttagande av reservidentiteter, dels har tillkommit genom personens egna kompletteringar kring kontaktuppgifter.

### Flöden

#### Flöde 1: Hämta personuppgifter på personidentitet
Nedanstående diagram visar hur man kan hämta personuppgifter på en eller flera personer utifrån deras reservidentiteter, personnummer eller samordningsnummer.

##### Arbetsflöde
Se Informationsspecifikation, punkt 4.2.1.

###### Roller
Verksamhetspersonal

##### Sekvensdiagram
Hämta personuppgifter utifrån en eller flera personidentitet(er) via GetPersonsForProfile alternativt GetPersonForProfileUnrestricted

![img_004.png](images/img_004.png)

#### Flöde 2: Hämta personuppgifter baserat på sökvillkor
Nedanstående diagram visar hur man kan hämta personuppgifter på en eller flera personer utifrån specifika sökvillkor. Exempelvis söka på personer utifrån ett förnamn och efternamn.

##### Arbetsflöde
Se Informationsspecifikation, punkt 4.2.2

###### Roller
Verksamhetspersonal

##### Sekvensdiagram
Hämta personuppgifter utifrån en eller flera personidentitet(er) via GetPersonsForProfile alternativt GetPersonForProfileUnrestricted

![img_010.jpg](images/img_010.jpg)

#### Flöde 3: Hämta personens kontaktuppgifter
När vården har anledning att kontakta personen eller anhörig, så nyttjas ofta de olika kontaktuppgifter som finns registrerade i vårdens IT-system (på det s.k. ”patientkortet”).
Nedanstående flöde visar flödet för hämtning av personens kontaktuppgifter.

##### Arbetsflöde
Se Informationsspecifikation, punkt 4.2.3.

###### Roller
Verksamhetspersonal

##### Sekvensdiagram
Hämta kontaktuppgifter via GetPersonContactInformation alternativt GetPersonContactInformationUnrestricted

![img_009.jpg](images/img_009.jpg)
Sekvensen är densamma för GetPersonContactInformationUnrestricted.

#### Flöde 4: Uppdatera personens kontaktuppgifter
När vården har anledning att kontakta personen eller anhörig, så nyttjas ofta de olika kontaktuppgifter som finns registrerade i vårdens IT-system (på det s.k. ”patientkortet”).
Nedanstående flöde visar flödet för uppdatering av personens kontaktuppgifter.

##### Arbetsflöde
Se Informationsspecifikation, punkt 4.2.4.

###### Roller
Verksamhetspersonal

##### Sekvensdiagram

![img_006.jpg](images/img_006.jpg)
För en uppdatering av personens kontaktuppgifter ska alltid en läsning föregå uppdateringen. Läsningen kan antingen ske via GetPersonContactInformation eller GetPerson, eller via motsvarade unrestricted kontrakt. Vid användning av GetPersonForProfile/GetPersonForProfileUnrestricted så måste minst profil 3 användas.

#### Flöde 5: Uttag av ny reservidentitet
Ibland har man behov av att kunna registrera uppgifter, t.ex journalföra på en person vars identitet ej är känd med ett svenskt person- eller samordningsnummer (PNR/SNR). T.ex när en medvetslös person kommer in på en akutmottagning. För dessa tillfällen använder man sig oftast av en temporär identitet, en reservidentitet.
Nedanstående flöde visar flödet för uttag av en nationell reservidentitet (NRID) till en person. Flödet är även detsamma för att registrera en person på en lokal reservidentitet (LRID).

##### Arbetsflöde
Se Informationsspecifikation, punkt 4.2.5.

###### Roller
Verksamhetspersonal

##### Sekvensdiagram

![img_013.jpg](images/img_013.jpg)

#### Flöde 5.a: Uttag av anonym reservidentitet
Ibland har man behov av att kunna ta ut en ”anonymiserad” reservidentitet, dvs en identitet som varken avslöjar kön eller ålder. Detta kan göras genom att man anropar tjänsten UpdatePerson utan att ange några uppgifter kring ålder & kön. Tjänsten returnerar i detta fall då en identitet som ej innehåller uppgifter kring personen. För att sen tillföra uppgifter kring denna anonymiserade identitet ska detta göras i ett senare steg (se diagrammet nedan, ”Komplettera med personuppgifter”)

##### Arbetsflöde
Se Informationsspecifikation, punkt 4.2.5.

###### Roller
Verksamhetspersonal

##### Sekvensdiagram

![img_003.jpg](images/img_003.jpg)

#### Flöde 6: Uppdatera befintlig reservidentitet
Nedanstående flöde visar flödet för uppdatering av en nationell reservidentitet (NRID) eller en lokal reservidentitet (LRID).

##### Arbetsflöde
Se Informationsspecifikation, punkt 4.2.6.

###### Roller
Verksamhetspersonal

##### Sekvensdiagram
UpdatePerson

![img_011.jpg](images/img_011.jpg)
För en uppdatering av persons reservidentitet ska alltid en läsning med minst profil 4 föregå uppdateringen.

#### Flöde 7: Koppla ihop en identitet med en huvudidentitet
Kopplingen avser att man kopplar en befintlig identitet till en huvudidentitet. T.ex att koppla ihop en reservidentitet till ett personnummer.

##### Arbetsflöde
Se Informationsspecifikation, punkt 4.2.7.

###### Roller
Verksamhetspersonal

##### Sekvensdiagram
LinkPersonIdentity

![img_008.jpg](images/img_008.jpg)
En koppling mellan en identitet till en huvudidentitet ska normalt ske utifrån ett underlag som användaren har som beslutsunderlag. Dvs genom att en koppling föregås av en hämtning av uppgifter kring de olika identiteterna bereds aktören möjligheten att jämföra namn, adress etc.
Not: För Get-kontrakten kan även GetPersonForProfileUnrestricted-kontraktet användas.

#### Flöde 8: Isärkoppling av kopplade identiteter
För att stödja fallet då en felkoppling av identiteter har gjorts så finns kontraktet UnlinkPersonIdentity.
Nedanstående flöde visar flödet för isärkoppling av identitet mot huvudidentitet.

##### Arbetsflöde
Se informationsspecifikation, punkt 4.2.8

###### Roller
Verksamhetspersonal

##### Sekvensdiagram
UnlinkPersonIdentity

![img_007.jpg](images/img_007.jpg)
Isärkoppling av en identitet från en huvudidentitet ska ske utifrån ett beslutsunderlag, där användaren ges möjlighet att granska uppgifterna för både huvudidentiteten och den kopplade identiteten.
OBS! Vid anropet till GetPersonForProfile behöver flaggan ”ignoreReferredIdentity” vara satt till true, annars erhålls personuppgifter till huvudidentiteten även för den identitet man vill isärkoppla.
Not: För läsning kan även GetPersonForProfilesUnrestricted användas.

#### Flöde 9: Hämtning av personuppgifter utifrån urvalskriterier, asynkront
Nedanstående flöde visar flödet för hur ett angivande av urvalrskriterier (sökparamterar) resulterar i ett asynkront svar där resultatet levereras som en unik orderidentitet (orderId) som sen används av konsumenten vid anrop till en annan tjänst, GetFilesForOrderId, där resultatet av sökningen hämtas.

##### Arbetsflöde
Se informationsspecifikation, punkt 4.2.2

###### Roller
Verksamhetspersonal

##### Sekvensdiagram
SearchPersonsForProfileByOrder (alternativt SearchPersonsForProfileByOrderUnrestricted)

![img_014.jpg](images/img_014.jpg)
Tjänstekonsumenten kan behöva loopa anropet till GetFilesForOrderId beroende på producentens eventuella bearbetningstid. Reslutatet från GetFilesForOrderId är 0..n URL:er som sedan används för att hämta sökresultatet.

#### Flöde 10: Hämtning av personuppgifter utifrån en fil innehållande en lista med personidentiteter.
Nedanstående flöde visar hur man genom att till Personuppgiftstjänsten via en REST-tjänst kan skicka in en fil med en lista med personidentiteter. I slutändan erhålls 1..n URL:er  till zippade filer med personuppgifter baserat på de personidentiteter som bifogades i filen. Genom att i anropet ange önskad profil så erhålls i svaret olika mycket detaljerade personuppgifter.

##### Arbetsflöde
Se informationsspecifikation, 4.2.1

###### Roller
Verksamhetspersonal

##### Sekvensdiagram
GetPersonsByFile (REST) Hämta personuppgifter utifrån en fil med personidentiteter, se R[14]

![img_002.png](images/img_002.png)
Tjänstekonsumenten kan behöva loopa anropet till GetFilesForOrderId beroende på producentens eventuella bearbetningstid. Resultatet från GetFilesForOrderId är 0..n URL:er som sedan används för att hämta sökresultatet.

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt |  |  | Flöde 1 | Flöde 2 | Flöde 3 | Flöde 4 | Flöde 5 | Flöde 6 | Flöde 7 | Flöde 8 | Flöde 9 | Flöde 10 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| GetPersonForProfile,
(GetPersonForProfileUnrestricted) |  |  | X |  |  |  |  | X | X | X |  |  |
| SearchPersonsForProfile,
(SearchPersonsForProfileUnrestricted) |  |  |  | X |  |  |  |  |  |  |  |  |
| GetPersonContactInformation,
(GetPersonContactInformationUnrestricted) |  |  |  |  | X | X |  |  |  |  |  |  |
| UpdatePersonContactInformation |  |  |  |  |  | X |  |  |  |  |  |  |
| UpdatePerson |  |  |  |  |  |  | X | X |  |  |  |  |
| LinkPersonIdentity |  |  |  |  |  |  |  |  | X |  |  |  |
| UnlinkPersonIdentity |  |  |  |  |  |  |  |  |  | X |  |  |
| SearchPersonsForProfileByOrder,
SearchPersonsForProfileByOrderUnrestricted |  |  |  |  |  |  |  |  |  |  | X |  |
| GetFilesForOrderId |  |  |  |  |  |  |  |  |  |  | X | X |
| GetPersonsByFile (REST) |  |  |  |  |  |  |  |  |  |  |  | X |

### Adressering
Den logiska adressen för Ineras nationella PU-tjänst är Ineras nationella HSA-id SE165565594230-1000.

### Aggregering och engagemangsindex
Ej tillämpbart för denna tjänstedomän.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
I informationsspecifikationen [R3] beskrivs de lagar och regler som är tillämpliga för informationen i domänen.
I detta dokument ges här endast en kort sammanfattning.

#### Allmänt om informationen inom domänen
Tjänsterna i domänen tillhandahåller information från bakomliggande datakälla (Folkbokföringsregistret), vilken Skatteverket ansvarar för. Domänen omfattar personuppgifter såsom persons reservidentitet, personnummer, samordningsnummer, namn, adress och familjerättsliga förhållanden. Domänen tillhandahåller även personens kompletterande uppgifter såsom kontaktpersoner och kontaktuppgifter.
Informationen i domänen används bland annat för att säkerställa att rätt person har valts i IT-system, komplettera med folkbokfört namn, folkbokförd adress (alternativt särskild postadress), få upplysning om personens eventuella kontaktuppgifter osv.
Uppgifterna är i regel offentliga, men sekretess kan gälla i särskilda fall, se sekretessmarkerade personuppgifter nedan.

#### Grundläggande lagstöd och personuppgiftsansvar
Dataskyddsförordningen (EU 2016/679) styr den grundläggande regleringen av personuppgiftsbehandlingen i Personuppgiftstjänsten. Personuppgiftstjänsten används främst av regioner och andra vårdgivare för administration som rör patienter i samband med hälso- och sjukvård. Se vidare Informationsspecifikationen och tjänstebeskrivningen [R10].
För uppgifter som lagras i Personuppgiftstjänsten (tjänsteproducenten) och som har inhämtats från Navet (Skatteverket) gäller att det den region (huvudman) som beställt uppgifterna (och har avtalet med Skatteverket) är personuppgiftsansvarig. Regionen är normalt personuppgiftsansvarig (PUA) för ”sin” del av befolkningen. I en lösning där flera huvudmän lagrar sin information i gemensam Personuppgiftstjänst som hanteras av personuppgiftsbiträde, åligger det personuppgiftsbiträdet att logiskt separera respektive huvudmans personuppgifter.
För uppgifter som har kompletterats av personen själv, såsom kontaktuppgifter etc så är det normalt den region som personen är folkbokförd i som är PUA.
Åtkomst till uppgifter via tjänstekontrakt sker primärt med stöd av ett elektroniskt utlämnande från Personuppgiftstjänst i form av ett s.k. automatiserat ADB-utlämnande. Utlämnandet bygger på att personuppgiftsansvarig har gjort en prövning av varje enskilt fall baserat på ett i förväg fattat schablonmässigt menprövningsbeslut. Menprövningsbeslutet ska inkludera vad som kan lämnas ut för uppgift som är skyddad.

#### Sekretessmarkerade personuppgifter samt Skyddad folkbokföring (Skyddade personuppgifter)
Personuppgifter kan bli sekretessmarkerade enligt ett regelverk som Skatteverket ansvarar för, vilket då alltid framgår när uppgiften hämtas via tjänster i denna domän, s.k. sekretessmarkering. En person kan även få skyddade folkbokföringsuppgifter (gäller från 2019-01-01). Detta är ett högre skydd än sekretessmarkering och anges med ett separat attribut.
Grundregeln är att i de fall personposten är sekretessmarkerad alternativt skyddad folkbokföring, utelämnas (”blankas”) alla uppgifter i svaret utom de som regionerna beslutat alltid behöver ges tillgång till för att uppfylla patientsäkerhet inom hälso- och sjukvård (se kapitel 8). Det framgår även att posten har skyddade personuppgifter. För åtkomst till sekretessmarkerade uppgifter/skyddad folkbokföring används separata s.k. ”unrestricted-kontrakt”. Se mer under tjänstekontrakt.
Notera dock att personuppgifter kan ha inhämtats tidigare för person som får sekretessmarkering alternativt skyddad folkbokföring. Den organisation som tagit emot uppgifterna måste då ansvara för att skyddet för personuppgifter hanteras korrekt.
En personidentitet kan ha en eller flera kopplade identiteter (reservidentitet till PNR/SNR). En konsument av personuppgifter skall säkerställa att endast behöriga användare får tillgång till fullständiga personuppgifter då det finns en sekretessmarkering/skyddade folkbokföringsuppgifter på en kopplad identitet (PNR).
Skatteverket har tagit fram en vägledning för hantering av sekretessmarkerade personuppgifter i offentlig förvaltning, se referens [R15].

#### Krav på tjänstekonsumenten
Ansvariga för tjänstekonsumenten ansvarar för att slutanvändaren är identifierad inklusive i förekommande fall dennes organisatoriska tillhörighet, är behörig att ta del av informationen i e-tjänsten, samt att slutanvändarens aktiviteter loggas. För hantering av kontaktuppgifter, se [R11]. För hantering av personidentiteter med sekretessmarkering/skyddad folkbokföring, se kapitel 4.1.3 samt referens [R12].

#### Krav på tjänsteproducenten
Ansvarig för Tjänsteproducenten ansvarar för att information endast lämnas ut till godkända tjänstekonsumenter, samt hanteras enligt riktlinjerna för informationssäkerhet, se vidare referens [R3], kapitel 2.

#### Konfidentialitet
All kommunikation med tjänsterna sker via TLS-krypterad förbindelse, se referens [R8].

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 20 ms per post som ingår i svaret + en grundsvarstid på max 100 ms. | Detta gäller vid anrop på personposter som ej har beroenden till externa källor. |
| Tillgänglighet | 24x7, 99,95% |  |
| Last | 10 transaktioner per sekund |  |
| Aktualitet | Fördröjningen mellan en utförd uppdatering tills informationen är tillgänglig för en läsning får inte överstiga 3 sekunder |  |
| Återställningstid | - | Krav på dubbla datahallar |

#### Övriga krav
N/A

### Felhantering

#### Krav på en tjänsteproducent
Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### Logiska fel
För informationsavlämnande tjänster skall resultCode sättas till någon av de giltiga koderna enligt [R6].
Om resultText innehåller ett meddelande så skall det vara sådant att det kan visas för en användare. Respektive kontrakt beskriver närmare vilka logiska fel som skall returneras.
En producent kan även ange ett logiskt fel via SOAP men då ska det gå som ett client fault istället för server fault.
OBS! Från och med version 3 av denna domän så kan ett logiskt fel gå via SOAP, fast då som ett client fault i stället för server.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel (server faults) får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID.

#### Krav på en tjänstekonsument

##### Logiska fel
För konsumenter av uppdaterande tjänster så skall felkoder kunna hanteras och i relevanta fall meddelas aktören.

##### Tekniska fel
Tekniska fel definieras med en text och en kod i ett SOAP Fault. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

## Tjänstedomänens meddelandemodeller

### V-MIM
Se informationsspecifikationen för informationsmodell och klasser [R3].
Meddelandeinformationsmodellen följer i grunden Skatteverkets Navets informationsstruktur, förutom de tillägg som finns i domänen, ex kring personens kontaktuppgifter och tillägg för att hantera reservidentiteter. Mappning till Skatteverkets attribut/termer återfinns i Informationsspecifikationen.

### Formatregler

#### Personidentitet
Personidentitet anges på formatet ÅÅÅÅMMDDXXXX. Samma format gäller för olika typer av personidentiteter(Personnummer och samordningsnummer), dvs 12 tecken. Den nationella reservidentiteten anges enligt formatbeskrivningen [R13].

#### Datum
Domänen använder sig av en datumtyp som är ett ofullständigt datum (PartialDate) där man inte alltid vet det exakta datumet utan bara vet månaden eller året för händelsen. Tillåtna format är "YYYY-MM-DD", "YYYY-MM" och "YYYY".

#### Datum och Tid
Tid och datum anges alltid på formatet ”ÅÅÅÅ-MM-DDThh:mm:ss” enligt RFC 3339 [R5]. Exempel: 2010-11-26T09:12:33. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DD”. W3C-datatypen date används i tjänstekontrakten för att realisera detta.

#### Tidszon
Om inte tidszon anges i kommunikation med tjänsterna ska man förutsätta att det är tidszon i Sverige vid den tidpunkt som respektive datum eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid) om inte tidszon anges, se W3C-dataypen dateTime.

#### Landskod
Kod för land anges om inget annat specificeras enligt ISO 3166-1 alpha-2.

### Profiler
Alla tillämpningar har inte samma behov av personinformation. Det är önskvärt att tillåta begäran av olika delmängder av informationen för olika ändamål, bl.a. av prestandaskäl.
Vissa kontrakt använder sig därför av profiler för att inte skicka tillbaka onödigt mycket data till tjänstekonsumenten. Tjänstekonsumenten anger önskad profil i anropet. Se vidare i kapitel 8 för aktuella

## Tjänstekontrakt

### GetPersonsForProfile
Tjänst för att hämta uppgifter för 1..* personidentiteter.
Mängden data i svaret är dels beroende av den profil som efterfrågas, dels om personen har sekretessmarkering och/eller Skyddat folkbokföring eller ej. Se kap 8 för mer information.

#### Version
5.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Array med personidentiteter som efterfrågas. Maxantal 500 | 1..* |
| profile | urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType | Profil för urval av returnerat data. | 1..1 |
| ignoreReferredIdentity | xs:Boolean | Om satt till true, ska producenten ignorera att följa och returnera eventuellt hänvisad huvudidentitet. Producenten ska returnera endast personposter på det sökta id:et | 1..1 |
| Svar |  |  |  |
| requestedPersonRecord | urn:riv:strategicresourcemanagement:persons:person:5:RequestedPersonRecordType | 1..* RequestedPersonRecord innehållande eventuella personposter för efterfrågade personidentiteter | 1..* |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| - | - | - |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producentansvar | En producent skall alltid i svaret svara med requestedPersonalIdentity samt PersonRecord. / Vilket innebär att om konsumenten skickar in 3st personidentiteter men det endast finns 2st personposter som motsvarar anropet så skall likväl 3 svar erhållas, varav 1 i så fall med en tom PersonRecord. |
| #2 | Producentansvar | En producent ska alltid returnera huvudidentitetens personuppgifter om flaggan ignoreReferredIdentity är satt till False. Dvs en sökning på en reservidentitet skall returnera huvudidentitetens personuppgifter -om det finns en koppling mellan reservidentiteten och en huvudidentitet. |
| #3 | Producentansvar | En producent ska enbart returnera enligt profil 1 (se kap 8) om protectedPersonIndicator eller protectedPopulationRecord är satt till true. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #4 | Konsument | Om testIndicator är satt till ”true” och anrop sker till produktionsdata (PROD) ska en konsument normalt kasta svaret.  Alternativt måste konsumenten ha förmåga att hantera testdata. |

##### Icke funktionella krav
Se kapitel 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
-

#### Annan information om kontraktet
-

### GetPersonsForProfileUnrestricted
Tjänst för att hämta uppgifter för 1..* personidentiteter.
Mängden data i svaret är beroende av den profil som efterfrågas. Denna tjänst är en utökning av GetPersonForProfile och levererar all personinformation, oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring.
För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.

#### Version
5.0

#### Fältregler
Se GetPersonForProfile.

#### Övriga regler
Se GetPersonForProfile.

### SearchPersonsForProfile
Tjänst för att söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax.
Mängden data i svaret är dels beroende av den profil som efterfrågas, dels angivna sökkriterier. Se kap 8 för mer information om profiler, bl.a om vad som gäller då personidentiteten har sekretessmarkering. Antalet personidentiteter som kan returneras synkront är begränsat till max 500st. Om resultatet överstiger 500 poster ska producenten avbryta sökningen och generera ett Soapfault med angivandet av lämplig feltext.
OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.
Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### Version
5.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| query | xs:String | Fråga för persondata angivet med syntax enligt element queryLanguage (se Tillämpningsanvisning för frågespråk [R7]) | 1..1 |
| queryLanguage | xs:String | Anger syntax för element query | 1..1 |
| profile | urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType | Profil för returnerat data (se kap 8) | 1..1 |
| Svar |  |  |  |
| personRecord | urn:riv:strategicresourcemanagement:persons:person:5:PersonRecordType | LookupResidentsResponse innehållande folkbokföringsposter för efterfrågat sökdata | 0..* |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| - |  |  |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | En producent ska enbart returnera enligt profil 1 (se kap 8) om protectedPersonIndicator eller protectedPopulationRecord är satt till true. |
|  |  |  |
| Allmänna regler | Allmänna regler | Allmänna regler |
| - |  |  |

##### Icke funktionella krav
Se kapitel 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
-

#### Annan information om kontraktet
För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

### SearchPersonsForProfileUnrestricted
Tjänst för att söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax.
Mängden data i svaret är dels beroende av den profil som efterfrågas, dels angivna sökkriterier. Se kap 8 för mer information om profiler. Denna tjänst är en utökning av SearchPersonsForProfile och returnerar samtliga efterfrågade personuppgifter oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring.
För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.
Antalet personidentiteter som kan returneras synkront är begränsat till max 500st. Om resultatet överstiger 500 poster ska producenten avbryta sökningen och generera ett Soapfault med angivandet av lämplig feltext.
OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.
Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### Version
5.0

#### Fältregler
Se SearchPersonsForProfile.

#### Övriga regler
N/A

#### Annan information om kontraktet
För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

### SearchPersonsForProfileByOrder
Tjänst för att asynkront söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax. Denna tjänst tillskillnad från SearchPersonsForProfile returnerar endast ett orderId som sedan ska användas tillsammans med tjänsten GetFilesForOrderId för att få tillgång till resultatet av sökningen. Se sekvensschemat i kapitel 3.1.10.
Ett typiskt användningsfallet för denna tjänst är när man önskar få ut ett större antal personuppgifter baserat på sökparametrarna. T.ex för en screeningverksamhet (ex screening av bröstcancer) att kunna ta ut en population personer baserat på ålder, kön och län för att kalla dem till undersökning.
OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.
Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### Version
5.0  Notering: Se punkt 2.1.3

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| query | xs:String | Fråga för persondata angivet med syntax enligt element queryLanguage (se Tillämpningsanvisning frågespråk [R7]) | 1..1 |
| queryLanguage | xs:String | Anger syntax för element query | 1..1 |
| profile | urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType | Profil för returnerat data (se kap 8). | 1..1 |
| Svar |  |  |  |
| orderId | urn:riv:strategicresourcemanagement:persons:person:5:OrderId | OrderId Det unika order id som genererats för denna sökning. | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| - | - | - |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | En producent ska enbart returnera enligt profil 1 (se kap 8) om protectedPersonIndicator eller protectedPopulationRecord är satt till true. |
| #2 | Producent | Om antalet sökträffar hos producenten överskrider maxgränsen för antalet sökträffar som denna kan returnera så skall producenten returnera ett SOAP klientfel som inkluderar feltexten ”Förfrågans maxgräns överskriden”. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| - | - | - |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

### SearchPersonsForProfileByOrderUnrestricted
Tjänst för att asynkront söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax.
Denna tjänst tillskillnad från SearchPersonsForProfile returnerar endast ett orderId som sedan ska användas tillsammans med tjänsten GetFilesForOrderId för att få tillgång till resultatet av sökningen. Se sekvensschemat i kapitel 3.1.9. Denna tjänst är en utökning av SearchPersonsForProfileByOrder och returnerar samtliga efterfrågade personuppgifter oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring.
För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.
Ett typiskt användningsfallet för denna tjänst är när man önskar få ut ett större antal personuppgifter baserat på sökparametrarna. T.ex för en screeningverksamhet (ex screening av bröstcancer) att kunna ta ut en population personer baserat på ålder, kön och län för att kalla dem till undersökning.
OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.
Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### Version
5.0  Notering: Se punkt 2.1.3

#### Fältregler
Se SearchPersonsForProfileByOrder

#### Övriga regler
Se SearchPersonsForProfileByOrder

#### Annan information om kontraktet
För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

### GetFilesForOrderId
Tjänst för få en adress (URL) utifrån ett givet OrderId, där man kan hämta begärda data. Till exempel personposter utifrån en tidigare begärd sökning med tjänsten SearchPersonsForProfileByOrder eller förändrade personposter.
Producenten ska säkerställa att anropande tjänstekonsument har rättighet till det efterfrågade order id't.

#### Version
3.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| orderId | urn:riv:strategicresourcemanagement:persons:person:5:OrderId | Order Id för vilka filer man vill lista. | 1..1 |
| Svar |  |  |  |
| multimedia | urn:riv:strategicresourcemanagement:persons:person:5:MultimediaType | GetFilesResponse innehållande 0..* Multimedia element med data för, eller referenser till (URL-referenser), tillgängliga filer. | 0..* |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| - | - | - |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | Om antalet sökträffar hos producenten överskrider maxgränsen för antalet sökträffar som denna kan returnera så skall producenten returnera ett SOAP klientfel som inkluderar feltexten ”Förfrågans maxgräns överskriden”. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| - | - | - |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
URL’n som erhålls i responset skall följa format på URL enligt ARK_0038. Se även AKR_0038 för tillämpning.

### GetPersonContactInformation
Tjänst för att hämta information om kontaktinformation, exempelvis mailadress eller mobilnummer till personen. Kontaktinformationen kan ha skapats antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller av t.ex en vårdaktör via vårdaktörens tjänst. Kontaktuppgifterna består dels av vilka kontaktvägar (telefon, mail etc) som personen själv i fråga kan nås på, dels av kontaktpersoner och kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård.
Kontaktinformation (mail, mobilnummer etc) kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Id på personen vars kontaktuppgifter efterfrågas | 1..1 |
| Svar |  |  |  |
| contactInformationRecord | urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationRecordType | PersonContactInformationRecordResponse innehållande den efterfrågade personidentitetens kontaktinformation och/eller kontaktpersoner | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| - | - | - |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | Om en person har sekretessmarkering eller Skyddad folkbokföring (protectetPersonIndicator resp protectedPopulationRecord) så ska ej kontaktuppgifter returneras i svaret. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| - | - | - |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
N/A

### GetPersonContactInformationUnrestricted
Tjänst för att hämta information om kontaktinformation, exempelvis mailadress eller mobilnummer till personen.
Denna tjänst är en utökning av GetPersonContactInformation och levererar all personinformation, oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring. För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.
Kontaktinformationen kan ha skapats antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller av t.ex en vårdaktör via vårdaktörens tjänst. Kontaktuppgifterna består dels av vilka kontaktvägar (telefon, mail etc) som personen själv i fråga kan nås på, dels av kontaktpersoner och kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård.
Kontaktinformation (mail, mobilnummer etc) kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### Version
4.0

#### Fältregler
Se GetPersonContactInformation.

#### Övriga regler
Se GetPersonContactInformation.

##### Icke funktionella krav
Se GetPersonContactInformation.

###### SLA-krav
Se GetPersonContactInformation.

#### Annan information om kontraktet
Se GetPersonContactInformation.

### UpdatePersonContactInformation
Tjänst för att skapa/uppdatera kontaktinformation. Antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller där en vårdaktör uppger personen kontaktuppgifter via vårdaktörens journalsystem/eTjänst. Kontaktuppgifterna består dels av vilka kontaktvägar som personen själv i fråga kan nås på (exempelvis telefon, email), dels av kontaktpersoner samt kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård. En konsument av denna tjänst kan således dels vara en tjänst såsom Journalen, dels ett vårdsystem.
Kontaktinformation kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den som utför uppdateringen. | 1..1 |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Id på personen vars kontaktuppgifter ska uppdateras | 1..1 |
| versionToUpdate | urn:riv:strategicresourcemanagement:persons:person:5:Timestamp | Den version av personposten som skall uppdateras. Se även Övriga regler.

Tjänstekonsumenten får värdet genom en föregående hämtning av detta attribut (version i datatypen ContactInformationRecordType). | 0..1 |
| contactInformation | urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationType | Personens kontaktuppgifter | 0..* |
| contactPerson | urn:riv:strategicresourcemanagement:persons:person:5:ContactPersonType | Uppgifter om personens kontaktpersoner | 0..* |
| optoutPaperNotification* | Xs:Boolean | Sätts till true om personen ej önskar pappersavisering | 0..1 |
| Svar |  |  |  |
| updatePersonContactInformationResult | urn:riv:strategicresourcemanagement:persons:person:5:UpdatePersonContactInformationResultType | UpdatePersonContactInformationResult med status för om tjänsten utfördes, samt eventuellt resultat av uppdateringen. Se datatyp resultType för gällande felkoder | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #3 | Uppdatering kontaktuppgifter | optoutPaperNotification får endast sättas till true om det finns minst en kontaktuppgift som har digitalNotification satt till true |
| #4 | Uppdatering kontaktuppgifter | Då en förändring av personens kontaktuppgifter sker, dvs personens kontaktuppgifter uppdateras så ska versionToUpdate bifogas för att säkerställa transaktionsintegriteten, att posten inte har uppdaterats under pågående transaktion. |
| #5 | Uppdatering kontaktuppgifter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| - | - | - |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #1 | Uppdatering kontaktuppgifter | För personer med sekretessmarkering eller Skyddad folkbokföring (protectetPersonIndicator resp protectedPopulationRecord) så ska man ej kunna ange kontaktuppgifter. |
| #2 | Uppdatering kontaktuppgifter | En update ska alltid föregås av en läsning. Detta för att i anropet till tjänsten få med sig befintlig information på personen. De attribut som skickas in utan data blir därmed raderade/tomma. / Läsningen kan antingen ske via GetPersonContactInformation eller GetPerson och med minst profil 3. |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
För kodverk, se [R3].

### UpdatePersonContactInformationUnrestricted
Tjänst för att skapa/uppdatera kontaktinformation. Antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller där en vårdaktör uppger personen kontaktuppgifter via vårdaktörens journalsystem/eTjänst.
Denna tjänst är en utökning av UpdatePersonContactInformation och hanterar all personinformation, oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring. För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.
Kontaktuppgifterna består dels av vilka kontaktvägar som personen själv i fråga kan nås på (exempelvis telefon, email), dels av kontaktpersoner samt kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård. En konsument av denna tjänst kan således dels vara en tjänst såsom Journalen, dels ett vårdsystem.
Kontaktinformation kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### Version
4.0

#### Fältregler
Se UpdatePersonContactInformation

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #3 | Uppdatering kontaktuppgifter | optoutPaperNotification får endast sättas till true om det finns minst en kontaktuppgift som har digitalNotification satt till true |
| #4 | Uppdatering kontaktuppgifter | Då en förändring av personens kontaktuppgifter sker, dvs personens kontaktuppgifter uppdateras så ska versionToUpdate bifogas för att säkerställa transaktionsintegriteten, att posten inte har uppdaterats under pågående transaktion. |
| #5 | Uppdatering av kontaktuppgifter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| - | - | - |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #2 | Uppdatering kontaktuppgifter | En update ska alltid föregås av en läsning. Detta för att i anropet till tjänsten få med sig befintlig information på personen. De attribut som skickas in utan data blir därmed raderade/tomma. / Läsningen kan antingen ske via GetPersonContactInformation eller GetPerson och med minst profil 3. |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Se UpdatePersonContactInformation

#### Annan information om kontraktet
För kodverk, se [R3].

### UpdatePerson
Tjänst för att ta ut en ny reservidentitet (NRID), uppdatera en befintlig reservidentitet, eller lägga till en lokal reservidentitet (LRID). Om tjänsten anropas utan identitet så erhålls en ny identitet (NRID) i svaret baserad på de uppgifter som har angivets på personen, ex födelsedatum, kön.

#### Version
5

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den som utför uppdateringen. Aktörens identitet ska även kompletteras med en organisatorisk identitet som kan peka ut PUA-ansvarig organisation. Se datatyp ActorType. | 1..1 |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Personens identitet | 0..1 |
| gender | urn:riv:strategicresourcemanagement:persons:person:5:CodedValue | Kön (se kodverk, [R3]) | 0..1 |
| versionToUpdate | urn:riv:strategicresourcemanagement:persons:person:5:Timestamp | Håller reda på senast gällande version. Skall bifogas i de fall man genom en föregående läsning har erhållit detta attribut | 0..1 |
| Name | urn:riv:strategicresourcemanagement:persons:person:5:NameType | Personens alla namn | 0..1 |
| Birth | urn:riv:strategicresourcemanagement:persons:person:5:BirthType | Personens födelsedata | 0..1 |
| relationship | urn:riv:strategicresourcemanagement:persons:person:5:RelationshipType | Personens relationer | 0..* |
| givenAddress | urn:riv:strategicresourcemanagement:persons:person:5:ResidentialAddressType | Personen adress | 0..1 |
| deregistration | urn:riv:strategicresourcemanagement:persons:person:5:DeregistrationType | Avregistreringsorsak | 0..1 |
| administrativeInformation | urn:riv:strategicresourcemanagement:persons:person:5:AdministrativeInformationType | Administrativa uppgifter som normalt knyts till personer med reservidentitet | 0..1 |
| confirmedIdentity | urn:riv:strategicresourcemanagement:persons:person:5:ConfirmedIdentityType | Anger på vilket sätt en (reserv)identitet har styrkts | 0..* |
| addressAbroad | urn:riv:strategicresourcemanagement:persons:person:5:AddressAbroadType | Uppgiven utlandsadress | 0..1 |
| Svar |  |  |  |
| updatePersonResult | urn:riv:strategicresourcemanagement:persons:person:5:UpdatePersonResultType | UpdatePersonResult med status för om tjänsten utfördes, samt eventuellt uppdaterad/skapad personpost. För felkoder, se datatyp resultType | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #2 | Uppdatering av kontaktuppgifter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| - | - | - |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #1 | Uppdatering kontaktuppgifter | En update (uppdatering av befintlig post) ska alltid föregås av en läsning via GetPersonsForProfile och då med minst profil 4. Detta för att i anropet till UpdatePerson få med sig befintlig information på personen. De attribut som skickas in utan data blir raderade. |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
Kontraktet används enbart för att skapa eller uppdatera information för en person med reservidentitet. En reservidentitet byggs upp kring information om personen (se ref [R3]). Om man vill skapa en ”anonym” reservidentitet, kan man göra detta genom 2 anrop till tjänsten. Vid anrop 1 så anges enbart namn på personen, då skapas en reservidentitet som ej innehåller uppgifter om kön & födelsedata. Därefter kan man i anrop 2 tillföra dessa uppgifter, se Flöde 5a.

### LinkPersonIdentity
Tjänst för att koppla en persons identitet till dess huvudidentitet. T.ex en reservidentitet (LRID/NRID) till ett personnummer. Dvs kunna ange att en person som har 2 identiteter är densamma person. Genom denna koppling kan t.ex NPÖ för en person som är journalförd på 2 olika identiteter, t.ex en reservidentitet och sitt ordinarie personnummer, visa upp journalerna för bägge identiteterna.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den aktör som utför kopplingen | 1..1 |
| fromIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den identitet som man vill koppla till en huvudidentitet. | 1..1 |
| toIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den huvudidentitet som man vill koppla till | 1..1 |
| Svar |  |  |  |
| result | urn:riv:strategicresourcemanagement:persons:person:5:ResultType | Result status för hur tjänsten utfördes. För felkoder, se datatyp resultType | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #1 | Koppling av identiteter | Vid en koppling måste toIdentity ha >= hierarki än fromIdentity. En producent får ej godkänna en LinkPersonIdentity där toIdentity < hierarki än fromIdentity. Producenten ska då svara med ERROR och lämplig förklarande text i ResultType. Se tabell nedan för möjliga kopplingar. |
| #3 | Koppling av identiteter | Attributet updateTime i actor ska ej anges av konsumenten, detta ska utföras av producenten. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| - | - | - |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #2 | Koppling av identiteter | Den identitet som man kopplar till, toIdentity, blir den identitet som anges som huvudidentitet (se GetPersonsForProfile). Det är användaren av konsumenten som svarar för att ange vilken av identiteterna det är som är huvudidentiteten. Hierarkin är följande: LRID → NRID → SNR → PNR.  Om 2st LRID behöver kopplas så ska detta göras genom att koppla de bägge LRID till ett NRID. |

| → (kan länkas till) | LRID | NRID | SNR | PNR |
| :--- | :--- | :--- | :--- | :--- |
| LRID |  | X | X | X |
| NRID |  | X | X | X |
| SNR |  |  | * | * |
| PNR |  |  | * | * |
* Kopplingar mellan SNR & PNR görs enbart av SKV
(ex LRID kan länkas till NRID, SNR samt PNR. NRID kan länkas till NRID, SNR samt PNR osv)

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
N/A

### UnlinkLinkPersonIdentity
Tjänst för att koppla isär en tidigare koppling mellan 2 identiteter. T.ex  en koppling mellan en reservidentitet (LRID/NRID) och ett personnummer (PNR). Skälet till isärkopplingen är normalt en felaktig tidigare genomförd koppling.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den aktör som utför isärkopplingen | 1..1 |
| unlinkFromIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den huvudidentitet som man vill koppla isär från | 1..1 |
| unlinkIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den identitet som man tidigare hade kopplat till huvudidentiteten | 1..1 |
| Svar |  |  |  |
| result | urn:riv:strategicresourcemanagement:persons:person:5:ResultType | Result status för om tjänsten utfördes. För felkoder, se datatyp resultType | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #3 | Isärkoppling av identiteter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Isärkoppling av identiteter | En producent får ej tillåta en UnlinkPersonIdentity mellan ett SNR och ett PNR. Producenten ska då svara med ERROR och lämplig förklarande text i ResultType. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #2 | Koppling av identiteter | Det är endast SKV som äger sammankopplingen mellan ett samordningsnummer (SNR) till ett PNR. |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
N/A

### GetPersonsByFile
GetPersonsByFile är en REST-tjänst, dvs ingen RIVTA-tjänst. Tjänsten har tillkommit vid release 4.6 och genomgått namnbyte vid release av 5.0 av Personuppgiftstjänsten (tidigare namn var SearchPersonsByFile).
Tjänstens uppgift är att stödja verksamhetsbehovet att till Personuppgiftstjänsten kunna skicka in en lista med personidentiteter och i retur få personuppgifter. Ett typiskt användningsfall är att få uppdaterade personuppgifter utifrån en lista av personidentiteter från ett givet datum, för att uppdatera en lokal cache.
Genom att i anropet ange önskad profil så erhålls i svaret olika mycket detaljerade personuppgifter.
Tjänsten anropas med ett POST-anrop i vilket filen med personidentiteterna ingår. Som svar erhålls ett ”order-id” vilket sen används vid anrop av kontraktet GetFilesForOrderId.
För mer information om samverkande RIVTA-kontrakt , se R[14]

#### Version
1

#### Fältregler
Eftersom GetPersonsByFile ej är en RIVTA-tjänst så anges här inga attribut enligt RIVTA.
Tjänsten anropas med ett POST-anrop i vilket filen med personidentiteterna ingår. Som svar erhålls ett ”order-id” vilket sen används vid anrop av kontraktet GetFilesForOderId.
Parametrar:

| Namn | Beskrivning |
| :--- | :--- |
| profile | Obligatorisk parameter för vilken profil som önskas i svaret. Se TKB för beskrivning av profilerna P1-P5. Observera att profilen skall anges med versalt P.

Datatyp: String. / Exempel: P1 |
| fromDate | Valfri parameter för det datum man är intresserad av förändringar från och med baserat på fältet version i personposten.

Datatyp: LocalDateTime. / Exempel: 2021-10-12T00:00:00 |
| maxResultsPerFile | Valfri parameter för max antal personposter per fil. Ej angivet så returneras alltid resultatet i endast en fil. Detta värde får ej vara lägre än 500.

Datatyp: Integer. / Exempel: 1000 |
| primaryidentity | Valfri parameter. Om satt till true så kommer endast personposter som är huvudidentitet inkluderas i svaret. Om satt till false eller ej angiven alls så kommer alla personposter att inkluderas i svaret, vare sig de är huvudidentiteter eller ej.

Datatyp: Boolean. / Exempel: true |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).
N/A

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
N/A

## Datatyper
Kapitlet beskriver alla datatyper som används av tjänsterna, version 5.0.

### Datatyper från namnrymd urn:riv:strategicresourcemanagement:persons:person:5
Nedan beskrivs komplexa och simpla datatyper som är deklarerade i aktuell namnrymd urn:riv:strategicresourcemanagement:persons:person:5, version 5.0

#### urn:riv:strategicresourcemanagement:persons:person:5:ActorType
Datatyp som identifierar en aktör.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Id för aktör. Se klass Aktör [R3] | 1 |
| professional | ProfessionalType | Identifiering av aktörens organisation. Se klass ProfessionellAktör [R3] | 0..1 |
| updateTime | Timestamp | Aktuell tidpunkt då uppdateringen sker. Se datatyp Timestamp. 
OBS! detta attribut sätts av systemet som mottager requestet (tjänsteproducenten). | 0..1 |
En aktör kan antingen vara personen själv och då är det personidentitet (till exempel PNR) som ska anges, eller en aktör som agerar i sin profession och då ska id vara aktörens identitet. Inom vården är det normalt ett HSAid.
Se tabell nedan för mer information och exempel.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | xs:String | Fältet root sätts till OID för kodverket för identifieraren (extension) / Som exempel för svenskt personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / OID för SNR: 1.2.752.129.2.1.3.3 / OID för NRID: 1.2.752.74.9.1 / OID för en aktörs HSAid: 1.2.752.29.6.2.1 | 1 |
| extension | xs:String | Ett id som tillsammans med värdet i root är unikt. Som exempel för svensk personidentitet så är extension lika med personnummer. | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:AddressAbroadType
Utlandsadress

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| postalAddress1 | String40 | Utdelningsadress1 | 0..1 |
| postalAddress2 | String40 | Utdelningsadress2 | 0..1 |
| postalAddress3 | String40 | Utdelningsadress3 | 0..1 |
| countryCode | String40 | Land i fulltext enligt SKV kodverk | 0..1 |
| addressAbroadDate | PartialDateType | Datum för utlandsadress | 0..1 |
| votingDate | PartialDateType | Datum för rösträtt | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:AddressInformationType
Grupp för adressuppgifter

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddressType | Folkbokföringsadress, se Folkbokföringsadress | 0..1 |
| nationalKeys | NationalKeysType | Riksnycklar för fastighet, adressplats och lägenhet / OBS! Aviseras inte av Navet sedan 2019-09-11 | 0..1 |
| district | DistrictType | Distriktskod | 0..1 |
| specialPostalAddress | ResidentialAddressType | Särskild postadress | 0..1 |
| addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| givenAddress | ResidentialAddressType | Uppgiven adressen till en persons (förmodade) bostadsadress. | 0..1 |
| uuid | UUIDType | UUID för fastighet, adress och lägenhet | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:AddressPlaceId
Adressplats id
Restriktionstyp: xs:long
Minvärde: 0 (Inklusive)
Maxvärde: 99999999999999 (Inklusive)

#### urn:riv:strategicresourcemanagement:persons:person:5:AdministrativeInformationType
Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som
registreras i samband med uttag av reservidentitet (LRID/NRID).

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| categoryOfPerson | CodedValue | Persontypen beskriver i de flesta fall vilken debiteringskod som personen ska få. / Exempel på persontyper: Asylsökande, Anonyma (HIV-provtagning, Papperslösa), Turist...) Se klass AdministrativaUppgifter [R3] | 0..1 |
| accountCode | CodedValue | Reservnummer behöver ha ett attribut som kan användas för att styra ekonomiflöden. / Bakgrund: inom VGR återanvänds fälten län och kommunkod på reservnummer till att lagra vem som ska betala. / T.ex. om personen har visat upp EU/EES-försäkringskort, tillhör konventionsland etc. / Se AdministrativaUppgifter samt kodverk Debiteringskod [R3] | 0..1 |
| comment | xs:String | Administrativ fritextkommentar | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:ApartmentId
Lägenhets id
Restriktionstyp: xs:long
Minvärde: 0 (Inklusive)
Maxvärde: 99999999999999 (Inklusive)

#### urn:riv:strategicresourcemanagement:persons:person:5:BirthType
Uppgifter om födelse

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| dateOfBirth | PartialDateType | Uppgifter om personens födelsedatum | 0..1 |
| placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:BirthAbroadType
Uppgifter om födelse i utlandet

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | String80 | Uppgift om födelseort i utlandet | 0..1 |
| countryOfBirth | String40 | Uppgift om födelseland | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:CitizenshipType
Grupp för medborgarskap. Se klass MedborgarskapsLand [R3]

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| citizenshipCountryCode | CountryCode | MedborgarskapslandKod. Se Landskoder kap 11 [R3] | 0..1 |
| citizenshipDate | PartialDateType | Datum för medborgarskap | 0..1 |
| status | CodedValue | Statuskoder på medborgarskap, se MedborgarskapsStatus [R3] | 0..1 |
7.1.10  urn:riv:strategicresourcemanagement:persons:person:5:CitizenshipCountryCodeType
Grupp för medborgarskapslandkod

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| countryCode | CountryCode | Kod för medborgarskapsland, se Landskoder, kap 11, [R3] | 0..1 |
| attested | xs:Boolean | Kod som visar om medborgarskapsland är styrkt eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:CodedValue
Kodverk
Restriktionstyp: xs:string
Maxlängd: 40

#### urn:riv:strategicresourcemanagement:persons:person:5:ConfirmedIdentityType
Klass för hur reservidentitetsuppgifter är styrkta.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| typeOfIdentification | CodedValue | Typ av legitimation som personen är identifierad med. Se kodverk StyrktIdentitet [R3] | 0..1 |
| identificationNumber | xs:String | Legitimationsnummer | 0..1 |
| issuersOfId | xs:String | Utfärdaren av legitimationen | 0..1 |
| validDatePeriod | DatePeriodType | Legitimationens giltlighetstid | 0..1 |
| attachmentId | xs:String | Referenser till bilagor som styrker identiteten. Ska vara UUID | 0..* |
| countryCode | CountryCode | Landskod för det land som utfärdade legitimationen, se Landskoder, kap 11, [R3] | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationType
Klass för personens egna angivna kontaktuppgifter

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| contactType | CodedValue | Typ av kontaktuppgift (tel, mail), se  Kontaktuppgift [R3] | 1 |
| use | CodedValue | Användningsområde, se kodverk use [R3] | 0..1 |
| value | xs:String | Värde till typ av kontaktuppgift. / Om contactType är ett telefonnummer så ska det anges enligt ITU-standarden E.164-3. / Om contactType är en mailadress så ska mailadressen anges enligt RFC 5322 and RFC 6854 | 0..1 |
| rank | xs:Int | Specifierar önskad ordning av kontaktväg | 0..1 |
| comment | xs:String | Kommentar till telefon eller epost. Tex "Nås mellan 08 och 16" | 0..1 |
| period | DatePeriodType | Tidsperiod inom vilken kontaktvägen bör användas | 0..1 |
| digitalNotification | Boolean | Anger om personen önskar att kontaktuppgiften används vid aviseringar. En avisering kan vara kallelse, påminnelse eller annan information till personen. Vad som får anges som information i aviseringen beroende på vilken typ av avisering det är framgår i ramverket [R8]. Sätts till true om aviseringsmöjlighet önskas. | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationRecordType
Uppgifter om personens kontaktuppgifter och kontaktpersoner

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| version | Timestamp | Tidsstämpel, används för versionshantering | 1 |
| personId | IIType | Uppgifter om identiteten | 1 |
| contactInformation | ContactInformationType | Uppgifter om personens kontaktuppgifter | 0..* |
| contactPerson | ContactPersonType | Uppgifter om personens kontaktpersoner | 0..* |
| protectedPersonIndicator | xs:Boolean | Uppgift om sekretessmarkering. Om denna är "true" returneras inga kontaktuppgifter. | 1 |
| protectedPopulationRecord | xs:Boolean | Uppgift om Skyddad folkbokföring. Om denna är ”true” returneras inga kontaktuppgifter | 0..1 |
| optoutPaperNotification | Xs:Boolean | Ska sättas till true om personen ej önskar pappersavisering | 0..1 |
| updatePersonContactInformationActor | ActorType | Uppgiften anger aktör som senast uppdaterade personens kontaktuppgifter och kontaktpersoner. | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:ContactPersonType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| contactRelationshipType | CodedValue | Typ av relation till personen. Se klass Kontaktperson [R3], (Informationsspecifikationen) | 1 |
| priorityOrder | xs:Int | Önskad ordning som kontaktpersonerna ska kontaktas med | 0..1 |
| givenName | String80 | Det förnamn som kontaktpersonen kallas för | 0..1 |
| surName | String80 | Efternamn | 0..1 |
| middleName | String80 | Eventuellt mellannamn | 0..1 |
| contactPersonAddress | ResidentialAddressType | Kontaktpersonens adressuppgifter. Se klass KontaktpersonAdress [R3] | 0..1 |
| contactPersonContactInformation | ContactInformationType | Kontaktpersonens kontaktuppgifter. Se klass Kontaktuppgift [R3] | 0..* |

#### urn:riv:strategicresourcemanagement:persons:person:5:CountryCode
Landskod
Restriktionstyp: xs:string
Minlängd: 1
Maxlängd: 2

#### urn:riv:strategicresourcemanagement:persons:person:5:DatePeriodType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | xs:Date | Periodens startdatum. Minst ett av start och end skall anges. | 0..1 |
| end | xs:Date | Periodens slutdatum. Minst ett av start och end skall anges. | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:DateTypeFormatType
Enum som beskriver datumets noggrannhet.

| Värde | Beskrivning |
| :--- | :--- |
| "YYYY" | Noggrannhet: År |
| "YYYY-MM" | Noggrannhet: År och månad |
| "YYYY-MM-DD" | Noggrannhet: År, månad, dag |

#### urn:riv:strategicresourcemanagement:persons:person:5:DeregistrationType
Uppgifter om avregistrering

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| deregistrationReasonCode | CodedValue | Kod för avregistreringsorsak, se klass Avregistrering [R3] för koder | 0..1 |
| deregistrationDate | PartialDateType | Datum för avregistrering | 0..1 |
| foundDeadAtDate | PartialDateType | Datum då personen anträffades död | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:DistrictType
Grupp för Distriktskod

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| districtCode | DistrictCode | Distriktskod | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:DistrictCode
Distriktskod
Restriktionstyp: xs:string
Minlängd: 0
Maxlängd: 6 tecken

#### urn:riv:strategicresourcemanagement:persons:person:5:FictitiousPropertyNumber
Fiktivt nummer för fastighet
Restriktionstyp: xs:int
Minvärde: 0 (Inklusive)
Maxvärde: 999 (Inklusive)

#### urn:riv:strategicresourcemanagement:persons:person:5:GivenNameIndicator
Tilltalsnamnsmarkering
Heltal: 10 – 99
Restriktionstyp: xs:int
Minvärde: 10 (Inklusive)
Maxvärde: 99 (Inklusive)

#### urn:riv:strategicresourcemanagement:persons:person:5:HistoricalRecordsType
Grupp för historik

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationLocality | PopulationRegistrationLocalityType | Grupp för folkbokföring | 0..* |
| historicalAddress | ResidentialAddressType | Föregående adress | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:IIType
En universellt unik identifierare.

#### urn:riv:strategicresourcemanagement:persons:person:5:ImmigrationType
Grupp för invandringsuppgifter

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| immigrationDate | PartialDateType | Invandringsdatum | 0..1 |
| rightOfResidence | xs:Boolean | Anger om uppehållsrätt registrerades vid senaste invandringstillfället / true = personen har uppehållsrätt / false/null = personen saknar uppehållsrätt | 0..1 |
| immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. / Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |

#### urn:riv:strategicresourcemanagement:persons:person:5:ImmigrationIdentityType
Grupp för personnummer och vilket land det är knutet till.
Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentityNumber | PersonalIdentityNumber | Personnummer enligt format för det landet | 1 |
| country | CountryCode | Land för identiteten. Kan vara någon av följande: NO (Norge), DK (Danmark), FI (Finland), FO (Färöarna) eller IS (Island) | 1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:LinkedIdentityType
Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| referredPersonalIdentity | IIType | Identitet på den identitet (hänvisat Id) som identiteten länkas till | 1 |
| assuranceLevel | CodedValue | Tillitsdomän för angivet hänvisningsId. Dvs i vilken "tillitsdomän" har kopplingen utförts. / Detta attribut sätts av en producent till 3 när en konsument länkar (anropar LinkPersonIdentity) en reservidentitet till primär identitet.
Se kodverk assuranceLevel [R3] | 1 |
| primaryIdentity | xs:Boolean | Indikerar ifall identiteten är huvudidentitet | 1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:ReferredPersonalIdentityType
Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet.
Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter).

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| referredPersonalIdentity | IIType | Hänvisningsnummer / Korrekt personnummer / ÅÅÅÅMMDDNNNK eller / Samordningsnummer / ÅÅÅÅMMDDNNNK där / MM = 00 - 12 / DD = 60 – 91 / OID för: / PNR: 1.2.752.129.2.1.3.1 / SNR: 1.2.752.129.2.1.3.3 | 1 |
| referredPersonalIdentityStatus | String | SKV Termkod: 01402 / NY = NY / AS = Avslutad | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType
Profil för att ange vilket data som önskas i tjänstens respons.

| Värde | Beskrivning |
| :--- | :--- |
| "P1" | Basinformation om identiteten, namn, inklusive kopplade identiteter |
| "P2" | Profil 1 + adress & folkbokförings och uppgifter kring reservidentiteter |
| "P3" | Profil 2 +  kontaktinformation och aktör |
| "P4" | Profil 3 +  all informationen från SKV (födelse, civilstatus etc) |
| "P5" | Profil 4 + historisk information från SKV |
| "P6" | Reserverad för framtida bruk |
| "P7" | Reserverad för framtida bruk |
| "P8" | Reserverad för framtida bruk |
| "P9" | Reserverad för framtida bruk |
| "P10" | Reserverad för framtida bruk |

#### urn:riv:strategicresourcemanagement:persons:person:5:MaritalStatusType
Civilstånd

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| maritalStatusCode | CodedValue | Civilståndskod, se Informationsspecifikation för koder | 0..1 |
| maritalStatusDate | PartialDateType | Civilståndsdatum | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:MultimediaType
Datatyp som beskriver en multimediatyp.
Data kan förekomma som inbäddat element eller hänvisas via en referens URL

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | xs:String | Identitet på bilagan. Används vid referenser inom en tjänsteinteraktion. | 0..1 |
| mediaType | CodedValue | Mediatyper i MIME-format. Se ARK_0038 för mediatyper | 1 |
| value | xs:Base64Binary | Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. / Om bilagan innehåller avkodad text ska denna vara kodad enligt UTF-8-format. | 0..1 |
| reference | xs:AnyURI | Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas. | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:NameType
Namn

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| givenNameIndicator | GivenNameIndicator | Kod för tilltalsnamnsmarkering | 0..1 |
| givenName | String80 | Förnamn | 0..1 |
| middleName | String80 | Mellannamn | 0..1 |
| surname | String80 | Efternamn | 0..1 |
| notificationName | String40 | Aviseringsnamn finns endast för de personer vars förnamn, mellannamn och efternamn tillsammans överstiger 36 tecken. | 0..1 |
7.1.34  urn:riv:strategicresourcemanagement:persons:person:4:NamePartType
Grupp för del av namn där delen kan vara styrkt eller ej

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| name | String80 | Namn | 1 |
| attested | xs:Boolean | Anger om namnet är styrkt eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:NationalKeysType
Riksnycklar

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| propertyId | PropertyId | Riksnyckel för fastighet | 0..1 |
| addressPlaceId | AddressPlaceId | Riksnyckel för adressplats | 0..1 |
| apartmentId | ApartmentId | Riksnyckel för lägenhet | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:UUIDType
UUID för fastighet, address och lägenhet

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| propertyId | String | UUID för fastighet | 0..1 |
| addressPlaceId | String | UUID för adress | 0..1 |
| apartmentId | String | UUID lägenhet | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:NotificationCaseType
Ärendeuppgifter

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| recordId | RecordId | Unikt löpnummer för varje ändring i Navet. | 0..1 |
| notificationType | String40 | Visar vilket ärende som ligger till grund för aviseringen. | 0..1 |
| modificationTime | xs:DateTime | Tidpunkt för senaste ändring av posten i Navet. Levereras endast för post som uppdaterats online mot Navet. | 0..1 |
| totalRecord | xs:Boolean | Sätts till "true" när totalpost på personen aviseras vidare från Navet. | 0..1 |
| notificationDate | PartialDateType | Visar aviseringsdatum för ändrad personpost i Navet. Levereras endast för post som inkommit via avisering från Navet. Notera att själva ändringen på personposten i Navet kan ha skett ett eller några dygn tidigare. | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:OrderId
OrderId med begränsad längd
Restriktionstyp: xs:string
Maxlängd: 36

#### urn:riv:strategicresourcemanagement:persons:person:5:PartialDateType
Kan beskriva ett datum med variabel noggrannhet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| format | DateTypeFormatType | Enum som beskriver datumets noggrannhet. Tillåtna värden är "YYYY-MM-DD", "YYYY-MM" och "YYYY". | 1 |
| value | PartialDateValue | Sträng som håller själva datumet, och uttrycks på det format som anges i format. | 1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:PartialDateValue
En del av ett datum med minst året angivet
Restriktionstyp: xs:string
Minlängd: 4
Maxlängd: 10

#### urn:riv:strategicresourcemanagement:persons:person:5:PersonRecordType
Grupp för personpost, se klass Person [R3]

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | IIType | Personidentitet på huvudperson | 1 |
| identityLevel | String | Grad av styrkt identitet (SNR) / Kan ha värdena: / STYRKT
SANNOLIK
OSAKER
INTE_TILLAMPLIG | 0..1 |
| identityLevelDate | PartialDate | När identiteten styrktes (SNR) | 0..1 |
| gender | CodedValue | Personens kön | 0..1 |
| protectedPersonIndicator | xs:Boolean | Uppgift om sekretessmarkering. | 1 |
| protectedPopulationRecord | xs:Boolean | Uppgift om Skyddad folkbokföring | 0..1 |
| testIndicator | xs:Boolean | Uppgift om personen är en testperson | 1 |
| primaryIdentity | xs:Boolean | Indikerar ifall identiteten är huvudidentitet | 1 |
| version | Timestamp | Tidsstämpel, används för versionshantering vid uppdatering av person samt kontaktuppgifter | 0..1 |
| name | NameType | Namn | 0..1 |
| linkedIdentity | LinkedIdentityType | Kopplade personidentiteter | 0..* |
| referredPersonalIdentities | ReferredPersonalIdentityType | Uppgifter om personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer | 0..* |
| birth | BirthType | Uppgifter om födelse | 0..1 |
| populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| populationRegistrationRecord | PopulationRegistrationRecordType | Folkbokföringspost | 0..1 |
| addressInformation | AddressInformationType | Uppgifter om adress | 0..1 |
| contactInformation | ContactInformationType | Personens egna angivna kontaktuppgifter | 0..* |
| contactPerson | ContactPersonType | Uppgifter om personens kontaktpersoner | 0..* |
| confirmedIdentity | ConfirmedIdentityType | Uppgifter för hur reservidentitetsuppgifter är styrkta | 0..* |
| administrativeInformation | AdministrativeInformationType | Uppgifter för administration | 0..1 |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| maritalStatus | MaritalStatusType | Civilstånd | 0..1 |
| immigration | ImmigrationType | Uppgifter om invandring | 0..1 |
| citizenship | CitizenshipType | Uppgifter om medborgarskap | 0..* |
| relationship | RelationshipType | Uppgifter om relationer | 0..* |
| coOrdinationNumberData | CoOrdinationNumberDataType | Klass för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen | 0..1 |
| personalIdentityStatus | PersonalIdentityStatusType | Klass som beskriver status för ett samordningsnummer. | 0..1 |
| updatePersonActor | ActorType | Uppgiften anger aktör som senast uppdaterade personuppgifter | 0..1 |
| updatePersonContactInformationActor | ActorType | Uppgiften anger aktör som senast uppdaterade personens kontaktuppgifter och kontaktpersoner. | 0..1 |
| optoutPaperNotification | Xs:Boolean | Ska sättas till true om personen ej önskar pappersavisering | 0..1 |
| attachment | MultimediaType | Bilagor knutna till denna personidentitet | 0..* |

#### urn:riv:strategicresourcemanagement:persons:person:5:PersonalIdentityNumber
Personnummer angivet med 12-tecken. Format beroende på typ av personnummer. Svenskt, Samordningsnummer, Norskt osv.
Förberett för personnummer med mer än 12-tecken.
Restriktionstyp: xs:string
Maxlängd: 64
7.1.41  urn:riv:strategicresourcemanagement:persons:person:5:PlaceOfBirthAbroadType
Födelseort utland

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | String80 | Uppgift om födelseort i utlandet | 0..1 |
| attested | xs:Boolean | Kod som visar om födelseort utland är styrkt eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:PlaceOfBirthSwedenType
Uppgifter om hemort i Sverige

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| birthCountyCode | String2 | Födelselänskod | 0..1 |
| birthParish | String40 | Födelseförsamling | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:PopulationRegistrationLocalityType
Uppgifter om folkbokföring

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationDate | PartialDateType | Folkbokföringsdatum | 0..1 |
| countyCode | String2 | Länskod | 0..1 |
| municipalityCode | String2 | Kommunkod | 0..1 |
| parishCode | String2 | Församlingskod | 0..1 |
| propertyDesignation | String40 | Fastighetsbeteckning | 0..1 |
| fictitiousPropertyNumber | FictitiousPropertyNumber | Fiktivt nummer för fastighet | 0..1 |
| populationRegistrationType | CodedValue | Kod för folkbokföringskategori, se Informationsspecifikation för koder | 0..1 |
| LocalRegistrationTime | DateTime | Datum när den historiska posten registreras i Personuppgiftstjänsten. | 0..1 |
| LocalRegistrationEndTime | DateTime | Tidpunkt för när den historiska posten ej längre är den senaste historiska posten. | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:PopulationRegistrationRecordType
Folkbokföringspost

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| syncronizationTime | xs:DateTime | Tidsangivelse när personposten uppdaterats eller när aviseringsfil hämtades senast för personen. | 0..1 |
| notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| historicalRecords | HistoricalRecordsType | Historik | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:PostalCode
Svenskt postnr
Restriktionstyp: xs:int
Minvärde: 0 (Inklusive)
Maxvärde: 99999 (Inklusive)

#### urn:riv:strategicresourcemanagement:persons:person:5:ProfessionalType
Datatyp som identifierar PUA-ansvarig organisation som aktören verkar inom. Används ej när aktören är personen själv (t.ex vid uppdatering av kontaktuppgifter). Se klass ProfessionellAktör [R3]

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| organizationId | IIType | Id för organisation. | 1 |
Extension i datatypen IIType skall sättas till identiteten för PUA-ansvarig organisation, root till aktuellt kodverk.
T.ex en organisation som väljer att identifiera sig med sitt SKV organisationsnummer:
root: oid:2.5.4.97, extension: 556559-4230
Eller en organisation som identifierar sig med sitt HSAid på vårdgivarnivå:
root: 1.2.752.29.6.10.1, extension: SE165565594230-1000

#### urn:riv:strategicresourcemanagement:persons:person:5:PropertyId
Fastighets id
Restriktionstyp: xs:string
Maxlängd: 10

#### urn:riv:strategicresourcemanagement:persons:person:5:RecordId
ÅÅÅÅ.NNN.NNN.NNN
Fyrsiffrigt årtal + 9 siffror i sekvens grupperade om tre
Restriktionstyp: xs:string
Längd: 16

#### urn:riv:strategicresourcemanagement:persons:person:5:RelationshipType
Grupp för relation

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| relationshipId | RelationshipIdType | Personidentitet på relationsperson | 0..1 |
| relationshipType | CodedValue | Relationstyp, se klass Relation [R3] för koder | 1 |
| relationshipFromDate | PartialDateType | From datum för relation | 0..1 |
| relationshipToDate | PartialDateType | Datum för avslutad vårdnad | 0..1 |
| name | NameType | Namn | 0..1 |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| status | CodedValue | Statuskoder på relation, se Informationsspecifikation för koder, kap 8.30 (termkod 02008) | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5: CoOrdinationNumberDataType
Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| allocationDate | PartialDateType | Datum för tilldelning av samordningsnummer | 0..1 |
| preliminaryTransferDate | PartialDateType | Preliminärt datum för vilandeförklaring. / Vilandeförklaring: / Om någon anmälan eller ansökan om förnyelse av samordningsnummer inte sker inom en viss tid ska samordningsnumret förklaras vilande. | 0..1 |
| renewalDate | PartialDateType | Datum för förnyelse | 0..1 |
| deceasedDate | PartialDateType | Datum när personen avled | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5: PersonalIdentityStatusType
Klass som beskriver status för ett samordningsnummer.
Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| identityStatus | String | Identitetsstatus (endast för samordningsnummer) / Vilandeförklaring: / Om någon anmälan eller ansökan om förnyelse av samordningsnummer inte sker inom en viss tid ska samordningsnumret förklaras vilande. / Följande koder är möjliga: / AKTIVT / VILANDEFORKLARAT / VILANDEFORKLARAT_STANGT / AVREGISTRERAT / EJ_AKTUELLT | 0..1 |
| identityStatusDate | PartialDate | Datum för identitetsstatus | 0..1 |
| identityStatusCause | String | Följande koder är möjliga: / TIDSFRIST / ANNAN_ORSAK / AVLIDEN / ERSATT / FELAKTIGT_REGISTERAT | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:RelationshipIdType
Grupp för relationspersons identitet
Normalt så får man personnummer eller datum då personen föddes, men det kan även förekomma att både personalIdentity och dateOfBirth saknar information.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | IIType | Personnummer folkbokförd relation | 0..1 |
| dateOfBirth | PartialDateType | Relationpersonens födelsedatum | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:RequestedPersonRecordType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| requestedPersonalIdentity | IIType | Efterfrågad personidentitet | 1 |
| personRecord | PersonRecordType | PersonRecord post | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:ResidentialAddressType
Svensk adress

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careOf | String40 | Care of adress | 0..1 |
| postalAddress1 | String40 | Utdelningsadress1 | 0..1 |
| postalAddress2 | String40 | Utdelningsadress2 | 0..1 |
| postalCode | PostalCode | Postnummer | 0..1 |
| city | String40 | Postort | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:ResidentialAddressType
Svensk adress

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careOf | String40 | Care of adress | 0..1 |
| postalAddress1 | String40 | Utdelningsadress1 | 0..1 |
| postalAddress2 | String40 | Utdelningsadress2 | 0..1 |
| postalCode | PostalCode | Postnummer | 0..1 |
| city | String40 | Postort | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:ResultType
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType | Anger svarskod för åtgärden. | 1 |
| resultText | xs:String | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:ResultCodeType
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "Uppdatering av personens kontaktuppgifter lyckades ej". |

#### urn:riv:strategicresourcemanagement:persons:person:5:String2
Strängvärde med maxlängd
Restriktionstyp: xs:string
Maxlängd: 2

#### urn:riv:strategicresourcemanagement:persons:person:5:String40
Strängvärde med maxlängd
Restriktionstyp: xs:string
Maxlängd: 40

#### urn:riv:strategicresourcemanagement:persons:person:5:String80
Strängvärde med maxlängd
Restriktionstyp: xs:string
Maxlängd: 80

#### urn:riv:strategicresourcemanagement:persons:person:5:Timestamp
Tidpunkter anges alltid på formatet "ÅÅÅÅMMDDttmmss", vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen "YYYYMMDDhhmmss". Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).
Restriktionstyp: xs:string
Längd: 14

#### urn:riv:strategicresourcemanagement:persons:person:5:
UpdatePersonContactInformationResultType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Result | ResultType | Returnerar ev felkoder. Se ResultType | 1..1 |
| contactInformationRecord | ContactInformationRecordType |  | 0..1 |

#### urn:riv:strategicresourcemanagement:persons:person:5:UpdatePersonResultType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Result | ResultType | Returnerar ev felkoder. Se ResultType | 1..1 |
| personRecord | PersonRecordType |  | 0..1 |

## Aktuella profiler
Det finns 5st aktuella profiler, det är dock förberett för fler profiler. Vilken av dem man vill ha tillbaka i svar anger man i anropet. Man ska inte hämta mer data än man behöver.
Profil 1: Basinformation om identiteten, namn, inklusive kopplade identiteter
Profil 2: Profil 1 + adress & folkbokförings och vissa uppgifter kring reservidentiteter.
Profil 3: Profil 2 +  kontaktinformation och aktör
Profil 4: Profil 3 +  all aktuell informationen kring personen (födelse, civilstatus etc)
Profil 5: Profil 4 + historisk information från SKV
Detaljerad information om vad profilerna innehåller framgår av tabellen nedan. Poster markerade med (*) är enbart aktuella för personidentiteter av typen reservidentitet (NRID, LRID).
Notera att när protectedPersonIndicator och/eller protectedPopulationRecord är satt (sekretessmarkerad personpost/skyddad folkbokföring), levereras endast uppgifter i enlighet med Profil 1, oavsett efterfrågad profil för de Get och Search-kontrakt som ej är av typen unrestricted.

| Fältnamn | Profil 1 | Profil 2 | Profil 3 | Profil 4 | Profil 5 |
| :--- | :--- | :--- | :--- | :--- | :--- |
| personRecord | X | X | X | X | X |
| ../personalIdentity (root + extension) | X | X | X | X | X |
| ../identityLevel | X | X | X | X | X |
| ../identityLevelDate | X | X | X | X | X |
| ../gender | X | X | X | X | X |
| ../testIndicator | X | X | X | X | X |
| ../primaryIdentity | X | X | X | X | X |
| ../protectedPersonIndicator | X | X | X | X | X |
| ../protectedPopulationRecord | X | X | X | X | X |
| ../version | X | X | X | X | X |
|  |  |  |  |  |  |
| ../populationRegistrationRecord | X | X | X | X | X |
| ../../syncronizationTime | X | X | X | X | X |
| ../../notificationCase | X | X | X | X | X |
| ../../../recordId | X | X | X | X | X |
| ../../../notificationType | X | X | X | X | X |
| ../../../modificationTime | X | X | X | X | X |
| ../../../totalRecord | X | X | X | X | X |
| ../../../notificationDate (format + value) | X | X | X | X | X |
|  |  |  |  |  |  |
| ../name | X | X | X | X | X |
| ../../givenNameIndicator | X | X | X | X | X |
| ../../givenName (name + attested) | X | X | X | X | X |
| ../../middleName (name + attested) | X | X | X | X | X |
| ../../surname (name + attested) | X | X | X | X | X |
| ../../notificationName | X | X | X | X | X |
|  |  |  |  |  |  |
| ../linkedIdentity | X | X | X | X | X |
| ../../referredPersonalIdentity (root + extension) | X | X | X | X | X |
| ../../assuranceLevel | X | X | X | X | X |
| ../../primaryIdentity | X | X | X | X | X |
|  |  |  |  |  |  |
| ../referredPersonalIdentities | X | X | X | X | X |
| ../../referredPersonalIdentity (root + extension) | X | X | X | X | X |
| ../../referredPersonalIdentityStatus | X | X | X | X | X |
|  |  |  |  |  |  |
| ../populationRegistrationLocality |  | X | X | X | X |
| ../../populationRegistrationDate (format + value) |  | X | X | X | X |
| ../../countyCode | X | X | X | X | X |
| ../../municipalityCode |  | X | X | X | X |
| ../../parishCode |  | X | X | X | X |
| ../../propertyDesignation |  | X | X | X | X |
| ../../fictitiousPropertyNumber |  | X | X | X | X |
| ../../populationRegistrationType |  | X | X | X | X |
|  |  |  |  |  |  |
| ../addressInformation |  | X | X | X | X |
| ../../residentialAddress |  | X | X | X | X |
| ../../../careOf |  | X | X | X | X |
| ../../../postalAddress1 |  | X | X | X | X |
| ../../../postalAddress2 |  | X | X | X | X |
| ../../../postalCode |  | X | X | X | X |
| ../../../city |  | X | X | X | X |
| ../../nationalKeys |  | X | X | X | X |
| ../../../propertyId |  | X | X | X | X |
| ../../../addressPlaceId |  | X | X | X | X |
| ../../../apartmentId |  | X | X | X | X |
| ../../uuid |  | X | X | X | X |
| ../../../propertyId |  | X | X | X | X |
| ../../../addressPlaceId |  | X | X | X | X |
| ../../../apartmentId |  | X | X | X | X |
| ../../district |  | X | X | X | X |
| ../../../districtCode |  | X | X | X | X |
| ../../specialPostalAddress |  | X | X | X | X |
| ../../../careOf |  | X | X | X | X |
| ../../../postalAddress1 |  | X | X | X | X |
| ../../../postalAddress2 |  | X | X | X | X |
| ../../../postalCode |  | X | X | X | X |
| ../../../city |  | X | X | X | X |
| ../../addressAbroad |  | X | X | X | X |
| ../../../postalAddress1 |  | X | X | X | X |
| ../../../postalAddress2 |  | X | X | X | X |
| ../../../postalAddress3 |  | X | X | X | X |
| ../../../countryCode |  | X | X | X | X |
| ../../../addressAbroadDate (format + value) |  | X | X | X | X |
| ../../../votingDate (format + value) |  | X | X | X | X |
| ../../givenAddress (*) |  | X | X | X | X |
| ../../../careOf |  | X | X | X | X |
| ../../../postalAddress1 |  | X | X | X | X |
| ../../../postalAddress2 |  | X | X | X | X |
| ../../../postalCode |  | X | X | X | X |
| ../../../city |  | X | X | X | X |
|  |  |  |  |  |  |
| ../birth | X | X | X | X | X |
| ../../dateOfBirth (format + value) | X | X | X | X | X |
| ../../placeOfBirthSweden |  |  |  | X | X |
| ../../../birthCountyCode |  |  |  | X | X |
| ../../../birthParish |  |  |  | X | X |
| ../../birthAbroad |  |  |  | X | X |
| ../../../placeOfBirthAbroad |  |  |  | X | X |
| ../../../../placeOfBirthAbroad |  |  |  | X | X |
| ../../../../attested |  |  |  | X | X |
| ../../../countryOfBirth |  |  |  | X | X |
|  |  |  |  |  |  |
| ../deregistration | X | X | X | X | X |
| ../../deregistrationReasonCode | X | X | X | X | X |
| ../../deregistrationDate (format + value) | X | X | X | X | X |
| ../../ foundDeadAtDate (format + value) | X | X | X | X | X |
|  |  |  |  |  |  |
| ../maritalStatus |  |  |  | X | X |
| ../../maritalStatusCode |  |  |  | X | X |
| ../../maritalStatusDate (format + value) |  |  |  | X | X |
|  |  |  |  |  |  |
| ../immigration |  |  |  | X | X |
| ../../immigrationDate (format + value) |  |  |  | X | X |
| ../../rightOfResidence |  |  |  | X | X |
|  |  |  |  |  |  |
| ../../immigrationIdentity |  |  |  | X | X |
| ../../../personalIdentityNumber |  |  |  | X | X |
| ../../../country |  |  |  | X | X |
|  |  |  |  |  |  |
| ../citizenship |  |  |  | X | X |
| ../../citizenshipCountryCode |  |  |  | X | X |
| ../../../countryCode |  |  |  | X | X |
| ../../../attested |  |  |  | X | X |
| ../../citizenshipDate (format + value) |  |  |  | X | X |
| ../../status |  |  |  | X | X |
|  |  |  |  |  |  |
| ../relationship |  |  |  | X | X |
| ../../relationshipId |  |  |  | X | X |
| ../../../personalIdentity (root + extension) |  |  |  | X | X |
| ../../../dateOfBirth (format + value) |  |  |  | X | X |
| ../../relationshipType |  |  |  | X | X |
| ../../relationshipFromDate (format + value) |  |  |  | X | X |
| ../../relationshipToDate (format + value) |  |  |  | X | X |
| ../../name |  |  |  | X | X |
| ../../../givenNameIndicator |  |  |  | X | X |
| ../../../givenName (name + attested) |  |  |  | X | X |
| ../../../middleName (name + attested) |  |  |  | X | X |
| ../../../surname (name + attested) |  |  |  | X | X |
| ../../../notificationName |  |  |  | X | X |
| ../../deregistration |  |  |  | X | X |
| ../../../deregistrationReasonCode |  |  |  | X | X |
| ../../../deregistrationDate (format + value) |  |  |  | X | X |
| ../../../foundDeadAtDate (format + value) |  |  |  | X | X |
| ../../status |  |  |  | X | X |
|  |  |  |  |  |  |
| ../coOrdinationNumberData | X | X | X | X | X |
| ../../allocationDate | X | X | X | X | X |
| ../../preliminaryTransferDate | X | X | X | X | X |
| ../../renewalDate | X | X | X | X | X |
| ../../deceasedDate | X | X | X | X | X |
|  |  |  |  |  |  |
| ../personalIdentityStatus | X | X | X | X | X |
| ../../identityStatusValue | X | X | X | X | X |
| ../../identityStatusDate | X | X | X | X | X |
| ../../identityStatusCause | X | X | X | X | X |
|  |  |  |  |  |  |
| ../confirmedIdentity (*) |  | X | X | X | X |
| ../../typeOfIdentification |  | X | X | X | X |
| ../../identificationNumber |  | X | X | X | X |
| ../../issuersOfId |  | X | X | X | X |
| ../../countryCode |  | X | X | X | X |
| ../../validDatePeriod (start + end) |  | X | X | X | X |
| ../../attachmentId |  | X | X | X | X |
|  |  |  |  |  |  |
| ../attachment (*) |  | X | X | X | X |
| ../../id |  | X | X | X | X |
| ../../mediaType |  | X | X | X | X |
| ../../value |  | X | X | X | X |
| ../../reference |  | X | X | X | X |
|  |  |  |  |  |  |
| ../administrativeInformation (*) |  |  |  |  |  |
| ../../categoryOfPerson |  | X | X | X | X |
| ../../accountCode |  | X | X | X | X |
| ../../comment |  | X | X | X | X |
|  |  |  |  |  |  |
| ../optoutPaperNotification |  |  | X | X | X |
|  |  |  |  |  |  |
| ../contactInformation |  |  | X | X | X |
| ../../contactType |  |  | X | X | X |
| ../../use |  |  | X | X | X |
| ../../value |  |  | X | X | X |
| ../../rank |  |  | X | X | X |
| ../../comment |  |  | X | X | X |
| ../../period (start + end) |  |  | X | X | X |
| ../../digitalNotification |  |  | X | X | X |
|  |  |  |  |  |  |
| ../contactPerson |  |  | X | X | X |
| ../../contactRelationshipType |  |  | X | X | X |
| ../../priorityOrder |  |  | X | X | X |
| ../../givenName |  |  | X | X | X |
| ../../surName |  |  | X | X | X |
| ../../middleName |  |  | X | X | X |
| ../../contactPersonAddress |  |  | X | X | X |
| ../../../careOf |  |  | X | X | X |
| ../../../postalAddress1 |  |  | X | X | X |
| ../../../postalAddress2 |  |  | X | X | X |
| ../../../postalCode |  |  | X | X | X |
| ../../../city |  |  | X | X | X |
| ../../contactPersonContactInformation |  |  | X | X | X |
| ../../../contactType |  |  | X | X | X |
| ../../../use |  |  | X | X | X |
| ../../../value |  |  | X | X | X |
| ../../../rank |  |  | X | X | X |
| ../../../comment |  |  | X | X | X |
| ../../../period (start + end) |  |  | X | X | X |
| ../../../digitalNotification |  |  | X | X | X |
|  |  |  |  |  |  |
| ../updatePersonActor (*) |  |  | X | X | X |
| ../../id (root + extension) |  |  | X | X | X |
| ../../professional |  |  | X | X | X |
| ../../../organizationId (root + extension) |  |  | X | X | X |
| ../../../updateTime |  |  | X | X | X |
|  |  |  |  |  |  |
| ../updatePersonContactInformationActor |  |  | X | X | X |
| ../../id (root + extension) |  |  | X | X | X |
| ../../professional |  |  | X | X | X |
| ../../../organizationId (root + extension) |  |  | X | X | X |
| ../../../updateTime |  |  | X | X | X |
|  |  |  |  |  |  |
| ../../historicalRecordsType |  |  |  |  | X |
| ../../../populationRegistrationLocality |  |  |  |  | X |
| ../../../../populationRegistrationDate (format + value) |  |  |  |  | X |
| ../../../../countyCode |  |  |  |  | X |
| ../../../../municipalityCode |  |  |  |  | X |
| ../../../../parishCode |  |  |  |  | X |
| ../../../../propertyDesignation |  |  |  |  | X |
| ../../../../fictitiousPropertyNumber |  |  |  |  | X |
| ../../../../populationRegistrationType |  |  |  |  | X |
| ../../../../localRegistrationTime |  |  |  |  | X |
| ../../../../localRegistrationEndTime |  |  |  |  | X |
| ../../../historicalAddress |  |  |  |  | X |
| ../../../../careOf |  |  |  |  | X |
| ../../../../postalAddress1 |  |  |  |  | X |
| ../../../../postalAddress2 |  |  |  |  | X |
| ../../../../postalCode |  |  |  |  | X |
| ../../../../city |  |  |  |  | X |
|  |  |  |  |  |  |
|  |  |  |  |  |  |

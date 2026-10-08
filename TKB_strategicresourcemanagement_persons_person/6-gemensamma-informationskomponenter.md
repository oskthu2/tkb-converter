# 6 Gemensamma informationskomponenter - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* **6 Gemensamma informationskomponenter**

## 6 Gemensamma informationskomponenter

# 6 Gemensamma informationskomponenter

Källa: **Personuppgiftstjänsten – Tjänstekontraktsbeskrivning**, version 5.1 (2024-11-28), [TKB_strategicresourcemanagement_persons_person.docx](TKB_strategicresourcemanagement_persons_person.docx).

Motsvarar TKB kapitel 7 **Datatyper** (6.1 = TKB 7.1 osv.). Rubrikerna för datatyperna anges här utan namnrymdsprefixet `urn:riv:strategicresourcemanagement:persons:person:5:`.

Kapitlet beskriver alla datatyper som används av tjänsterna, version 5.0.

### 6.1 Datatyper från namnrymd urn:riv:strategicresourcemanagement:persons:person:5

Nedan beskrivs komplexa och simpla datatyper som är deklarerade i aktuell namnrymd urn:riv:strategicresourcemanagement:persons:person:5, version 5.0

#### 6.1.1 ActorType

Datatyp som identifierar en aktör.

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | Id för aktör. Se klass Aktör [R3] | 1 |
| professional | ProfessionalType | Identifiering av aktörens organisation. Se klass ProfessionellAktör [R3] | 0..1 |
| updateTime | Timestamp | Aktuell tidpunkt då uppdateringen sker. Se datatyp Timestamp. / OBS! detta attribut sätts av systemet som mottager requestet (tjänsteproducenten). | 0..1 |

En aktör kan antingen vara personen själv och då är det personidentitet (till exempel PNR) som ska anges, eller en aktör som agerar i sin profession och då ska id vara aktörens identitet. Inom vården är det normalt ett HSAid.

Se tabell nedan för mer information och exempel.

| | | | |
| :--- | :--- | :--- | :--- |
| root | xs:String | Fältet root sätts till OID för kodverket för identifieraren (extension) / Som exempel för svenskt personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / OID för SNR: 1.2.752.129.2.1.3.3 / OID för NRID: 1.2.752.74.9.1 / OID för en aktörs HSAid: 1.2.752.29.6.2.1 | 1 |
| extension | xs:String | Ett id som tillsammans med värdet i root är unikt. Som exempel för svensk personidentitet så är extension lika med personnummer. | 0..1 |

#### 6.1.2 AddressAbroadType

Utlandsadress

| | | | |
| :--- | :--- | :--- | :--- |
| postalAddress1 | String40 | Utdelningsadress1 | 0..1 |
| postalAddress2 | String40 | Utdelningsadress2 | 0..1 |
| postalAddress3 | String40 | Utdelningsadress3 | 0..1 |
| countryCode | String40 | Land i fulltext enligt SKV kodverk | 0..1 |
| addressAbroadDate | PartialDateType | Datum för utlandsadress | 0..1 |
| votingDate | PartialDateType | Datum för rösträtt | 0..1 |

#### 6.1.3 AddressInformationType

Grupp för adressuppgifter

| | | | |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddressType | Folkbokföringsadress, se Folkbokföringsadress | 0..1 |
| nationalKeys | NationalKeysType | Riksnycklar för fastighet, adressplats och lägenhet / OBS! Aviseras inte av Navet sedan 2019-09-11 | 0..1 |
| district | DistrictType | Distriktskod | 0..1 |
| specialPostalAddress | ResidentialAddressType | Särskild postadress | 0..1 |
| addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| givenAddress | ResidentialAddressType | Uppgiven adressen till en persons (förmodade) bostadsadress. | 0..1 |
| uuid | UUIDType | UUID för fastighet, adress och lägenhet | 0..1 |

#### 6.1.4 AddressPlaceId

Adressplats id

Restriktionstyp: xs:long

Minvärde: 0 (Inklusive)

Maxvärde: 99999999999999 (Inklusive)

#### 6.1.5 AdministrativeInformationType

Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som

registreras i samband med uttag av reservidentitet (LRID/NRID).

| | | | |
| :--- | :--- | :--- | :--- |
| categoryOfPerson | CodedValue | Persontypen beskriver i de flesta fall vilken debiteringskod som personen ska få. / Exempel på persontyper: Asylsökande, Anonyma (HIV-provtagning, Papperslösa), Turist…) Se klass AdministrativaUppgifter [R3] | 0..1 |
| accountCode | CodedValue | Reservnummer behöver ha ett attribut som kan användas för att styra ekonomiflöden. / Bakgrund: inom VGR återanvänds fälten län och kommunkod på reservnummer till att lagra vem som ska betala. / T.ex. om personen har visat upp EU/EES-försäkringskort, tillhör konventionsland etc. / Se AdministrativaUppgifter samt kodverk Debiteringskod [R3] | 0..1 |
| comment | xs:String | Administrativ fritextkommentar | 0..1 |

#### 6.1.6 ApartmentId

Lägenhets id

Restriktionstyp: xs:long

Minvärde: 0 (Inklusive)

Maxvärde: 99999999999999 (Inklusive)

#### 6.1.7 BirthType

Uppgifter om födelse

| | | | |
| :--- | :--- | :--- | :--- |
| dateOfBirth | PartialDateType | Uppgifter om personens födelsedatum | 0..1 |
| placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |

#### 6.1.8 BirthAbroadType

Uppgifter om födelse i utlandet

| | | | |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | String80 | Uppgift om födelseort i utlandet | 0..1 |
| countryOfBirth | String40 | Uppgift om födelseland | 0..1 |

#### 6.1.9 CitizenshipType

Grupp för medborgarskap. Se klass MedborgarskapsLand [R3]

| | | | |
| :--- | :--- | :--- | :--- |
| citizenshipCountryCode | CountryCode | MedborgarskapslandKod. Se Landskoder kap 11 [R3] | 0..1 |
| citizenshipDate | PartialDateType | Datum för medborgarskap | 0..1 |
| status | CodedValue | Statuskoder på medborgarskap, se MedborgarskapsStatus [R3] | 0..1 |

7.1.10 urn:riv:strategicresourcemanagement:persons:person:5:CitizenshipCountryCodeType

Grupp för medborgarskapslandkod

| | | | |
| :--- | :--- | :--- | :--- |
| countryCode | CountryCode | Kod för medborgarskapsland, se Landskoder, kap 11, [R3] | 0..1 |
| attested | xs:Boolean | Kod som visar om medborgarskapsland är styrkt eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### 6.1.10 CodedValue

Kodverk

Restriktionstyp: xs:string

Maxlängd: 40

#### 6.1.11 ConfirmedIdentityType

Klass för hur reservidentitetsuppgifter är styrkta.

| | | | |
| :--- | :--- | :--- | :--- |
| typeOfIdentification | CodedValue | Typ av legitimation som personen är identifierad med. Se kodverk StyrktIdentitet [R3] | 0..1 |
| identificationNumber | xs:String | Legitimationsnummer | 0..1 |
| issuersOfId | xs:String | Utfärdaren av legitimationen | 0..1 |
| validDatePeriod | DatePeriodType | Legitimationens giltlighetstid | 0..1 |
| attachmentId | xs:String | Referenser till bilagor som styrker identiteten. Ska vara UUID | 0..* |
| countryCode | CountryCode | Landskod för det land som utfärdade legitimationen, se Landskoder, kap 11, [R3] | 0..1 |

#### 6.1.12 ContactInformationType

Klass för personens egna angivna kontaktuppgifter

| | | | |
| :--- | :--- | :--- | :--- |
| contactType | CodedValue | Typ av kontaktuppgift (tel, mail), se Kontaktuppgift [R3] | 1 |
| use | CodedValue | Användningsområde, se kodverk use [R3] | 0..1 |
| value | xs:String | Värde till typ av kontaktuppgift. / Om contactType är ett telefonnummer så ska det anges enligt ITU-standarden E.164-3. / Om contactType är en mailadress så ska mailadressen anges enligt RFC 5322 and RFC 6854 | 0..1 |
| rank | xs:Int | Specifierar önskad ordning av kontaktväg | 0..1 |
| comment | xs:String | Kommentar till telefon eller epost. Tex "Nås mellan 08 och 16" | 0..1 |
| period | DatePeriodType | Tidsperiod inom vilken kontaktvägen bör användas | 0..1 |
| digitalNotification | Boolean | Anger om personen önskar att kontaktuppgiften används vid aviseringar. En avisering kan vara kallelse, påminnelse eller annan information till personen. Vad som får anges som information i aviseringen beroende på vilken typ av avisering det är framgår i ramverket [R8]. Sätts till true om aviseringsmöjlighet önskas. | 0..1 |

#### 6.1.13 ContactInformationRecordType

Uppgifter om personens kontaktuppgifter och kontaktpersoner

| | | | |
| :--- | :--- | :--- | :--- |
| version | Timestamp | Tidsstämpel, används för versionshantering | 1 |
| personId | IIType | Uppgifter om identiteten | 1 |
| contactInformation | ContactInformationType | Uppgifter om personens kontaktuppgifter | 0..* |
| contactPerson | ContactPersonType | Uppgifter om personens kontaktpersoner | 0..* |
| protectedPersonIndicator | xs:Boolean | Uppgift om sekretessmarkering. Om denna är "true" returneras inga kontaktuppgifter. | 1 |
| protectedPopulationRecord | xs:Boolean | Uppgift om Skyddad folkbokföring. Om denna är ”true” returneras inga kontaktuppgifter | 0..1 |
| optoutPaperNotification | Xs:Boolean | Ska sättas till true om personen ej önskar pappersavisering | 0..1 |
| updatePersonContactInformationActor | ActorType | Uppgiften anger aktör som senast uppdaterade personens kontaktuppgifter och kontaktpersoner. | 0..1 |

#### 6.1.14 ContactPersonType

| | | | |
| :--- | :--- | :--- | :--- |
| contactRelationshipType | CodedValue | Typ av relation till personen. Se klass Kontaktperson [R3], (Informationsspecifikationen) | 1 |
| priorityOrder | xs:Int | Önskad ordning som kontaktpersonerna ska kontaktas med | 0..1 |
| givenName | String80 | Det förnamn som kontaktpersonen kallas för | 0..1 |
| surName | String80 | Efternamn | 0..1 |
| middleName | String80 | Eventuellt mellannamn | 0..1 |
| contactPersonAddress | ResidentialAddressType | Kontaktpersonens adressuppgifter. Se klass KontaktpersonAdress [R3] | 0..1 |
| contactPersonContactInformation | ContactInformationType | Kontaktpersonens kontaktuppgifter. Se klass Kontaktuppgift [R3] | 0..* |

#### 6.1.15 CountryCode

Landskod

Restriktionstyp: xs:string

Minlängd: 1

Maxlängd: 2

#### 6.1.16 DatePeriodType

| | | | |
| :--- | :--- | :--- | :--- |
| start | xs:Date | Periodens startdatum. Minst ett av start och end skall anges. | 0..1 |
| end | xs:Date | Periodens slutdatum. Minst ett av start och end skall anges. | 0..1 |

#### 6.1.17 DateTypeFormatType

Enum som beskriver datumets noggrannhet.

| | |
| :--- | :--- |
| "YYYY" | Noggrannhet: År |
| "YYYY-MM" | Noggrannhet: År och månad |
| "YYYY-MM-DD" | Noggrannhet: År, månad, dag |

#### 6.1.18 DeregistrationType

Uppgifter om avregistrering

| | | | |
| :--- | :--- | :--- | :--- |
| deregistrationReasonCode | CodedValue | Kod för avregistreringsorsak, se klass Avregistrering [R3] för koder | 0..1 |
| deregistrationDate | PartialDateType | Datum för avregistrering | 0..1 |
| foundDeadAtDate | PartialDateType | Datum då personen anträffades död | 0..1 |

#### 6.1.19 DistrictType

Grupp för Distriktskod

| | | | |
| :--- | :--- | :--- | :--- |
| districtCode | DistrictCode | Distriktskod | 0..1 |

#### 6.1.20 DistrictCode

Distriktskod

Restriktionstyp: xs:string

Minlängd: 0

Maxlängd: 6 tecken

#### 6.1.21 FictitiousPropertyNumber

Fiktivt nummer för fastighet

Restriktionstyp: xs:int

Minvärde: 0 (Inklusive)

Maxvärde: 999 (Inklusive)

#### 6.1.22 GivenNameIndicator

Tilltalsnamnsmarkering

Heltal: 10 – 99

Restriktionstyp: xs:int

Minvärde: 10 (Inklusive)

Maxvärde: 99 (Inklusive)

#### 6.1.23 HistoricalRecordsType

Grupp för historik

| | | | |
| :--- | :--- | :--- | :--- |
| populationRegistrationLocality | PopulationRegistrationLocalityType | Grupp för folkbokföring | 0..* |
| historicalAddress | ResidentialAddressType | Föregående adress | 0..1 |

#### 6.1.24 IIType

En universellt unik identifierare.

#### 6.1.25 ImmigrationType

Grupp för invandringsuppgifter

| | | | |
| :--- | :--- | :--- | :--- |
| immigrationDate | PartialDateType | Invandringsdatum | 0..1 |
| rightOfResidence | xs:Boolean | Anger om uppehållsrätt registrerades vid senaste invandringstillfället / true = personen har uppehållsrätt / false/null = personen saknar uppehållsrätt | 0..1 |
| immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. / Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |

#### 6.1.26 ImmigrationIdentityType

Grupp för personnummer och vilket land det är knutet till.

Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo

| | | | |
| :--- | :--- | :--- | :--- |
| personalIdentityNumber | PersonalIdentityNumber | Personnummer enligt format för det landet | 1 |
| country | CountryCode | Land för identiteten. Kan vara någon av följande: NO (Norge), DK (Danmark), FI (Finland), FO (Färöarna) eller IS (Island) | 1 |

#### 6.1.27 LinkedIdentityType

Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR

| | | | |
| :--- | :--- | :--- | :--- |
| referredPersonalIdentity | IIType | Identitet på den identitet (hänvisat Id) som identiteten länkas till | 1 |
| assuranceLevel | CodedValue | Tillitsdomän för angivet hänvisningsId. Dvs i vilken "tillitsdomän" har kopplingen utförts. / Detta attribut sätts av en producent till 3 när en konsument länkar (anropar LinkPersonIdentity) en reservidentitet till primär identitet. / Se kodverk assuranceLevel [R3] | 1 |
| primaryIdentity | xs:Boolean | Indikerar ifall identiteten är huvudidentitet | 1 |

#### 6.1.28 ReferredPersonalIdentityType

Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet.

Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter).

| | | | |
| :--- | :--- | :--- | :--- |
| referredPersonalIdentity | IIType | Hänvisningsnummer / Korrekt personnummer / ÅÅÅÅMMDDNNNK eller / Samordningsnummer / ÅÅÅÅMMDDNNNK där / MM = 00 - 12 / DD = 60 – 91 / OID för: / PNR: 1.2.752.129.2.1.3.1 / SNR: 1.2.752.129.2.1.3.3 | 1 |
| referredPersonalIdentityStatus | String | SKV Termkod: 01402 / NY = NY / AS = Avslutad | 0..1 |

#### 6.1.29 LookupProfileType

Profil för att ange vilket data som önskas i tjänstens respons.

| | |
| :--- | :--- |
| "P1" | Basinformation om identiteten, namn, inklusive kopplade identiteter |
| "P2" | Profil 1 + adress & folkbokförings och uppgifter kring reservidentiteter |
| "P3" | Profil 2 + kontaktinformation och aktör |
| "P4" | Profil 3 + all informationen från SKV (födelse, civilstatus etc) |
| "P5" | Profil 4 + historisk information från SKV |
| "P6" | Reserverad för framtida bruk |
| "P7" | Reserverad för framtida bruk |
| "P8" | Reserverad för framtida bruk |
| "P9" | Reserverad för framtida bruk |
| "P10" | Reserverad för framtida bruk |

#### 6.1.30 MaritalStatusType

Civilstånd

| | | | |
| :--- | :--- | :--- | :--- |
| maritalStatusCode | CodedValue | Civilståndskod, se Informationsspecifikation för koder | 0..1 |
| maritalStatusDate | PartialDateType | Civilståndsdatum | 0..1 |

#### 6.1.31 MultimediaType

Datatyp som beskriver en multimediatyp.

Data kan förekomma som inbäddat element eller hänvisas via en referens URL

| | | | |
| :--- | :--- | :--- | :--- |
| id | xs:String | Identitet på bilagan. Används vid referenser inom en tjänsteinteraktion. | 0..1 |
| mediaType | CodedValue | Mediatyper i MIME-format. Se ARK_0038 för mediatyper | 1 |
| value | xs:Base64Binary | Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. / Om bilagan innehåller avkodad text ska denna vara kodad enligt UTF-8-format. | 0..1 |
| reference | xs:AnyURI | Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas. | 0..1 |

#### 6.1.32 NameType

Namn

| | | | |
| :--- | :--- | :--- | :--- |
| givenNameIndicator | GivenNameIndicator | Kod för tilltalsnamnsmarkering | 0..1 |
| givenName | String80 | Förnamn | 0..1 |
| middleName | String80 | Mellannamn | 0..1 |
| surname | String80 | Efternamn | 0..1 |
| notificationName | String40 | Aviseringsnamn finns endast för de personer vars förnamn, mellannamn och efternamn tillsammans överstiger 36 tecken. | 0..1 |

7.1.34 urn:riv:strategicresourcemanagement:persons:person:4:NamePartType

Grupp för del av namn där delen kan vara styrkt eller ej

| | | | |
| :--- | :--- | :--- | :--- |
| name | String80 | Namn | 1 |
| attested | xs:Boolean | Anger om namnet är styrkt eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### 6.1.33 NationalKeysType

Riksnycklar

| | | | |
| :--- | :--- | :--- | :--- |
| propertyId | PropertyId | Riksnyckel för fastighet | 0..1 |
| addressPlaceId | AddressPlaceId | Riksnyckel för adressplats | 0..1 |
| apartmentId | ApartmentId | Riksnyckel för lägenhet | 0..1 |

#### 6.1.34 UUIDType

UUID för fastighet, address och lägenhet

| | | | |
| :--- | :--- | :--- | :--- |
| propertyId | String | UUID för fastighet | 0..1 |
| addressPlaceId | String | UUID för adress | 0..1 |
| apartmentId | String | UUID lägenhet | 0..1 |

#### 6.1.35 NotificationCaseType

Ärendeuppgifter

| | | | |
| :--- | :--- | :--- | :--- |
| recordId | RecordId | Unikt löpnummer för varje ändring i Navet. | 0..1 |
| notificationType | String40 | Visar vilket ärende som ligger till grund för aviseringen. | 0..1 |
| modificationTime | xs:DateTime | Tidpunkt för senaste ändring av posten i Navet. Levereras endast för post som uppdaterats online mot Navet. | 0..1 |
| totalRecord | xs:Boolean | Sätts till "true" när totalpost på personen aviseras vidare från Navet. | 0..1 |
| notificationDate | PartialDateType | Visar aviseringsdatum för ändrad personpost i Navet. Levereras endast för post som inkommit via avisering från Navet. Notera att själva ändringen på personposten i Navet kan ha skett ett eller några dygn tidigare. | 0..1 |

#### 6.1.36 OrderId

OrderId med begränsad längd

Restriktionstyp: xs:string

Maxlängd: 36

#### 6.1.37 PartialDateType

Kan beskriva ett datum med variabel noggrannhet.

| | | | |
| :--- | :--- | :--- | :--- |
| format | DateTypeFormatType | Enum som beskriver datumets noggrannhet. Tillåtna värden är "YYYY-MM-DD", "YYYY-MM" och "YYYY". | 1 |
| value | PartialDateValue | Sträng som håller själva datumet, och uttrycks på det format som anges i format. | 1 |

#### 6.1.38 PartialDateValue

En del av ett datum med minst året angivet

Restriktionstyp: xs:string

Minlängd: 4

Maxlängd: 10

#### 6.1.39 PersonRecordType

Grupp för personpost, se klass Person [R3]

| | | | |
| :--- | :--- | :--- | :--- |
| personalIdentity | IIType | Personidentitet på huvudperson | 1 |
| identityLevel | String | Grad av styrkt identitet (SNR) / Kan ha värdena: / STYRKT / SANNOLIK / OSAKER / INTE_TILLAMPLIG | 0..1 |
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

#### 6.1.40 PersonalIdentityNumber

Personnummer angivet med 12-tecken. Format beroende på typ av personnummer. Svenskt, Samordningsnummer, Norskt osv.

Förberett för personnummer med mer än 12-tecken.

Restriktionstyp: xs:string

Maxlängd: 64

7.1.41 urn:riv:strategicresourcemanagement:persons:person:5:PlaceOfBirthAbroadType

Födelseort utland

| | | | |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | String80 | Uppgift om födelseort i utlandet | 0..1 |
| attested | xs:Boolean | Kod som visar om födelseort utland är styrkt eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### 6.1.41 PlaceOfBirthSwedenType

Uppgifter om hemort i Sverige

| | | | |
| :--- | :--- | :--- | :--- |
| birthCountyCode | String2 | Födelselänskod | 0..1 |
| birthParish | String40 | Födelseförsamling | 0..1 |

#### 6.1.42 PopulationRegistrationLocalityType

Uppgifter om folkbokföring

| | | | |
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

#### 6.1.43 PopulationRegistrationRecordType

Folkbokföringspost

| | | | |
| :--- | :--- | :--- | :--- |
| syncronizationTime | xs:DateTime | Tidsangivelse när personposten uppdaterats eller när aviseringsfil hämtades senast för personen. | 0..1 |
| notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| historicalRecords | HistoricalRecordsType | Historik | 0..1 |

#### 6.1.44 PostalCode

Svenskt postnr

Restriktionstyp: xs:int

Minvärde: 0 (Inklusive)

Maxvärde: 99999 (Inklusive)

#### 6.1.45 ProfessionalType

Datatyp som identifierar PUA-ansvarig organisation som aktören verkar inom. Används ej när aktören är personen själv (t.ex vid uppdatering av kontaktuppgifter). Se klass ProfessionellAktör [R3]

| | | | |
| :--- | :--- | :--- | :--- |
| organizationId | IIType | Id för organisation. | 1 |

Extension i datatypen IIType skall sättas till identiteten för PUA-ansvarig organisation, root till aktuellt kodverk.

T.ex en organisation som väljer att identifiera sig med sitt SKV organisationsnummer:

root: oid:2.5.4.97, extension: 556559-4230

Eller en organisation som identifierar sig med sitt HSAid på vårdgivarnivå:

root: 1.2.752.29.6.10.1, extension: SE165565594230-1000

#### 6.1.46 PropertyId

Fastighets id

Restriktionstyp: xs:string

Maxlängd: 10

#### 6.1.47 RecordId

ÅÅÅÅ.NNN.NNN.NNN

Fyrsiffrigt årtal + 9 siffror i sekvens grupperade om tre

Restriktionstyp: xs:string

Längd: 16

#### 6.1.48 RelationshipType

Grupp för relation

| | | | |
| :--- | :--- | :--- | :--- |
| relationshipId | RelationshipIdType | Personidentitet på relationsperson | 0..1 |
| relationshipType | CodedValue | Relationstyp, se klass Relation [R3] för koder | 1 |
| relationshipFromDate | PartialDateType | From datum för relation | 0..1 |
| relationshipToDate | PartialDateType | Datum för avslutad vårdnad | 0..1 |
| name | NameType | Namn | 0..1 |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| status | CodedValue | Statuskoder på relation, se Informationsspecifikation för koder, kap 8.30 (termkod 02008) | 0..1 |

#### 6.1.49 CoOrdinationNumberDataType

Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige.

| | | | |
| :--- | :--- | :--- | :--- |
| allocationDate | PartialDateType | Datum för tilldelning av samordningsnummer | 0..1 |
| preliminaryTransferDate | PartialDateType | Preliminärt datum för vilandeförklaring. / Vilandeförklaring: / Om någon anmälan eller ansökan om förnyelse av samordningsnummer inte sker inom en viss tid ska samordningsnumret förklaras vilande. | 0..1 |
| renewalDate | PartialDateType | Datum för förnyelse | 0..1 |
| deceasedDate | PartialDateType | Datum när personen avled | 0..1 |

#### 6.1.50 PersonalIdentityStatusType

Klass som beskriver status för ett samordningsnummer.

Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer.

| | | | |
| :--- | :--- | :--- | :--- |
| identityStatus | String | Identitetsstatus (endast för samordningsnummer) / Vilandeförklaring: / Om någon anmälan eller ansökan om förnyelse av samordningsnummer inte sker inom en viss tid ska samordningsnumret förklaras vilande. / Följande koder är möjliga: / AKTIVT / VILANDEFORKLARAT / VILANDEFORKLARAT_STANGT / AVREGISTRERAT / EJ_AKTUELLT | 0..1 |
| identityStatusDate | PartialDate | Datum för identitetsstatus | 0..1 |
| identityStatusCause | String | Följande koder är möjliga: / TIDSFRIST / ANNAN_ORSAK / AVLIDEN / ERSATT / FELAKTIGT_REGISTERAT | 0..1 |

#### 6.1.51 RelationshipIdType

Grupp för relationspersons identitet

Normalt så får man personnummer eller datum då personen föddes, men det kan även förekomma att både personalIdentity och dateOfBirth saknar information.

| | | | |
| :--- | :--- | :--- | :--- |
| personalIdentity | IIType | Personnummer folkbokförd relation | 0..1 |
| dateOfBirth | PartialDateType | Relationpersonens födelsedatum | 0..1 |

#### 6.1.52 RequestedPersonRecordType

| | | | |
| :--- | :--- | :--- | :--- |
| requestedPersonalIdentity | IIType | Efterfrågad personidentitet | 1 |
| personRecord | PersonRecordType | PersonRecord post | 0..1 |

#### 6.1.53 ResidentialAddressType

Svensk adress

| | | | |
| :--- | :--- | :--- | :--- |
| careOf | String40 | Care of adress | 0..1 |
| postalAddress1 | String40 | Utdelningsadress1 | 0..1 |
| postalAddress2 | String40 | Utdelningsadress2 | 0..1 |
| postalCode | PostalCode | Postnummer | 0..1 |
| city | String40 | Postort | 0..1 |

#### 6.1.54 ResidentialAddressType

Svensk adress

| | | | |
| :--- | :--- | :--- | :--- |
| careOf | String40 | Care of adress | 0..1 |
| postalAddress1 | String40 | Utdelningsadress1 | 0..1 |
| postalAddress2 | String40 | Utdelningsadress2 | 0..1 |
| postalCode | PostalCode | Postnummer | 0..1 |
| city | String40 | Postort | 0..1 |

#### 6.1.55 ResultType

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.

En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.

Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| | | | |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType | Anger svarskod för åtgärden. | 1 |
| resultText | xs:String | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 0..1 |

#### 6.1.56 ResultCodeType

Enumerationsvärde som anger de svarskoder som finns.

| | |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "Uppdatering av personens kontaktuppgifter lyckades ej". |

#### 6.1.57 String2

Strängvärde med maxlängd

Restriktionstyp: xs:string

Maxlängd: 2

#### 6.1.58 String40

Strängvärde med maxlängd

Restriktionstyp: xs:string

Maxlängd: 40

#### 6.1.59 String80

Strängvärde med maxlängd

Restriktionstyp: xs:string

Maxlängd: 80

#### 6.1.60 Timestamp

Tidpunkter anges alltid på formatet "ÅÅÅÅMMDDttmmss", vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen "YYYYMMDDhhmmss". Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

Restriktionstyp: xs:string

Längd: 14

#### 6.1.61 UpdatePersonContactInformationResultType

| | | | |
| :--- | :--- | :--- | :--- |
| Result | ResultType | Returnerar ev felkoder. Se ResultType | 1..1 |
| contactInformationRecord | ContactInformationRecordType |   | 0..1 |

#### 6.1.62 UpdatePersonResultType

| | | | |
| :--- | :--- | :--- | :--- |
| Result | ResultType | Returnerar ev felkoder. Se ResultType | 1..1 |
| personRecord | PersonRecordType |   | 0..1 |

### 6.2 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| | | | |
| :--- | :--- | :--- | :--- |
| DateTypeFormat (`DateTypeFormatType`) | YYYY, YYYY-MM, YYYY-MM-DD | [SPP-datetypeformat-cs](CodeSystem-SPP-datetypeformat-cs.md) | [SPP-datetypeformat-vs](ValueSet-SPP-datetypeformat-vs.md) |
| LookupProfile (`LookupProfileType`) | P1, P2, P3, P4, P5, P6, P7, P8, P9, P10 | [SPP-lookupprofile-cs](CodeSystem-SPP-lookupprofile-cs.md) | [SPP-lookupprofile-vs](ValueSet-SPP-lookupprofile-vs.md) |
| ResultCode (`ResultCodeType`) | OK, ERROR | [SPP-resultcode-cs](CodeSystem-SPP-resultcode-cs.md) | [SPP-resultcode-vs](ValueSet-SPP-resultcode-vs.md) |

### 6.3 Typer i domänschemat (XSD)

Genererat ur [strategicresourcemanagement_persons_person_5.0.xsd](strategicresourcemanagement_persons_person_5.0.xsd).

#### ActorType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Datatyp som identifierar en aktör.

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType | En universellt unik identifierare. | 1..1 |
| professional | ProfessionalType | Datatyp som identifierar en aktör inom en profession. | 0..1 |
| updateTime | Timestamp |   | 0..1 |

#### AddressAbroadType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Utlandsadress

| | | | |
| :--- | :--- | :--- | :--- |
| postalAddress1 | String40 |   | 0..1 |
| postalAddress2 | String40 |   | 0..1 |
| postalAddress3 | String40 |   | 0..1 |
| countryCode | String40 |   | 0..1 |
| addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

#### AddressInformationType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för adressuppgifter

| | | | |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| nationalKeys | NationalKeysType | Riksnycklar | 0..1 |
| district | DistrictType | Grupp för Distriktskod | 0..1 |
| specialPostalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |
| givenAddress | ResidentialAddressType | Svensk adress | 0..1 |
| UUID | UUIDType | UUID för fastighet, aderess och lägenhet | 0..1 |

#### AdministrativeInformationType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID).

| | | | |
| :--- | :--- | :--- | :--- |
| categoryOfPerson | CodedValue |   | 0..1 |
| accountCode | CodedValue |   | 0..1 |
| comment | string |   | 0..1 |

#### BirthAbroadType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om födelse i utlandet

| | | | |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | String80 |   | 0..1 |
| countryOfBirth | String40 |   | 0..1 |

#### BirthType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om födelse

| | | | |
| :--- | :--- | :--- | :--- |
| dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |

#### CitizenshipType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för medborgarskap

| | | | |
| :--- | :--- | :--- | :--- |
| citizenshipCountryCode | CountryCode |   | 0..1 |
| citizenshipDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| status | CodedValue |   | 0..1 |

#### CoOrdinationNumberDataType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige.

| | | | |
| :--- | :--- | :--- | :--- |
| allocationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| preliminaryTransferDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| renewalDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| deceasedDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

#### ConfirmedIdentityType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass för hur reservidentitetsuppgifter är styrkta.

| | | | |
| :--- | :--- | :--- | :--- |
| typeOfIdentification | CodedValue |   | 0..1 |
| identificationNumber | string |   | 0..1 |
| issuersOfId | string |   | 0..1 |
| validDatePeriod | DatePeriodType |   | 0..1 |
| attachmentId | string |   | 0..* |
| countryCode | CountryCode |   | 0..1 |

#### ContactInformationRecordType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om personens kontaktuppgifter och kontaktpersoner

| | | | |
| :--- | :--- | :--- | :--- |
| version | Timestamp |   | 1..1 |
| personId | IIType | En universellt unik identifierare. | 1..1 |
| contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| contactPerson | ContactPersonType |   | 0..* |
| protectedPersonIndicator | boolean |   | 1..1 |
| protectedPopulationRecord | boolean |   | 0..1 |
| optoutPaperNotification | boolean |   | 0..1 |
| updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |

#### ContactInformationType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass för patientens egna angivna kontakuppgifter

| | | | |
| :--- | :--- | :--- | :--- |
| contactType | CodedValue |   | 1..1 |
| use | CodedValue |   | 0..1 |
| value | string |   | 0..1 |
| rank | int |   | 0..1 |
| comment | string |   | 0..1 |
| period | DatePeriodType |   | 0..1 |
| digitalNotification | boolean |   | 0..1 |

#### ContactPersonType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

| | | | |
| :--- | :--- | :--- | :--- |
| contactRelationshipType | CodedValue |   | 1..1 |
| priorityOrder | int |   | 0..1 |
| givenName | String80 |   | 0..1 |
| surName | String80 |   | 0..1 |
| middleName | String80 |   | 0..1 |
| contactPersonAddress | ResidentialAddressType | Svensk adress | 0..1 |
| contactPersonContactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |

#### DatePeriodType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

| | | | |
| :--- | :--- | :--- | :--- |
| start | date |   | 0..1 |
| end | date |   | 0..1 |

#### DeregistrationType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om avregistrering

| | | | |
| :--- | :--- | :--- | :--- |
| deregistrationReasonCode | CodedValue |   | 0..1 |
| deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| foundDeadAtDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

#### DistrictType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för Distriktskod

| | | | |
| :--- | :--- | :--- | :--- |
| districtCode | DistrictCode |   | 0..1 |

#### HistoricalRecordsType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för historik

| | | | |
| :--- | :--- | :--- | :--- |
| populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..* |
| historicalAddress | ResidentialAddressType | Svensk adress | 0..1 |

#### IIType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

En universellt unik identifierare.

| | | | |
| :--- | :--- | :--- | :--- |
| root | string |   | 1..1 |
| extension | string |   | 0..1 |

#### ImmigrationIdentityType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo

| | | | |
| :--- | :--- | :--- | :--- |
| personalIdentityNumber | PersonalIdentityNumber |   | 1..1 |
| country | CountryCode |   | 1..1 |

#### ImmigrationType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för invandringsuppgifter

| | | | |
| :--- | :--- | :--- | :--- |
| immigrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| rightOfResidence | boolean |   | 0..1 |
| immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |

#### LinkedIdentityType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR

| | | | |
| :--- | :--- | :--- | :--- |
| referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| assuranceLevel | CodedValue |   | 1..1 |
| primaryIdentity | boolean |   | 1..1 |

#### MaritalStatusType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Civistånd

| | | | |
| :--- | :--- | :--- | :--- |
| maritalStatusCode | CodedValue |   | 0..1 |
| maritalStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

#### MultimediaType (4)

Domänschema `GetFilesForOrderIdResponder_4.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderIdResponder:4`).

Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL.

| | | | |
| :--- | :--- | :--- | :--- |
| id | string |   | 0..1 |
| mediaType | CodedValue |   | 1..1 |
| value | base64Binary |   | 0..1 |
| reference | anyURI |   | 0..1 |

#### MultimediaType (5)

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL.

| | | | |
| :--- | :--- | :--- | :--- |
| id | string |   | 0..1 |
| mediaType | CodedValue |   | 1..1 |
| value | base64Binary |   | 0..1 |
| reference | anyURI |   | 0..1 |

#### NameType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Namn

| | | | |
| :--- | :--- | :--- | :--- |
| givenNameIndicator | GivenNameIndicator |   | 0..1 |
| givenName | String80 |   | 0..1 |
| middleName | String80 |   | 0..1 |
| surname | String80 |   | 0..1 |
| notificationName | String40 |   | 0..1 |

#### NationalKeysType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Riksnycklar

| | | | |
| :--- | :--- | :--- | :--- |
| propertyId | PropertyId |   | 0..1 |
| addressPlaceId | AddressPlaceId |   | 0..1 |
| apartmentId | ApartmentId |   | 0..1 |

#### NotificationCaseType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Ärendeuppgifter

| | | | |
| :--- | :--- | :--- | :--- |
| recordId | RecordId |   | 0..1 |
| notificationType | String40 |   | 0..1 |
| modificationTime | dateTime |   | 0..1 |
| totalRecord | boolean |   | 0..1 |
| notificationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

#### PartialDateType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Kan beskriva ett datum med variabel noggrannhet.

| | | | |
| :--- | :--- | :--- | :--- |
| format | DateTypeFormatType |   | 1..1 |
| value | PartialDateValue |   | 1..1 |

#### PersonRecordType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för personpost

| | | | |
| :--- | :--- | :--- | :--- |
| personalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| identityLevel | string |   | 0..1 |
| identityLevelDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| gender | CodedValue |   | 0..1 |
| protectedPersonIndicator | boolean |   | 1..1 |
| testIndicator | boolean |   | 1..1 |
| primaryIdentity | boolean |   | 1..1 |
| version | Timestamp |   | 0..1 |
| name | NameType | Namn | 0..1 |
| linkedIdentity | LinkedIdentityType | Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR | 0..* |
| referredPersonalIdentities | ReferredPersonalIdentityType | Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter). | 0..* |
| birth | BirthType | Uppgifter om födelse | 0..1 |
| populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| populationRegistrationRecord | PopulationRegistrationRecordType | Folkbokföringspost | 0..1 |
| addressInformation | AddressInformationType | Grupp för adressuppgifter | 0..1 |
| contactInformation | ContactInformationType | Klass för patientens egna angivna kontakuppgifter | 0..* |
| contactPerson | ContactPersonType |   | 0..* |
| confirmedIdentity | ConfirmedIdentityType | Klass för hur reservidentitetsuppgifter är styrkta. | 0..* |
| administrativeInformation | AdministrativeInformationType | Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID). | 0..1 |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| maritalStatus | MaritalStatusType | Civistånd | 0..1 |
| immigration | ImmigrationType | Grupp för invandringsuppgifter | 0..1 |
| citizenship | CitizenshipType | Grupp för medborgarskap | 0..* |
| relationship | RelationshipType | Grupp för relation | 0..* |
| coOrdinationNumberData | CoOrdinationNumberDataType | Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige. | 0..1 |
| personalIdentityStatus | PersonalIdentityStatusType | Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer. | 0..1 |
| updatePersonActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| updatePersonContactInformationActor | ActorType | Datatyp som identifierar en aktör. | 0..1 |
| attachment | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| optoutPaperNotification | boolean |   | 0..1 |
| protectedPopulationRecord | boolean |   | 0..1 |

#### PersonalIdentityStatusType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer.

| | | | |
| :--- | :--- | :--- | :--- |
| identityStatus | string |   | 0..1 |
| identityStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| identityStatusCause | string |   | 0..1 |

#### PlaceOfBirthSwedenType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om hemort i Sverige

| | | | |
| :--- | :--- | :--- | :--- |
| birthCountyCode | String2 |   | 0..1 |
| birthParish | String40 |   | 0..1 |

#### PopulationRegistrationLocalityType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Uppgifter om folkbokföring

| | | | |
| :--- | :--- | :--- | :--- |
| populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| countyCode | String2 |   | 0..1 |
| municipalityCode | String2 |   | 0..1 |
| parishCode | String2 |   | 0..1 |
| propertyDesignation | String40 |   | 0..1 |
| fictitiousPropertyNumber | FictitiousPropertyNumber |   | 0..1 |
| populationRegistrationType | CodedValue |   | 0..1 |
| localRegistrationTime | dateTime |   | 0..1 |
| localRegistrationEndTime | dateTime |   | 0..1 |

#### PopulationRegistrationRecordType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Folkbokföringspost

| | | | |
| :--- | :--- | :--- | :--- |
| syncronizationTime | dateTime |   | 0..1 |
| notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| historicalRecords | HistoricalRecordsType | Grupp för historik | 0..1 |

#### ProfessionalType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Datatyp som identifierar en aktör inom en profession.

| | | | |
| :--- | :--- | :--- | :--- |
| organizationId | IIType | En universellt unik identifierare. | 1..1 |

#### ReferredPersonalIdentityType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter).

| | | | |
| :--- | :--- | :--- | :--- |
| referredPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| referredPersonalIdentityStatus | string |   | 0..1 |

#### RelationshipIdType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes.

| | | | |
| :--- | :--- | :--- | :--- |
| personalIdentity | IIType | En universellt unik identifierare. | 0..1 |
| dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

#### RelationshipType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Grupp för relation

| | | | |
| :--- | :--- | :--- | :--- |
| relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| relationshipType | CodedValue |   | 1..1 |
| relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| name | NameType | Namn | 0..1 |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| status | CodedValue |   | 0..1 |

#### RequestedPersonRecordType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

| | | | |
| :--- | :--- | :--- | :--- |
| requestedPersonalIdentity | IIType | En universellt unik identifierare. | 1..1 |
| personRecord | PersonRecordType | Grupp för personpost | 0..1 |

#### ResidentialAddressType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Svensk adress

| | | | |
| :--- | :--- | :--- | :--- |
| careOf | String40 |   | 0..1 |
| postalAddress1 | String40 |   | 0..1 |
| postalAddress2 | String40 |   | 0..1 |
| postalCode | PostalCode |   | 0..1 |
| city | String40 |   | 0..1 |

#### ResultType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes.

| | | | |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType |   | 1..1 |
| resultText | string |   | 0..1 |

#### UUIDType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

UUID för fastighet, aderess och lägenhet

| | | | |
| :--- | :--- | :--- | :--- |
| propertyId | string |   | 0..1 |
| addressPlaceId | string |   | 0..1 |
| apartmentId | string |   | 0..1 |

#### UpdatePersonContactInformationResultType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes. | 1..1 |
| contactInformationRecord | ContactInformationRecordType | Uppgifter om personens kontaktuppgifter och kontaktpersoner | 0..1 |

#### UpdatePersonResultType

Domänschema `strategicresourcemanagement_persons_person_5.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:persons:person:5`).

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes. | 1..1 |
| personRecord | PersonRecordType | Grupp för personpost | 0..1 |


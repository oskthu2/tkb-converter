# 6 Gemensamma informationskomponenter

Källa: *Personuppgifter – Tjänstekontraktsbeskrivning*, version 2.0 (2016-02-24, revision RC3 2016-04-22), [TKB_masterdata_citizen_citizen.docx](TKB_masterdata_citizen_citizen.docx).

Motsvarar TKB kapitel 7 *Datatyper* (6.1 = TKB 7.1 osv.).

Kapitlet beskriver alla datatyper som används av tjänsterna, version 2.0.

### 6.1 Datatyper från namnrymd urn:riv:masterdata.citizen.citizen:2

Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:masterdata.citizen.citizen:2, version 2.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### 6.1.1 AddressInformation

Grupp för adressuppgifter

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddress | Folkbokföringsadress | 0..1 |
| nationalKeys | NationalKeys | Riksnycklar för fastighet, adressplats och lägenhet | 0..1 |
| district | District | Distriktskod | 0..1 |
| specialPostalAddress | ResidentialAddress | Särskild postadress | 0..1 |
| addressAbroad | AddressAbroad | Utlandsadress | 0..1 |

#### 6.1.2 AddressAbroad

Utlandsadress

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| postalAddress1 | String40 | Utdelningsadress1 | 0..1 |
| postalAddress2 | String40 | Utdelningsadress2 | 0..1 |
| postalAddress3 | String40 | Utdelningsadress3 | 0..1 |
| country | String40 | Land | 0..1 |
| addressAbroadDate | PartialDate | Datum för utlandsadress | 0..1 |
| votingDate | PartialDate | Datum för rösträtt | 0..1 |

#### 6.1.3 AddressPlaceId

Adressplats id

#### 6.1.4 ApartmentId

Lägenhets id

#### 6.1.5 Birth

Uppgifter om födelse

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthSweden | PlaceOfBirthSweden | Uppgifter om hemort i Sverige | 0..1 |
| birthAbroad | BirthAbroad | Uppgifter om födelse i utlandet | 0..1 |

#### 6.1.6 BirthAbroad

Uppgifter om födelse i utlandet

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | PlaceOfBirthAbroad | Uppgift om födelseort i utlandet | 0..1 |
| countryOfBirth | String40 | Uppgift om födelseland | 0..1 |

#### 6.1.7 Citizenship

Grupp för medborgarskap

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| citizenshipCountryCode | CitizenshipCountryCode | MedborgarskapslandKod | 0..1 |
| citizenshipDate | PartialDate | Datum för medborgarskap | 0..1 |
| status | CitizenshipStatus | Statuskoder på medborgarskap | 0..1 |

#### 6.1.8 CitizenshipCountryCode

Grupp för medborgarskapslandkod

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| countryCode | CountryCode | Kod för medborgarskapsland | 0..1 |
| attested | xs:boolean | Kod som visar om medborgarskapsland är styrkt eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### 6.1.9 CitizenshipStatus

Statuskoder på medborgarskap

| Värde | Beskrivning |
| :--- | :--- |
| "NY" | Nyregistrerad |
| "RD" | Rättad |
| "AS" | Avslutad |
| "AN" | Annullerad |

#### 6.1.10 CountryCode

Tvåställig landskod enligt ISO 3166-1 alpha-2 [R6]

#### 6.1.11 DateTypeFormat

Enum som beskriver datumets noggrannhet.

| Värde | Beskrivning |
| :--- | :--- |
| "YYYY" | Noggrannhet: År |
| "YYYY-MM" | Noggrannhet: År och månad |
| "YYYY-MM-DD" | Noggrannhet: År, månad, dag |

#### 6.1.12 Deregistration

Uppgifter om avregistrering

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| deregistrationReasonCode | DeregistrationReasonCode | Kod för avregistreringsorsak | 0..1 |
| deregistrationDate | PartialDate | Datum för avregistrering | 0..1 |

#### 6.1.13 DeregistrationReasonCode

Kod för avregistreringsorsak

| Värde | Beskrivning |
| :--- | :--- |
| "AV" | Avliden |
| "UV" | Utvandrad |
| "GN" | Gammalt personnummer |
| "AN" | Annan anledning |
| "AS" | Avslutad |
| "GS" | Gammalt samordningsnummer |
| "OB" | Försvunnen |
| "TA" | Tekniskt avregistrerad |

#### 6.1.14 District

Grupp för Distriktskod

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| districtCode | DistrictCode | Distriktskod | 0..1 |

#### 6.1.15 DistrictCode

Distriktskod

#### 6.1.16 FictitiousPropertyNumber

Fiktivt nummer för fastighet

#### 6.1.17 GivenNameIndicator

Tilltalsnamnsmarkering

#### 6.1.18 HistoricalAddress

Grupp för historik adress

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddress | Föregående folkbokföringsadress | 0..1 |

#### 6.1.19 HistoricalRecords

Grupp för historik

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationLocality | PopulationRegistrationLocality | Grupp för folkbokföring | 0..* |
| historicalAddress | HistoricalAddress | Föregående adress | 0..1 |

#### 6.1.20 Immigration

Grupp för invandringsuppgifter

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| immigrationDate | PartialDate | Invandringsdatum | 0..1 |
| rightOfResidence | xs:boolean | Anger om uppehållsrätt registrerades vid senaste invandringstillfället / true = personen har uppehållsrätt / false/null = personen saknar uppehållsrätt | 0..1 |
| immigrationIdentity | ImmigrationIdentity | Grupp för personnummer och vilket land det är knutet till. / Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |

#### 6.1.21 ImmigrationIdentity

Grupp för personnummer och vilket land det är knutet till.

Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentityNumber | PersonalIdentityNumber | Personnummer enligt format för det landet | 1 |
| country | CountryCode | Land för identiteten. Kan vara någon av följande: NO (Norge), DK (Danmark), FI (Finland), FO (Färöarna) eller IS (Island) | 1 |

#### 6.1.22 LookupProfile

Profil för att ange vilket data som önskas i tjänstens response.

| Värde | Beskrivning |
| :--- | :--- |
| "P1" | Profil med enbart namn |
| "P2" | Profil i enlighet med kontrakt 1.1 |
| "P3" | Profil med komplett data exklusive historik |
| "P4" | Profil med komplett data inklusive historik |
| "P5" | Reserverad för framtida bruk |
| "P6" | Reserverad för framtida bruk |
| "P7" | Reserverad för framtida bruk |
| "P8" | Reserverad för framtida bruk |
| "P9" | Reserverad för framtida bruk |
| "P10" | Reserverad för framtida bruk |

#### 6.1.23 LookupResidentsResponse

Returtyp för operationen LookupResidentsForProfile

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationRecords | PopulationRegistrationRecord | Folkbokföringsposter | 0..* |

#### 6.1.24 MaritalStatus

Civistånd

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| maritalStatusCode | MaritalStatusCode | Civilståndskod | 0..1 |
| maritalStatusDate | PartialDate | Civilståndsdatum | 0..1 |

#### 6.1.25 MaritalStatusCode

Civilståndskod

| Värde | Beskrivning |
| :--- | :--- |
| "OG" | Ogift |
| "G" | Gift |
| "A" | Änka/änkling |
| "S" | Skild |
| "RP" | Registrerad partner |
| "SP" | Skild partner |
| "EP" | Efterlevande partner |

#### 6.1.26 Name

Namnuppgifter för person.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| givenNameIndicator | GivenNameIndicator | Kod för tilltalsnamnsmarkering | 0..1 |
| givenName | NamePart | Förnamn | 0..1 |
| middleName | NamePart | Mellannamn | 0..1 |
| surname | NamePart | Efternamn | 0..1 |
| notificationName | String40 | Aviseringsnamn finns endast för de personer vars förnamn, mellannamn och efternamn tillsammans överstiger 36 tecken. | 0..1 |

#### 6.1.27 NamePart

Grupp för del av namn där delen kan vara styrkt eller ej

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| name | String80 | Namn | 0..1 |
| attested | xs:boolean | Anger om namnet är styrket eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### 6.1.28 NationalKeys

Riksnycklar

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| propertyId | PropertyId | Riksnyckel för fastighet | 0..1 |
| addressPlaceId | AddressPlaceId | Riksnyckel för adressplats | 0..1 |
| apartmentId | ApartmentId | Riksnyckel för lägenhet | 0..1 |

#### 6.1.29 NotificationCase

Ärendeuppgifter

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| recordId | RecordId | Unikt löpnummer för varje ändring i Navet. | 0..1 |
| notificationType | String40 | Visar vilket ärende som ligger till grund för aviseringen. | 0..1 |
| modificationTime | xs:dateTime | Tidpunkt för senaste ändring av posten i Navet. Levereras endast för post som uppdaterats online mot Navet. | 0..1 |
| totalRecord | xs:boolean | Endast aktuell vid regelbunden avisering, ändrade termer. Sätts till ‘true’ när totalpost på personen aviseras. Dvs när personen anses komma som ny till mottagarens register. | 1 |
| notificationDate | PartialDate | Visar datum när personposten uppdaterades i bakomliggande register Navet. Levereras endast för post som inkommit via avisering från Navet. | 0..1 |

#### 6.1.30 PartialDate

Kan beskriva ett datum med variabel noggrannhet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| format | DateTypeFormat | Enum som beskriver datumets noggrannhet. Tillåtna värden är "YYYY-MM-DD", "YYYY-MM" och "YYYY". | 1 |
| value | PartialDateValue | Sträng som håller själva datumet, och uttrycks på det format som anges i format. | 1 |

#### 6.1.31 PartialDateValue

En del av ett datum med minst året angivet

#### 6.1.32 PersonalIdentity

Personidentitet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | PersonalIdentityNumber | Svenskt perssonnummer på format: / ÅÅÅÅMMDDNNNK / Eller samordningsnummer: / ÅÅÅÅMMDDNNNK där / MM = 00 - 12 / DD = 60 – 91 | 1 |
| type | xs:string | OID i enlighet med: [RIV-TA Best Practice](https://bitbucket.org/rivta-domains/best-practice/wiki/De%20facto-konventioner%20f%C3%B6r%20datatyper.md) / Anger som vilken typ som id syftar på. / Svenskt personnummer = '1.2.752.129.2.1.3.1' / Samordningsnummer = '1.2.752.129.2.1.3.3' | 1 |

#### 6.1.33 PersonalIdentityNumber

Personnummer angivet med 12-tecken. Format beroende på typ av personnummer. Svenskt, Samordningsnummer, Norskt osv.

Förberett för personnummer med mer än 12-tecken.

#### 6.1.34 PersonalRecord

Grupp för personpost

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | PersonalIdentity | Personidentitet på huvudperson. Denna levereras även om personen är sekretessmarkerad. | 0..1 |
| referredPersonalIdentity | PersonalIdentity | Lista med hänvisningspersonnummer | 0..* |
| deregistration | Deregistration | Uppgifter om avregistrering | 0..1 |
| name | Name | Namn. Denna levereras även om personen är sekretessmarkerad. | 0..1 |
| populationRegistrationLocality | PopulationRegistrationLocality | Uppgifter om folkbokföring | 0..1 |
| addressInformation | AddressInformation | Uppgifter om adress | 0..1 |
| maritalStatus | MaritalStatus | Civilstånd | 0..1 |
| birth | Birth | Uppgifter om födelse | 0..1 |
| immigration | Immigration | Uppgifter om invandring | 0..1 |
| relationships | Relationship | Uppgifter om relationer | 0..* |
| citizenship | Citizenship | Uppgifter om medborgarskap | 0..* |

#### 6.1.35 PlaceOfBirthAbroad

Födelseort utland

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | String80 | Uppgift om födelseort i utlandet | 0..1 |
| attested | xs:boolean | Kod som visar om födelseort utland är styrkt eller ej. / Endast aktuell för personer med gällande samordningsnummer | 0..1 |

#### 6.1.36 PlaceOfBirthSweden

Uppgifter om hemort i Sverige

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| birthCountyCode | String2 | Födelselänskod | 0..1 |
| birthParish | String40 | Födelseförsamling | 0..1 |

#### 6.1.37 PopulationRegistrationLocality

Uppgifter om folkbokföring

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationDate | PartialDate | Folkbokföringsdatum | 0..1 |
| countyCode | String2 | Länskod | 0..1 |
| municipalityCode | String2 | Kommunkod | 0..1 |
| parishCode | String2 | Församlingskod | 0..1 |
| propertyDesignation | String40 | Fastighetsbeteckning | 0..1 |
| fictitiousPropertyNumber | FictitiousPropertyNumber | Fiktivt nummer för fastighet | 0..1 |
| populationRegistrationType | PopulationRegistrationType | Kod för folkbokföringskategori | 0..1 |

#### 6.1.38 PopulationRegistrationRecord

Folkbokföringspost

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| protectedPersonIndicator | xs:boolean | Uppgift om sekretessmarkering. Om denna är ”true” kommer enbart personnummer/samordningsnummer och namn att levereras för personen, resten kommer att döljas. | 1 |
| testIndicator | xs:boolean | Uppgift om personen är en testperson | 1 |
| syncronizationTime | xs:dateTime | Tidsangivelse när posten senast kontrollerades i navet, kan vara onlineslagning på personen eller när aviseringsfil hämtades senast. | 0..1 |
| notificationCase | NotificationCase | Ärendeuppgifter | 0..1 |
| personalRecord | PersonalRecord | Personpost | 1 |
| historicalRecords | HistoricalRecords | Historik | 0..1 |

#### 6.1.39 PopulationRegistrationType

Kod för folkbokföringskategori

| Värde | Beskrivning |
| :--- | :--- |
| "FB" | Folkbokförd |
| "UV" | Utvandrad |
| "OB" | Avregistrerad som försvunnen |

#### 6.1.40 PostalCode

Svenskt postnummer

#### 6.1.41 PropertyId

Fastighetsid

#### 6.1.42 RecordId

ÅÅÅÅ.NNN.NNN.NNN

Fyrsiffrigt årtal + 9 siffror i sekvens grupperade om tre

#### 6.1.43 Relationship

Grupp för relation

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| relationshipId | RelationshipId | Personidentitet på relationsperson | 1 |
| relationshipType | RelationshipType | Relationstyp | 1 |
| relationshipFromDate | PartialDate | From datum för relation | 0..1 |
| relationshipToDate | PartialDate | Datum för avslutad vårdnad | 0..1 |
| name | Name | Namn | 0..1 |
| deregistration | Deregistration | Uppgifter om avregistrering | 0..1 |
| status | RelationshipStatus | Statuskoder på relation | 0..1 |

#### 6.1.44 RelationshipId

Grupp för relationspersons identitet

Antingen får man personnummer eller datum då personen föddes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | PersonalIdentity | Personnummer folkbokförd relation | 0..1 |
| dateOfBirth | PartialDate | Aldrig folkbokförd relation eller korrekt personnummer enligt FB-relation. | 0..1 |

#### 6.1.45 RelationshipStatus

Statuskoder på relation

| Värde | Beskrivning |
| :--- | :--- |
| "NY" | Nyregistrerad |
| "PB" | Nyregistrerad pga personnummerbyte |
| "RD" | Rättad |
| "AS" | Avslutad |
| "AV" | Avslutad pga avliden |
| "IV" | Avslutad pga invandring |
| "AN" | Annullerad |

#### 6.1.46 RelationshipType

Relationstyp

| Värde | Beskrivning |
| :--- | :--- |
| "B" | Barn |
| "MO" | Moder |
| "FA" | Fader |
| "F" | Förälder |
| "V" | Vårdnadshavare |
| "VF" | Vårdnadshavare för |
| "M" | Make/maka |
| "P" | Partner |

#### 6.1.47 ResidentialAddress

Svensk adress

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careOf | String40 | Care of adress | 0..1 |
| postalAddress1 | String40 | Utdelningsadress1 | 0..1 |
| postalAddress2 | String40 | Utdelningsadress2 | 0..1 |
| postalCode | PostalCode | Postnummer | 0..1 |
| city | String40 | Postort | 0..1 |

#### 6.1.48 String2

Strängvärde med maxlängd

#### 6.1.49 String40

Strängvärde med maxlängd

#### 6.1.50 String80

Strängvärde med maxlängd

### 6.2 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| Kodverk | Koder | CodeSystem | ValueSet |
|---|---|---|---|
| Statuskod för medborgarskap (`CitizenshipStatusType`) | NY, RD, AS, AN | [masterdata-citizen-citizen-citizenshipstatus-cs](CodeSystem-masterdata-citizen-citizen-citizenshipstatus-cs.html) | [masterdata-citizen-citizen-citizenshipstatus-vs](ValueSet-masterdata-citizen-citizen-citizenshipstatus-vs.html) |
| Datumformat (noggrannhet) (`DateTypeFormatType`) | YYYY, YYYY-MM, YYYY-MM-DD | [masterdata-citizen-citizen-datetypeformat-cs](CodeSystem-masterdata-citizen-citizen-datetypeformat-cs.html) | [masterdata-citizen-citizen-datetypeformat-vs](ValueSet-masterdata-citizen-citizen-datetypeformat-vs.html) |
| Kod för avregistreringsorsak (`DeregistrationReasonCodeType`) | AV, UV, GN, AN, AS, GS, OB, TA | [masterdata-citizen-citizen-deregistrationreasoncode-cs](CodeSystem-masterdata-citizen-citizen-deregistrationreasoncode-cs.html) | [masterdata-citizen-citizen-deregistrationreasoncode-vs](ValueSet-masterdata-citizen-citizen-deregistrationreasoncode-vs.html) |
| Profil (`LookupProfileType`) | P1, P2, P3, P4, P5, P6, P7, P8, P9, P10 | [masterdata-citizen-citizen-lookupprofile-cs](CodeSystem-masterdata-citizen-citizen-lookupprofile-cs.html) | [masterdata-citizen-citizen-lookupprofile-vs](ValueSet-masterdata-citizen-citizen-lookupprofile-vs.html) |
| Civilståndskod (`MaritalStatusCodeType`) | OG, G, A, S, RP, SP, EP | [masterdata-citizen-citizen-maritalstatuscode-cs](CodeSystem-masterdata-citizen-citizen-maritalstatuscode-cs.html) | [masterdata-citizen-citizen-maritalstatuscode-vs](ValueSet-masterdata-citizen-citizen-maritalstatuscode-vs.html) |
| Kod för folkbokföringskategori (`PopulationRegistrationTypeType`) | FB, UV, OB | [masterdata-citizen-citizen-populationregistrationtype-cs](CodeSystem-masterdata-citizen-citizen-populationregistrationtype-cs.html) | [masterdata-citizen-citizen-populationregistrationtype-vs](ValueSet-masterdata-citizen-citizen-populationregistrationtype-vs.html) |
| Statuskod för relation (`RelationshipStatusType`) | NY, PB, RD, AS, AV, IV, AN | [masterdata-citizen-citizen-relationshipstatus-cs](CodeSystem-masterdata-citizen-citizen-relationshipstatus-cs.html) | [masterdata-citizen-citizen-relationshipstatus-vs](ValueSet-masterdata-citizen-citizen-relationshipstatus-vs.html) |
| Relationstyp (`RelationshipTypeType`) | B, MO, FA, F, V, VF, M, P | [masterdata-citizen-citizen-relationshiptype-cs](CodeSystem-masterdata-citizen-citizen-relationshiptype-cs.html) | [masterdata-citizen-citizen-relationshiptype-vs](ValueSet-masterdata-citizen-citizen-relationshiptype-vs.html) |

### 6.3 Typer i domänschemat (XSD)

Genererat ur [masterdata_citizen_citizen_2.0.xsd](masterdata_citizen_citizen_2.0.xsd).

#### AddressAbroadType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Utlandsadress

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| postalAddress1 | String40 |  | 0..1 |
| postalAddress2 | String40 |  | 0..1 |
| postalAddress3 | String40 |  | 0..1 |
| country | String40 |  | 0..1 |
| addressAbroadDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| votingDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

#### AddressInformationType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för adressuppgifter

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |
| nationalKeys | NationalKeysType | Riksnycklar | 0..1 |
| district | DistrictType | Grupp för Distriktskod | 0..1 |
| specialPostalAddress | ResidentialAddressType | Svensk adress | 0..1 |
| addressAbroad | AddressAbroadType | Utlandsadress | 0..1 |

#### BirthAbroadType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Uppgifter om födelse i utlandet

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | PlaceOfBirthAbroadType | Födelseort utland | 0..1 |
| countryOfBirth | String40 |  | 0..1 |

#### BirthType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Uppgifter om födelse

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthSweden | PlaceOfBirthSwedenType | Uppgifter om hemort i Sverige | 0..1 |
| birthAbroad | BirthAbroadType | Uppgifter om födelse i utlandet | 0..1 |

#### CitizenshipCountryCodeType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för medborgarskapslandkod

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| countryCode | CountryCode |  | 0..1 |
| attested | boolean |  | 0..1 |

#### CitizenshipType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för medborgarskap

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| citizenshipCountryCode | CitizenshipCountryCodeType | Grupp för medborgarskapslandkod | 0..1 |
| citizenshipDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| status | CitizenshipStatusType |  | 0..1 |

#### DeregistrationType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Uppgifter om avregistrering

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| deregistrationReasonCode | DeregistrationReasonCodeType |  | 0..1 |
| deregistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

#### DistrictType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för Distriktskod

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| districtCode | DistrictCode |  | 0..1 |

#### HistoricalAddressType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för historik adress

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| residentialAddress | ResidentialAddressType | Svensk adress | 0..1 |

#### HistoricalRecordsType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för historik

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..* |
| historicalAddress | HistoricalAddressType | Grupp för historik adress | 0..1 |

#### ImmigrationIdentityType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentityNumber | PersonalIdentityNumber |  | 1..1 |
| country | CountryCode |  | 1..1 |

#### ImmigrationType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för invandringsuppgifter

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| immigrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| rightOfResidence | boolean |  | 0..1 |
| immigrationIdentity | ImmigrationIdentityType | Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo | 0..* |

#### LookupResidentsResponseType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Returtyp för operationen lookupResidentsForProfile

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationRecords | PopulationRegistrationRecordType | Folkbokföringspost | 0..* |

#### MaritalStatusType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Civistånd

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| maritalStatusCode | MaritalStatusCodeType |  | 0..1 |
| maritalStatusDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

#### NamePartType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för del av namn där delen kan vara styrkt eller ej

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| name | String80 |  | 0..1 |
| attested | boolean |  | 0..1 |

#### NameType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Namn

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| givenNameIndicator | GivenNameIndicator |  | 0..1 |
| givenName | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| middleName | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| surname | NamePartType | Grupp för del av namn där delen kan vara styrkt eller ej | 0..1 |
| notificationName | String40 |  | 0..1 |

#### NationalKeysType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Riksnycklar

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| propertyId | PropertyId |  | 0..1 |
| addressPlaceId | AddressPlaceId |  | 0..1 |
| apartmentId | ApartmentId |  | 0..1 |

#### NotificationCaseType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Ärendeuppgifter

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| recordId | RecordId |  | 0..1 |
| notificationType | String40 |  | 0..1 |
| modificationTime | dateTime |  | 0..1 |
| totalRecord | boolean |  | 0..1 |
| notificationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

#### PartialDateType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Kan beskriva ett datum med variabel noggrannhet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| format | DateTypeFormatType |  | 1..1 |
| value | PartialDateValue |  | 1..1 |

#### PersonalIdentityType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Personidentitet

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | PersonalIdentityNumber |  | 1..1 |
| type | string |  | 1..1 |

#### PersonalRecordType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för personpost

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | PersonalIdentityType | Personidentitet | 0..1 |
| referredPersonalIdentity | PersonalIdentityType | Personidentitet | 0..* |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| name | NameType | Namn | 0..1 |
| populationRegistrationLocality | PopulationRegistrationLocalityType | Uppgifter om folkbokföring | 0..1 |
| addressInformation | AddressInformationType | Grupp för adressuppgifter | 0..1 |
| maritalStatus | MaritalStatusType | Civistånd | 0..1 |
| birth | BirthType | Uppgifter om födelse | 0..1 |
| immigration | ImmigrationType | Grupp för invandringsuppgifter | 0..1 |
| relationships | RelationshipType | Grupp för relation | 0..* |
| citizenship | CitizenshipType | Grupp för medborgarskap | 0..* |

#### PlaceOfBirthAbroadType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Födelseort utland

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| placeOfBirthAbroad | String80 |  | 0..1 |
| attested | boolean |  | 0..1 |

#### PlaceOfBirthSwedenType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Uppgifter om hemort i Sverige

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| birthCountyCode | String2 |  | 0..1 |
| birthParish | String40 |  | 0..1 |

#### PopulationRegistrationLocalityType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Uppgifter om folkbokföring

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| populationRegistrationDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| countyCode | String2 |  | 0..1 |
| municipalityCode | String2 |  | 0..1 |
| parishCode | String2 |  | 0..1 |
| propertyDesignation | String40 |  | 0..1 |
| fictitiousPropertyNumber | FictitiousPropertyNumber |  | 0..1 |
| populationRegistrationType | PopulationRegistrationTypeType |  | 0..1 |

#### PopulationRegistrationRecordType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Folkbokföringspost

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| protectedPersonIndicator | boolean |  | 1..1 |
| testIndicator | boolean |  | 1..1 |
| syncronizationTime | dateTime |  | 0..1 |
| notificationCase | NotificationCaseType | Ärendeuppgifter | 0..1 |
| personalRecord | PersonalRecordType | Grupp för personpost | 1..1 |
| historicalRecords | HistoricalRecordsType | Grupp för historik | 0..1 |

#### RelationshipIdType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalIdentity | PersonalIdentityType | Personidentitet | 0..1 |
| dateOfBirth | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |

#### RelationshipType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Grupp för relation

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| relationshipId | RelationshipIdType | Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes. | 1..1 |
| relationshipType | RelationshipTypeType |  | 1..1 |
| relationshipFromDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| relationshipToDate | PartialDateType | Kan beskriva ett datum med variabel noggrannhet. | 0..1 |
| name | NameType | Namn | 0..1 |
| deregistration | DeregistrationType | Uppgifter om avregistrering | 0..1 |
| status | RelationshipStatusType |  | 0..1 |

#### ResidentialAddressType

Domänschema `masterdata_citizen_citizen_2.0.xsd` (namnrymd `urn:riv:masterdata:citizen:citizen:2`).

Svensk adress

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careOf | String40 |  | 0..1 |
| postalAddress1 | String40 |  | 0..1 |
| postalAddress2 | String40 |  | 0..1 |
| postalCode | PostalCode |  | 0..1 |
| city | String40 |  | 0..1 |

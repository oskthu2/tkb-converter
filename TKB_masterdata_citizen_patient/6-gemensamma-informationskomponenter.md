# 6 Gemensamma informationskomponenter - masterdata: citizen: patient v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* **6 Gemensamma informationskomponenter**

## 6 Gemensamma informationskomponenter

# 6 Gemensamma informationskomponenter

Källa: **Tjänstekontraktsbeskrivning masterdata: citizen: patient**, version 1.0_RC1 (2017-01-26), [TKB_masterdata_citizen_patient.docx](TKB_masterdata_citizen_patient.docx). Dokumentet är till stor del en ej ifylld mall; texten återges ordagrant och fältreglerna enligt schemat finns i avsnitt 7.

**SAKNAS I KÄLLDOKUMENT**: TKB:n har inget kapitel om gemensamma informationskomponenter, och avsnitt 5 innehåller bara mallens platshållare. Kodverken och typerna nedan är hämtade ur domänschemana.

### 6.1 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| | | | |
| :--- | :--- | :--- | :--- |
| Resultatkod (`ResultCodeEnumType`) | OK, ERROR, INFO | [masterdata-citizen-patient-resultcodeenum-cs](CodeSystem-masterdata-citizen-patient-resultcodeenum-cs.md) | [masterdata-citizen-patient-resultcodeenum-vs](ValueSet-masterdata-citizen-patient-resultcodeenum-vs.md) |
| Typ av närståenderelation (`TypeOfCloseRelationEnum`) | 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 | [masterdata-citizen-patient-typeofcloserelation-cs](CodeSystem-masterdata-citizen-patient-typeofcloserelation-cs.md) | [masterdata-citizen-patient-typeofcloserelation-vs](ValueSet-masterdata-citizen-patient-typeofcloserelation-vs.md) |
| Typ av kontakt (`TypeOfContactEnum`) | 1, 2 | [masterdata-citizen-patient-typeofcontact-cs](CodeSystem-masterdata-citizen-patient-typeofcontact-cs.md) | [masterdata-citizen-patient-typeofcontact-vs](ValueSet-masterdata-citizen-patient-typeofcontact-vs.md) |
| Kodverk för typ av kontaktrelation (`TypeOfContactRelationCodeSystemEnum`) | 1.2.752.129.2.2.1.24, 1.2.752.129.2.2.1.8, 1.2.752.129.2.2.1.23 | [masterdata-citizen-patient-typeofcontactrelationcodesystem-cs](CodeSystem-masterdata-citizen-patient-typeofcontactrelationcodesystem-cs.md) | [masterdata-citizen-patient-typeofcontactrelationcodesystem-vs](ValueSet-masterdata-citizen-patient-typeofcontactrelationcodesystem-vs.md) |
| Typ av släktrelation (`TypeOfRelativeEnum`) | 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 | [masterdata-citizen-patient-typeofrelative-cs](CodeSystem-masterdata-citizen-patient-typeofrelative-cs.md) | [masterdata-citizen-patient-typeofrelative-vs](ValueSet-masterdata-citizen-patient-typeofrelative-vs.md) |
| Typ av företrädare (`TypeOfRepresentativeEnum`) | 1, 2, 3, 4, 5 | [masterdata-citizen-patient-typeofrepresentative-cs](CodeSystem-masterdata-citizen-patient-typeofrepresentative-cs.md) | [masterdata-citizen-patient-typeofrepresentative-vs](ValueSet-masterdata-citizen-patient-typeofrepresentative-vs.md) |
| Typ av telekommunikation (kontaktperson) (`TypeOfTelecomContactPersonEnum`) | 1, 2, 3, 4 | [masterdata-citizen-patient-typeoftelecomcontactperson-cs](CodeSystem-masterdata-citizen-patient-typeoftelecomcontactperson-cs.md) | [masterdata-citizen-patient-typeoftelecomcontactperson-vs](ValueSet-masterdata-citizen-patient-typeoftelecomcontactperson-vs.md) |
| Typ av telekommunikation (patient) (`TypeOfTelecomPatientEnum`) | 1, 2, 3, 4, 5 | [masterdata-citizen-patient-typeoftelecompatient-cs](CodeSystem-masterdata-citizen-patient-typeoftelecompatient-cs.md) | [masterdata-citizen-patient-typeoftelecompatient-vs](ValueSet-masterdata-citizen-patient-typeoftelecompatient-vs.md) |

### 6.2 Typer i domänschemat (XSD)

Genererat ur [masterdata_citizen_patient_1.0.xsd](masterdata_citizen_patient_1.0.xsd) och [masterdata_citizen_patient_enum_1.0.xsd](masterdata_citizen_patient_enum_1.0.xsd).

#### AddressType

Domänschema `masterdata_citizen_patient_1.0.xsd` (namnrymd `urn:riv:masterdata:citizen:patient:1`).

Enstaka adress som ingår i adresslista Adress standarden SS 6134 01 (RIV/VTIM 2.2 har fler adressrader än vad som förekommer för svenska adress format i ref 8, samt ref 9.) I första version av tjänstekontrakt är adressformat rejält förenklat för kontaktpersons adress. co : T ex c/o Malte Lindeman adress_1 : Gatunamn och nr, eller box adress postnummer : NNN NN postort : Stad eller motsvarande

| | | | |
| :--- | :--- | :--- | :--- |
| co | string |   | 0..1 |
| address | string |   | 1..1 |
| zipCode | string |   | 1..1 |
| city | string |   | 1..1 |

#### ContactInfoType

Domänschema `masterdata_citizen_patient_1.0.xsd` (namnrymd `urn:riv:masterdata:citizen:patient:1`).

typ_av_telekom : Anger vilken typ av internet/telefoni-kommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). 5 - Epost - Defineras enligt RFC 5322 Internet message format !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om tele- e-Kom adress t.ex. är privat eller till arbetet kv teleekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer_eller_elektronisk_adress : Tele-/Mobil-/Sökare-/Fax-nummer eller elektronisk adress kommentar : Övrig kontaktuppgift per telnr/email

| | | | |
| :--- | :--- | :--- | :--- |
| telecomType | TypeOfTelecomPatientEnum |   | 1..1 |
| contactType | TypeOfContactEnum |   | 0..1 |
| numberOrElectronicalAddress | string |   | 1..1 |
| comment | string |   | 0..1 |
| otherContactInfo | OtherContactInfoType | completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format. | 0..1 |

#### ContactPersonTelephoneContactInfoType

Domänschema `masterdata_citizen_patient_1.0.xsd` (namnrymd `urn:riv:masterdata:citizen:patient:1`).

Kontaktpersonens telefonnummer typ_av_telekom : Anger vilken typ av telefonikommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). !5! - !Epost! - !SKA INTE ANVÄNDAS FÖR KONTAKTPERSONER! !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om telefonnummer t.ex. är privat eller till arbetet kv tele ekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer : Tele-/Mobil-/Sökare-/Fax-nummer kommentar : Övrig kontaktuppgift per telnr/email

| | | | |
| :--- | :--- | :--- | :--- |
| telecomType | TypeOfTelecomContactPersonEnum |   | 1..1 |
| contactType | TypeOfContactEnum |   | 0..1 |
| numberOrElectronicalAddress | string |   | 1..1 |
| comment | string |   | 0..1 |
| otherContactInfo | OtherContactInfoType | completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format. | 0..1 |

#### ContactPersonType

Domänschema `masterdata_citizen_patient_1.0.xsd` (namnrymd `urn:riv:masterdata:citizen:patient:1`).

Kontaktperson relationType : Val av kategori(OID), och inom denna val av kod. (När OID för kodverk ”relationskategori” fastställs, så kan även den nyttjas för att erbjuda alternativet: kod=4, klartext=”Annan”) kv närståenderelation OID: 1.2.752.129.2.2.1.8 kv släktrelation OID: 1.2.752.129.2.2.1.24 kv företrädare OID: 1.2.752.129.2.2.1.23 rangordning : Ordningsnummer enligt patienten. Från 1 och uppåt sekventiellt. Övrig kontaktinformation: … Från Kontaktperson med person-data förnamn: SKV 717, men förenklat här. efternamn: SKV 717, men förenklat här. kontaktperson_adresser: Lista med kontaktpersonens post-/besöks-adresser. (Tjänsteprotokollet är förenklat till max en adress för kontaktperson.) kontaktperson_telefon_lista: Nummer som kontaktpersonen är nåbar på. Kan vara privat telefonnummer eller arbetsnummer. kommentar: Övrig kontaktuppgift (?) för kontaktperson. Fri text giltighetstid: Tidsperiod för när aktuell relation till patienten gäller, både start och slutdatum ingår i intervallet. (Format ÅÅÅÅMMDD) får kontaktas: Anger om person eller enhet får lov att kontaktas kontakttid: Anger eventuella telefontider eller dyl då kontakt kan göras

| | | | |
| :--- | :--- | :--- | :--- |
| relationType | ContactRelationType | codeSystem: Släkt relation (OID 1.2.752.129.2.2.1.24) Närstående relation (OID 1.2.752.129.2.2.1.8) Företrädare (OID 1.2.752.129.2.2.1.23) code: Any code valid in the given codeSystem, for more info see urn:riv:masterdata:citizen:patient:enums:1:TypeOfRelativeEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfCloseRelationEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfRepresentativeEnum | 1..1 |
| rank | int |   | 1..1 |
| otherContactInfo | OtherContactInfoType | completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format. | 0..1 |
| firstName | string |   | 1..1 |
| lastName | string |   | 1..1 |
| contactPersonAddress | AddressType | Enstaka adress som ingår i adresslista Adress standarden SS 6134 01 (RIV/VTIM 2.2 har fler adressrader än vad som förekommer för svenska adress format i ref 8, samt ref 9.) I första version av tjänstekontrakt är adressformat rejält förenklat för kontaktpersons adress. co : T ex c/o Malte Lindeman adress_1 : Gatunamn och nr, eller box adress postnummer : NNN NN postort : Stad eller motsvarande | 0..1 |
| contactInformation | ContactPersonTelephoneContactInfoType | Kontaktpersonens telefonnummer typ_av_telekom : Anger vilken typ av telefonikommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). !5! - !Epost! - !SKA INTE ANVÄNDAS FÖR KONTAKTPERSONER! !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om telefonnummer t.ex. är privat eller till arbetet kv tele ekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer : Tele-/Mobil-/Sökare-/Fax-nummer kommentar : Övrig kontaktuppgift per telnr/email | 0..* |
| comment | string |   | 0..1 |
| periodOfValidity | DatePeriodType | Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD | 0..1 |
| contactAllowed | boolean |   | 1..1 |
| contactTime | string |   | 0..1 |

#### ContactRelationType

Domänschema `masterdata_citizen_patient_1.0.xsd` (namnrymd `urn:riv:masterdata:citizen:patient:1`).

codeSystem: Släkt relation (OID 1.2.752.129.2.2.1.24) Närstående relation (OID 1.2.752.129.2.2.1.8) Företrädare (OID 1.2.752.129.2.2.1.23) code: Any code valid in the given codeSystem, for more info see urn:riv:masterdata:citizen:patient:enums:1:TypeOfRelativeEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfCloseRelationEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfRepresentativeEnum

| | | | |
| :--- | :--- | :--- | :--- |
| code | TypeOfContactRelationEnum | Union av kodverken TypeOfRelativeEnum, TypeOfCloseRelationEnum, TypeOfRepresentativeEnum. | 1..1 |
| codeSystem | TypeOfContactRelationCodeSystemEnum |   | 1..1 |

#### DatePeriodType

Domänschema `masterdata_citizen_patient_1.0.xsd` (namnrymd `urn:riv:masterdata:citizen:patient:1`).

Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD

| | | | |
| :--- | :--- | :--- | :--- |
| start | DateType |   | 1..1 |
| end | DateType |   | 1..1 |

#### IIType

Domänschema `masterdata_citizen_patient_1.0.xsd` (namnrymd `urn:riv:masterdata:citizen:patient:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| root | string |   | 1..1 |
| extension | string |   | 0..1 |

#### OtherContactInfoType

Domänschema `masterdata_citizen_patient_1.0.xsd` (namnrymd `urn:riv:masterdata:citizen:patient:1`).

completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format.

| | | | |
| :--- | :--- | :--- | :--- |
| completingContactInfo | string |   | 1..1 |

#### PatientType

Domänschema `masterdata_citizen_patient_1.0.xsd` (namnrymd `urn:riv:masterdata:citizen:patient:1`).

person_ID : Nationell identifikation på personen. Dock ej reservnummer. kommentar : Övrig kontaktuppgift för patient. Fri text

| | | | |
| :--- | :--- | :--- | :--- |
| id | IIType |   | 1..1 |
| comment | string |   | 0..1 |


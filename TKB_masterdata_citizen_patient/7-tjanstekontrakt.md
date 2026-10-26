# 7 Tjänstekontrakt - masterdata: citizen: patient v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

Källa: **Tjänstekontraktsbeskrivning masterdata: citizen: patient**, version 1.0_RC1 (2017-01-26), [TKB_masterdata_citizen_patient.docx](TKB_masterdata_citizen_patient.docx). Dokumentet är till stor del en ej ifylld mall; texten återges ordagrant och fältreglerna enligt schemat finns i avsnitt 7.

Motsvarar TKB kapitel 6 **Tjänstekontrakt** (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### GetPatientContactInformation

Kontraktet används för att hämta kontaktuppgifter för en patient.

#### 7.1.1 Version

1.0

#### 7.1.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| patientId | IIType | Beskrivning | 1..1 |
| ../root | string |   |   |
| ../extension | string |   |   |

| | | | |
| :--- | :--- | :--- | :--- |
| Svarselemet *) | Typ | Beskrivning | 1 |

#### 7.1.3 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Fält 1 - Svarselement

Beskrivning av regel för detta element.

##### 7.1.3.1 Icke funktionella krav

Här skall de verksamhatskrav som gäller för aktuellt tjänstekonterakt beskrivas.

###### 7.1.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

Ange krav som avviker från de generella kraven som specificerats i kapitel 4.

#### 7.1.4 Annan information om kontraktet

Abcde….

#### 7.1.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| patientId | IIType |   | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| **Svar** |   |   |   |
| lastUpdatedBy | IIType |   | 0..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| lastUpdatedTime | TimeStampType |   | 0..1 |
| patient | PatientType | person_ID : Nationell identifikation på personen. Dock ej reservnummer. kommentar : Övrig kontaktuppgift för patient. Fri text | 0..1 |
| ../id | IIType |   | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../comment | string |   | 0..1 |
| contactInformation | ContactInfoType | typ_av_telekom : Anger vilken typ av internet/telefoni-kommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). 5 - Epost - Defineras enligt RFC 5322 Internet message format !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om tele- e-Kom adress t.ex. är privat eller till arbetet kv teleekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer_eller_elektronisk_adress : Tele-/Mobil-/Sökare-/Fax-nummer eller elektronisk adress kommentar : Övrig kontaktuppgift per telnr/email | 0..* |
| ../telecomType | TypeOfTelecomPatientEnum |   | 1..1 |
| ../contactType | TypeOfContactEnum |   | 0..1 |
| ../numberOrElectronicalAddress | string |   | 1..1 |
| ../comment | string |   | 0..1 |
| ../otherContactInfo | OtherContactInfoType | completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format. | 0..1 |
| ../../completingContactInfo | string |   | 1..1 |
| contactPerson | ContactPersonType | Kontaktperson relationType : Val av kategori(OID), och inom denna val av kod. (När OID för kodverk ”relationskategori” fastställs, så kan även den nyttjas för att erbjuda alternativet: kod=4, klartext=”Annan”) kv närståenderelation OID: 1.2.752.129.2.2.1.8 kv släktrelation OID: 1.2.752.129.2.2.1.24 kv företrädare OID: 1.2.752.129.2.2.1.23 rangordning : Ordningsnummer enligt patienten. Från 1 och uppåt sekventiellt. Övrig kontaktinformation: … Från Kontaktperson med person-data förnamn: SKV 717, men förenklat här. efternamn: SKV 717, men förenklat här. kontaktperson_adresser: Lista med kontaktpersonens post-/besöks-adresser. (Tjänsteprotokollet är förenklat till max en adress för kontaktperson.) kontaktperson_telefon_lista: Nummer som kontaktpersonen är nåbar på. Kan vara privat telefonnummer eller arbetsnummer. kommentar: Övrig kontaktuppgift (?) för kontaktperson. Fri text giltighetstid: Tidsperiod för när aktuell relation till patienten gäller, både start och slutdatum ingår i intervallet. (Format ÅÅÅÅMMDD) får kontaktas: Anger om person eller enhet får lov att kontaktas kontakttid: Anger eventuella telefontider eller dyl då kontakt kan göras | 0..* |
| ../relationType | ContactRelationType | codeSystem: Släkt relation (OID 1.2.752.129.2.2.1.24) Närstående relation (OID 1.2.752.129.2.2.1.8) Företrädare (OID 1.2.752.129.2.2.1.23) code: Any code valid in the given codeSystem, for more info see urn:riv:masterdata:citizen:patient:enums:1:TypeOfRelativeEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfCloseRelationEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfRepresentativeEnum | 1..1 |
| ../../code | TypeOfContactRelationEnum | Union av kodverken TypeOfRelativeEnum, TypeOfCloseRelationEnum, TypeOfRepresentativeEnum. | 1..1 |
| ../../codeSystem | TypeOfContactRelationCodeSystemEnum |   | 1..1 |
| ../rank | int |   | 1..1 |
| ../otherContactInfo | OtherContactInfoType | completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format. | 0..1 |
| ../../completingContactInfo | string |   | 1..1 |
| ../firstName | string |   | 1..1 |
| ../lastName | string |   | 1..1 |
| ../contactPersonAddress | AddressType | Enstaka adress som ingår i adresslista Adress standarden SS 6134 01 (RIV/VTIM 2.2 har fler adressrader än vad som förekommer för svenska adress format i ref 8, samt ref 9.) I första version av tjänstekontrakt är adressformat rejält förenklat för kontaktpersons adress. co : T ex c/o Malte Lindeman adress_1 : Gatunamn och nr, eller box adress postnummer : NNN NN postort : Stad eller motsvarande | 0..1 |
| ../../co | string |   | 0..1 |
| ../../address | string |   | 1..1 |
| ../../zipCode | string |   | 1..1 |
| ../../city | string |   | 1..1 |
| ../contactInformation | ContactPersonTelephoneContactInfoType | Kontaktpersonens telefonnummer typ_av_telekom : Anger vilken typ av telefonikommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). !5! - !Epost! - !SKA INTE ANVÄNDAS FÖR KONTAKTPERSONER! !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om telefonnummer t.ex. är privat eller till arbetet kv tele ekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer : Tele-/Mobil-/Sökare-/Fax-nummer kommentar : Övrig kontaktuppgift per telnr/email | 0..* |
| ../../telecomType | TypeOfTelecomContactPersonEnum |   | 1..1 |
| ../../contactType | TypeOfContactEnum |   | 0..1 |
| ../../numberOrElectronicalAddress | string |   | 1..1 |
| ../../comment | string |   | 0..1 |
| ../../otherContactInfo | OtherContactInfoType | completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format. | 0..1 |
| ../../../completingContactInfo | string |   | 1..1 |
| ../comment | string |   | 0..1 |
| ../periodOfValidity | DatePeriodType | Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD | 0..1 |
| ../../start | DateType |   | 1..1 |
| ../../end | DateType |   | 1..1 |
| ../contactAllowed | boolean |   | 1..1 |
| ../contactTime | string |   | 0..1 |
| version | long |   | 0..1 |

#### 7.1.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:masterdata:citizen:patient:GetPatientContactInformationResponder:1:GetPatientContactInformation`

#### 7.1.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetPatientContactInformationInteraction_1.0_RIVTABP21.wsdl](GetPatientContactInformationInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetPatientContactInformationResponder_1.0.xsd](GetPatientContactInformationResponder_1.0.xsd) | Tjänsteschema |
| [masterdata_citizen_patient_1.0.xsd](masterdata_citizen_patient_1.0.xsd) | Domänschema (delat) |
| [masterdata_citizen_patient_enum_1.0.xsd](masterdata_citizen_patient_enum_1.0.xsd) | Domänschema, uppräkningar (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [GetPatientContactInformationResponder_request.xml](GetPatientContactInformationResponder_request.xml) | Exempel på begäran |
| [GetPatientContactInformationResponder_response.xml](GetPatientContactInformationResponder_response.xml) | Exempel på svar |

#### 7.1.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getpatientcontactinformation-request](StructureDefinition-getpatientcontactinformation-request.md)
* **Logisk modell (response):** [StructureDefinition/getpatientcontactinformation](StructureDefinition-getpatientcontactinformation.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeofcloserelation-cs](CodeSystem-masterdata-citizen-patient-typeofcloserelation-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeofcloserelation-vs](ValueSet-masterdata-citizen-patient-typeofcloserelation-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeofcontact-cs](CodeSystem-masterdata-citizen-patient-typeofcontact-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeofcontact-vs](ValueSet-masterdata-citizen-patient-typeofcontact-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeofcontactrelationcodesystem-cs](CodeSystem-masterdata-citizen-patient-typeofcontactrelationcodesystem-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeofcontactrelationcodesystem-vs](ValueSet-masterdata-citizen-patient-typeofcontactrelationcodesystem-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeofrelative-cs](CodeSystem-masterdata-citizen-patient-typeofrelative-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeofrelative-vs](ValueSet-masterdata-citizen-patient-typeofrelative-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeofrepresentative-cs](CodeSystem-masterdata-citizen-patient-typeofrepresentative-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeofrepresentative-vs](ValueSet-masterdata-citizen-patient-typeofrepresentative-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeoftelecomcontactperson-cs](CodeSystem-masterdata-citizen-patient-typeoftelecomcontactperson-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeoftelecomcontactperson-vs](ValueSet-masterdata-citizen-patient-typeoftelecomcontactperson-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeoftelecompatient-cs](CodeSystem-masterdata-citizen-patient-typeoftelecompatient-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeoftelecompatient-vs](ValueSet-masterdata-citizen-patient-typeoftelecompatient-vs.md)

### UpdatePatientContactInformation

Kontraktet används för att hämta kontaktuppgifter för en patient.

#### 7.2.1 Version

1.0

#### 7.2.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| Element | Typ | Beskrivning | 1..1 |

| | | | |
| :--- | :--- | :--- | :--- |
| Svarselemet *) | Typ | Beskrivning | 1 |

#### 7.2.3 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Fält 1 - Svarselement

Beskrivning av regel för detta element.

##### 7.2.3.1 Icke funktionella krav

Inga funktionella krav.

###### 7.2.3.1.1 SLA-krav

Inga avvikande SLA-krav gentemot kapitel 4.2

#### 7.2.4 Annan information om kontraktet

#### 7.2.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| editor | IIType |   | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| patient | PatientType | person_ID : Nationell identifikation på personen. Dock ej reservnummer. kommentar : Övrig kontaktuppgift för patient. Fri text | 1..1 |
| ../id | IIType |   | 1..1 |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |
| ../comment | string |   | 0..1 |
| contactInformation | ContactInfoType | typ_av_telekom : Anger vilken typ av internet/telefoni-kommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). 5 - Epost - Defineras enligt RFC 5322 Internet message format !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om tele- e-Kom adress t.ex. är privat eller till arbetet kv teleekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer_eller_elektronisk_adress : Tele-/Mobil-/Sökare-/Fax-nummer eller elektronisk adress kommentar : Övrig kontaktuppgift per telnr/email | 0..* |
| ../telecomType | TypeOfTelecomPatientEnum |   | 1..1 |
| ../contactType | TypeOfContactEnum |   | 0..1 |
| ../numberOrElectronicalAddress | string |   | 1..1 |
| ../comment | string |   | 0..1 |
| ../otherContactInfo | OtherContactInfoType | completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format. | 0..1 |
| ../../completingContactInfo | string |   | 1..1 |
| contactPerson | ContactPersonType | Kontaktperson relationType : Val av kategori(OID), och inom denna val av kod. (När OID för kodverk ”relationskategori” fastställs, så kan även den nyttjas för att erbjuda alternativet: kod=4, klartext=”Annan”) kv närståenderelation OID: 1.2.752.129.2.2.1.8 kv släktrelation OID: 1.2.752.129.2.2.1.24 kv företrädare OID: 1.2.752.129.2.2.1.23 rangordning : Ordningsnummer enligt patienten. Från 1 och uppåt sekventiellt. Övrig kontaktinformation: … Från Kontaktperson med person-data förnamn: SKV 717, men förenklat här. efternamn: SKV 717, men förenklat här. kontaktperson_adresser: Lista med kontaktpersonens post-/besöks-adresser. (Tjänsteprotokollet är förenklat till max en adress för kontaktperson.) kontaktperson_telefon_lista: Nummer som kontaktpersonen är nåbar på. Kan vara privat telefonnummer eller arbetsnummer. kommentar: Övrig kontaktuppgift (?) för kontaktperson. Fri text giltighetstid: Tidsperiod för när aktuell relation till patienten gäller, både start och slutdatum ingår i intervallet. (Format ÅÅÅÅMMDD) får kontaktas: Anger om person eller enhet får lov att kontaktas kontakttid: Anger eventuella telefontider eller dyl då kontakt kan göras | 0..* |
| ../relationType | ContactRelationType | codeSystem: Släkt relation (OID 1.2.752.129.2.2.1.24) Närstående relation (OID 1.2.752.129.2.2.1.8) Företrädare (OID 1.2.752.129.2.2.1.23) code: Any code valid in the given codeSystem, for more info see urn:riv:masterdata:citizen:patient:enums:1:TypeOfRelativeEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfCloseRelationEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfRepresentativeEnum | 1..1 |
| ../../code | TypeOfContactRelationEnum | Union av kodverken TypeOfRelativeEnum, TypeOfCloseRelationEnum, TypeOfRepresentativeEnum. | 1..1 |
| ../../codeSystem | TypeOfContactRelationCodeSystemEnum |   | 1..1 |
| ../rank | int |   | 1..1 |
| ../otherContactInfo | OtherContactInfoType | completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format. | 0..1 |
| ../../completingContactInfo | string |   | 1..1 |
| ../firstName | string |   | 1..1 |
| ../lastName | string |   | 1..1 |
| ../contactPersonAddress | AddressType | Enstaka adress som ingår i adresslista Adress standarden SS 6134 01 (RIV/VTIM 2.2 har fler adressrader än vad som förekommer för svenska adress format i ref 8, samt ref 9.) I första version av tjänstekontrakt är adressformat rejält förenklat för kontaktpersons adress. co : T ex c/o Malte Lindeman adress_1 : Gatunamn och nr, eller box adress postnummer : NNN NN postort : Stad eller motsvarande | 0..1 |
| ../../co | string |   | 0..1 |
| ../../address | string |   | 1..1 |
| ../../zipCode | string |   | 1..1 |
| ../../city | string |   | 1..1 |
| ../contactInformation | ContactPersonTelephoneContactInfoType | Kontaktpersonens telefonnummer typ_av_telekom : Anger vilken typ av telefonikommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). !5! - !Epost! - !SKA INTE ANVÄNDAS FÖR KONTAKTPERSONER! !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om telefonnummer t.ex. är privat eller till arbetet kv tele ekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer : Tele-/Mobil-/Sökare-/Fax-nummer kommentar : Övrig kontaktuppgift per telnr/email | 0..* |
| ../../telecomType | TypeOfTelecomContactPersonEnum |   | 1..1 |
| ../../contactType | TypeOfContactEnum |   | 0..1 |
| ../../numberOrElectronicalAddress | string |   | 1..1 |
| ../../comment | string |   | 0..1 |
| ../../otherContactInfo | OtherContactInfoType | completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format. | 0..1 |
| ../../../completingContactInfo | string |   | 1..1 |
| ../comment | string |   | 0..1 |
| ../periodOfValidity | DatePeriodType | Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD | 0..1 |
| ../../start | DateType |   | 1..1 |
| ../../end | DateType |   | 1..1 |
| ../contactAllowed | boolean |   | 1..1 |
| ../contactTime | string |   | 0..1 |
| version | long |   | 1..1 |
| **Svar** |   |   |   |
| message | string |   | 0..1 |
| resultCode | ResultCodeEnumType |   | 1..1 |

#### 7.2.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:masterdata:citizen:patient:UpdatePatientContactInformationResponder:1:UpdatePatientContactInformation`

#### 7.2.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [UpdatePatientContactInformationInteraction_1.0_RIVTABP21.wsdl](UpdatePatientContactInformationInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [UpdatePatientContactInformationResponder_1.0.xsd](UpdatePatientContactInformationResponder_1.0.xsd) | Tjänsteschema |
| [masterdata_citizen_patient_1.0.xsd](masterdata_citizen_patient_1.0.xsd) | Domänschema (delat) |
| [masterdata_citizen_patient_enum_1.0.xsd](masterdata_citizen_patient_enum_1.0.xsd) | Domänschema, uppräkningar (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [UpdatePatientContactInformationResponder_request.xml](UpdatePatientContactInformationResponder_request.xml) | Exempel på begäran |
| [UpdatePatientContactInformationResponder_response.xml](UpdatePatientContactInformationResponder_response.xml) | Exempel på svar |

#### 7.2.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/updatepatientcontactinformation-request](StructureDefinition-updatepatientcontactinformation-request.md)
* **Logisk modell (response):** [StructureDefinition/updatepatientcontactinformation](StructureDefinition-updatepatientcontactinformation.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-resultcodeenum-cs](CodeSystem-masterdata-citizen-patient-resultcodeenum-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-resultcodeenum-vs](ValueSet-masterdata-citizen-patient-resultcodeenum-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeofcloserelation-cs](CodeSystem-masterdata-citizen-patient-typeofcloserelation-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeofcloserelation-vs](ValueSet-masterdata-citizen-patient-typeofcloserelation-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeofcontact-cs](CodeSystem-masterdata-citizen-patient-typeofcontact-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeofcontact-vs](ValueSet-masterdata-citizen-patient-typeofcontact-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeofcontactrelationcodesystem-cs](CodeSystem-masterdata-citizen-patient-typeofcontactrelationcodesystem-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeofcontactrelationcodesystem-vs](ValueSet-masterdata-citizen-patient-typeofcontactrelationcodesystem-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeofrelative-cs](CodeSystem-masterdata-citizen-patient-typeofrelative-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeofrelative-vs](ValueSet-masterdata-citizen-patient-typeofrelative-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeofrepresentative-cs](CodeSystem-masterdata-citizen-patient-typeofrepresentative-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeofrepresentative-vs](ValueSet-masterdata-citizen-patient-typeofrepresentative-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeoftelecomcontactperson-cs](CodeSystem-masterdata-citizen-patient-typeoftelecomcontactperson-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeoftelecomcontactperson-vs](ValueSet-masterdata-citizen-patient-typeoftelecomcontactperson-vs.md)
* **Kodsystem:** [CodeSystem/masterdata-citizen-patient-typeoftelecompatient-cs](CodeSystem-masterdata-citizen-patient-typeoftelecompatient-cs.md)
* **ValueSet:** [ValueSet/masterdata-citizen-patient-typeoftelecompatient-vs](ValueSet-masterdata-citizen-patient-typeoftelecompatient-vs.md)


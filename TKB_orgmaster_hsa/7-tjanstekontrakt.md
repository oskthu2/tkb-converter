# 7 Tjänstekontrakt - orgmaster: hsa v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

Källa: **Tjänstekontrakt Organisationsinformation (orgmaster:hsa)**, RevB (2012-11-27), [Tjanstekontrakt_hsa_orgmaster_Beskrivning.docx](Tjanstekontrakt_hsa_orgmaster_Beskrivning.docx).

Tjänstekontraktsbeskrivningen beskriver ett tjänstekontrakt per huvudavsnitt (avsnitt 3–7). I denna IG ligger de under avsnitt 7, i samma ordning: 7.1 = TKB 3, 7.2 = TKB 4 osv.

### GetHsaUnit

**TKB avsnitt 3.**

GetHsaUnit används för att söka ut information om en specifik enhet eller funktion.

#### 7.1.1 Frivillighet

Tjänsten är obligatorisk

#### 7.1.2 Version

Detta är första versionen av tjänsten.

#### 7.1.3 Begäran (Request)

| | | | |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 1 - 1 | HSA-identitet på den enhet som skall sökas ut. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen.Om ingen sökbas anges används c=SE som sökbas. |
| getParentInfo | Boolean | 1 | true: om careGiver och parentHsaIdentity svarsparametrar ska returneras. |

#### 7.1.4 Svar (Response)

Om specificerad enhet hittas returneras information om enheten i ett objekt av XML-typen GetHsaUnitResponse. Om enheten inte hittas returneras null (en tom SOAP-body).

#### 7.1.5 GetHsaUnitResponse

För detaljerad information om respektive parameter se HSA-specifikationen (ref 1).

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| careGiver |   | String | 0 – 1 | Hsa-identitet för vårdgivaren som vårdenheten tillhör. Returneras bara om aktuell enhet är en vårdenhet./ (ny parameter för E-remiss) |
| parentHsaIdentity |   | String | 0 - 1 | Hsa-identitet för den överliggande enheten. Om ingen överliggande enhet finns ska fältet sättas till NULL./ Förälder för en enhet är överliggande enhet i DN, med andra ord närmsta OU eller O.Returneras bara om getParentInfo är true./ (ny parameter för E-remiss) |
| unitPrescriptionCodes |   | String | 1 - 1 | (ny parameter för E-remiss) |
|   | unitPrescriptionCodeHSA: ArbetsplatskodLDAP: unitPrescriptionCode | String | 0 – n | Arbetsplatskod för enheten |
| alternateNames |   |   | 1 – 1 |   |
|   | alternateNameHSA: Alternativt namnLDAP: ouShort | String | 0 – n | Alternativt namn på enheten som används vid sidan av det officiella namnet (publicName). |
| alternateTextHSA: alt-textLDAP: hsaAltText |   | String | 0 – 1 | Beskrivande text som alternativ till bild på enhet. |
| businessClassifications |   |   | 1 – 1 |   |
|   | businessClassificationHSA: VerksamhetLDAP: businessClassification Name | String | 0 – n | Typ av verksamhet (klartext). |
| businessClassificationCodes |   |   | 1 – 1 |   |
|   | businessClassificationCodeHSA: VerksamhetskodLDAP: businessClassification Code | String | 0 – n | Typ av verksamhet (kod) |
| businessTypes |   |   | 1 – 1 |   |
|   | businessTypeHSA: EnhetstypLDAP: hsaBusinessType | String | 0 – n | Klassificering av enhet (t.ex. sjukhus). |
| careTypes |   |   | 1 – 1 |   |
|   | careTypeHSA: VårdformLDAP: careType | String | 0 – n | Vårdform. |
| countyHSA: LänsnamnLDAP: countyName |   | String | 0 – 1 | Namn på län. |
| countyCodeHSA: LänskodLDAP: countyCode |   | String | 0 – 1 | Kod för län. |
| descriptionHSA:BeskrivningLDAP: description |   | String | 0 – 1 | Allmän beskrivning för enheten. |
| directoryContactHSA: InnehållsansvarigLDAP: hsaDirectoryContact (hämtad från överliggande o eller ou-objekt) |   | String | 0 – 1 | Ansvarig för informationen om enheten (emailadress). |
| displayOptionHSA:Alternativ namnvisningLDAP: displayOption |   | String | 0 – 1 | Alternativ namnvisning, se Hsa Schemat för syntax. |
| dropInHours |   |   | 1 – 1 |   |
|   | dropInHourHSA: Tid för dropin-besök utan tidsbokningLDAP: dropInHours | Time Span | 0 – n | Tider för så dropin-besök (utan tidbokning). |
| EmailHSA: e-postadressLDAP: mail |   | String | 0 – 1 | Officiell emailadress till enheten. |
| faxNumbers |   |   | 1 – 1 |   |
|   | faxNumberHSA: FaxLDAP: facsimileTelephone Number | Telefon | 0 – n | Faxnummer till enheten. |
| geographicalCoordinatesRt90HSA: Geografiska koordinaterLDAP: geographicalCoordinates |   | Geo Coord | 0 – 1 | Geografiska koordinater för enhetens huvudsakliga fysiska placering. Koordinaterna anges enligt RT90. |
| healthCareAreaHSA: OmrådesansvarLDAP: hsaHealthCareArea |   | String | 0 – 1 | Geografiskt område för någon typ av administrativt område. |
| hsaDestinationIndicators |   |   | 1 – 1 |   |
|   | hsaDestinationIndicatorHSA: Visas förLDAP: hsaDestinationIndicator | String | 0 – n | Anger vilka parter som får ta del av enhetens information. |
| hsaIdentityHSA: HSA-idLDAP: hsaIdentity |   | String | 1 – 1 | HSA-identitet |
| hsaJpegLogotypeHSA: LogotypLDAP: hsaJpegLogotype |   | String | 0 – 1 | Logotype för enheten.Logotypen är en binär bild i JPEG-format. Bildinformationen returneras Base64-kodat. |
| invoiceAddressHSA: FakturaadressLDAP: hsaInvoiceAddress |   | Address | 0 – 1 | Fakturaadress. |
| jpegPhotoHSA: BildLDAP: jpegPhoto |   | String | 0 – 1 | Allmän bild för enheten.Bilden är en binär bild i JPEG-format. Bildinformationen returneras Base64-kodat. |
| labeledUriHSA: WebbadressLDAP: labeledURI |   | String | 0 – 1 | Fullständig webbadress (inklusive http:// eller https://) |
| LocationHSA: Geografisk platsLDAP: l |   | String | 0 – 1 | Namn på geografiskt område där enheten i huvudsak är placerad. |
| webPage1177HSA: 1177-kontaktkortslänkLDAP: hsaVpwWebPage |   |   |   | Länk till Enhetens sida på 1177.se (om enheten är publik och finns på 1177.se) |
| managements |   |   | 1 – 1 |   |
|   | managementHSA: ÄgarformLDAP: management | String | 0 – n | Ägarform i klartext. |
| municipalityHSA: KommunnamnLDAP: municipalityName |   | String | 0 – 1 | Namn på kommun. |
| municipalityCodeHSA: KommunkodLDAP: municipalityCode |   | String | 0 – 1 | Kod för kommun. |
| municipalitySectionHSA: KommundelsnamnLDAP: municipalitySectionName |   | String | 0 – 1 | Namn på kommundel. |
| nameHSA: Organisationsnamn, Enhetsnamn eller Objektnamn,LDAP: o, ou eller cn (beroende på objekttyp) |   | String | 1 – 1 | NamnNamn i detta sammanhang definieras som värdet i LDAP-attributet o (organization), ou (organisationsenhet) eller cn (organisationsroll). |
| patientInformationHSA: Information till patientLDAP: hsaVpwInformation4 |   | String | 0 – 1 | Informationstext till patienter. |
| postalAddressHSA: PostadressLDAP: postalAddress |   | Address | 0 – 1 | Postadress. |
| postalCodeHSA: PostnummerLDAP: postalCode |   | String | 0 – 1 | Postnummer. |
| priceInformationHSA: PrisinformationLDAP: hsaVpwInformation3 |   | String | 0 – 1 | Prisinformation. |
| publicName(Namn som sätts samman utifrån flera olika Hsa-attribut, se beskrivningen) |   | String | 1 – 1 | Publikt officiellt namn.Det publika namnet beräknas i första hand utifrån enhetens DN tillsammans med värdet i attributet displayOption i enlighet med beskrivningen i HSA-specifikationen (se ref 3).Om enheten inte har något värde för displayOption beräknas det publika namnet utifrån följande attributkombinationer, i prioritetsordning;ou`<blanktecken>`lo`<blanktecken>`lcn`<blanktecken>`l |
| relatedUnits |   |   | 1 – 1 |   |
|   | relatedUnitHSA: Relaterad enhetLDAP: hsaVpwNeighbouring Object | String | 0 – n | HSA-identitet på en enhet som på något sätt hör ihop med aktuell enhet.Informationen hämtas från LDAP-attributet hsaVpwNeighbouringObject. |
| routeHSA: VägbeskrivningLDAP: route |   | String | 0 – 1 | Vägbeskrivning. |
| streetHSA: BesöksadressLDAP: street |   | String | 0 – 1 | Besöksadress (gatuadress). |
| surgeryHours |   |   | 1 – 1 |   |
|   | surgeryHourHSA: ÖppettiderLDAP: surgeryHours | Time Span | 0 – n | Öppetider. |
| switchboardNumberHSA: VäxeltelefonLDAP: hsaSwitchboardNumber |   | Telefon | 0 – 1 | Telefonnummer till växel |
| telephoneHours |   |   | 1 – 1 |   |
|   | telephoneHourHSA: TelefontidLDAP: telephoneHours | Time Span | 0 – n | Telefontider för telefonnummer i parametern telephoneNumbers. |
| telephoneNumbers |   |   | 1 – 1 |   |
|   | telephoneNumberHSA: TelefonnummerLDAP: telephoneNumber | Telefon | 0 – n | Publikt direkttelefonnummer. |
| textTelephoneNumbers |   |   | 1 – 1 |   |
|   | textTelephoneNumberHSA: TexttelefonLDAP: hsaTextTelephone Number | String | 0 – n | Texttelefonnummer för personer med tal- eller hörselhandikapp. |
| unitExtraInformationHSA: Mer omLDAP: hsaVpwInformation1 |   | String | 0 – 1 | Kompleterande information om enheten |
| unitFunctions |   |   | 1 – 1 |   |
|   | unitFunction(se nedan för Hsa och Ldapnamn) | UnitFunc | 0 – n | Reserverade funktionsnamn kopplade till aktuell enhet. |
| unitTemporaryInformationHSA: Tillfällig informationLDAP: hsaVpwInformation2 |   | DateSpan | 0 – 1 | Temporär information om enheten. |
| visitingHours |   |   | 1 – 1 |   |
|   | visitingHourHSA: Besökstider för anhörigaLDAP: visitingHours | TimeSpan | 0 – n | Besökstider för anhöriga. |
| visitingRuleAgeHSA: Åldersregler för vårdkontaktLDAP: hsaVisitingRuleAge |   | AgeSpan | 0 – 1 | Åldersintervall på patienter som tas emot. |
| visitingRuleReferralHSA: RemisskravLDAP: hsaVisitingRuleReferral |   | String | 0 – 1 | Beskrivning av remisskrav. |
| visitingRulesHSA: BesöksreglerLDAP: hsaVisitingRules |   | String | 0 – 1 | Besöksregler |
| referralReceiver |   | Boolean | 0 – 1 | Flagga som anger om enheten kan ta emot remisser. |
| referralTypes |   | Collection | 1 – 1 |   |
| referralType |   | String | 0 – n | Vilken typ av remisser som en enhet kan ta emot |

#### 7.1.6 TimeSpan

Tidsintervall.

| | | | |
| :--- | :--- | :--- | :--- |
| fromDay | String | 1 – 1 | Från dag.Måndag (1) – Söndag (7). |
| fromTime | Time (XML) | 1 – 1 | Från tid. |
| toDay | String | 1 – 1 | Till dag.Måndag (1) – Söndag (7). |
| toTime | Time (XML) | 1 – 1 | Till tid. |
| Comment | String | 0 – 1 | Information om aktuellt tidsintervall. |

#### 7.1.7 GeoCoord

Geografiska koordinater.

| | | | |
| :--- | :--- | :--- | :--- |
| Type | String | 1 – 1 | Typ av geografisk koordinat.Idag används enbart RT90. |
| X | String | 1 – 1 | X-koordinat. |
| Y | String | 1 – 1 | Y-koordinat. |

#### 7.1.8 Address

Addressinformation

| | | | |
| :--- | :--- | :--- | :--- |
| addressLine | String | 1 – n | Adressrad. |

#### 7.1.9 UnitFunc

Information om så kallad enhetsfunktion. Idag finns följande enhetsfunktioner; Avbokning Bokning Sjukresebeställning Receptförnyelse Rådgivning

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| namnHSA: ObjektnamnLDAP: cn |   | String | 1 – 1 | Enhetsfunktionens namn (se ovanstående lista). |
| telephoneHours |   |   | 1 – 1 |   |
|   | telephoneHourHSA: TelefontidLDAP: telephoneHours | TimeSpan | 0 – n | Telefontider för telefonnummer i parametern telephoneNumbers. |
| telephoneNumbers |   |   | 1 – 1 |   |
|   | telephoneNumberHSA: TelefonnummerLDAP: telephoneNumber | Telefon | 0 – n | Publikt direkttelefonnummer. |

#### 7.1.10 AgeSpan

Åldersintervall

| | | | |
| :--- | :--- | :--- | :--- |
| From | String | 1 – 1 | Från ålder. 00 för nyfödd. |
| To | String | 1 – 1 | Till ålder. 99 för ingen övre åldersgräns. |

#### 7.1.11 Telefon

Telefonnummer anges med XML-typen string. Telefonnummer kodas i nationellt format utan bindestreck och mellanslag (t.ex. 08123456).

#### 7.1.12 DateSpan

Datumintervall.

| | | | |
| :--- | :--- | :--- | :--- |
| fromDate | String | 1 – 1 | Från datum.Exempel: 20101123 |
| toDate | String | 1 – 1 | Till datum.Exempel: 20101131 |

#### 7.1.13 Regler

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

#### 7.1.14 Tjänsteinteraktion

GetHsaUnitInteraction

#### 7.1.15 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| hsaIdentity | HsaIdentityType |   | 1..1 |
| searchBase | SearchBaseType |   | 0..1 |
| getParentInfo | boolean |   | 1..1 |
| **Svar** |   |   |   |
| careGiver | string |   | 0..1 |
| parentHsaIdentity | HsaIdentityType |   | 0..1 |
| unitPrescriptionCodes | string |   | 1..1 |
| alternateNames | alternateNames |   | 0..1 |
| ../alternateName | string |   | 0..* |
| alternateText | string |   | 0..1 |
| businessClassifications | businessClassifications |   | 0..1 |
| ../businessClassification | string |   | 0..* |
| businessClassificationCodes | businessClassificationCodes |   | 0..1 |
| ../businessClassificationCode | string |   | 0..* |
| businessTypes | businessTypes |   | 0..1 |
| ../businessType | string |   | 0..* |
| careTypes | careTypes |   | 0..1 |
| ../careType | string |   | 0..* |
| county | string |   | 0..1 |
| countyCode | string |   | 0..1 |
| description | string |   | 0..1 |
| directoryContact | string |   | 0..1 |
| displayOption | string |   | 0..1 |
| dropInHours | dropInHours |   | 0..1 |
| ../dropInHour | TimeSpanType |   | 0..* |
| ../../fromDay | integer |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../fromTime2 | string |   | 1..1 |
| ../../toDay | integer |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../toTime2 | string |   | 1..1 |
| ../../comment | string |   | 1..1 |
| email | string |   | 0..1 |
| faxNumbers | faxNumbers |   | 0..1 |
| ../faxNumber | string |   | 0..* |
| geographicalCoordinatesRt90 | CoordinatesType |   | 0..1 |
| ../type | string |   | 1..1 |
| ../x | string |   | 1..1 |
| ../y | string |   | 1..1 |
| healthCareArea | string |   | 0..1 |
| hsaDestinationIndicators | hsaDestinationIndicators |   | 1..1 |
| ../hsaDestinationIndicator | string |   | 0..* |
| hsaIdentity | HsaIdentityType |   | 1..1 |
| hsaJpegLogotype | string |   | 0..1 |
| invoiceAddress | AddressType |   | 0..1 |
| ../addressLine | string |   | 1..* |
| jpegPhoto | string |   | 0..1 |
| labeledUri | string |   | 0..1 |
| location | string |   | 0..1 |
| webPage1177 | string |   | 0..1 |
| managements | managements |   | 1..1 |
| ../management | string |   | 0..* |
| municipality | string |   | 0..1 |
| municipalityCode | string |   | 0..1 |
| municipalitySection | string |   | 0..1 |
| name | string |   | 1..1 |
| patientInformation | string |   | 0..1 |
| postalAddress | AddressType |   | 0..1 |
| ../addressLine | string |   | 1..* |
| postalCode | string |   | 0..1 |
| priceInformation | string |   | 0..1 |
| publicName | string |   | 1..1 |
| relatedUnits | relatedUnits |   | 1..1 |
| ../relatedUnit | string |   | 0..* |
| route | string |   | 0..1 |
| street | string |   | 0..1 |
| surgeryHours | surgeryHours |   | 1..1 |
| ../surgeryHour | TimeSpanType |   | 0..* |
| ../../fromDay | integer |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../fromTime2 | string |   | 1..1 |
| ../../toDay | integer |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../toTime2 | string |   | 1..1 |
| ../../comment | string |   | 1..1 |
| switchboardNumber | TelephoneNumberType |   | 0..1 |
| telephoneHours | TelephoneHoursType |   | 1..1 |
| ../telephoneHour | TimeSpanType |   | 0..* |
| ../../fromDay | integer |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../fromTime2 | string |   | 1..1 |
| ../../toDay | integer |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../toTime2 | string |   | 1..1 |
| ../../comment | string |   | 1..1 |
| telephoneNumbers | telephoneNumbers |   | 1..1 |
| ../telephoneNumber | TelephoneNumberType |   | 0..* |
| textTelephoneNumbers | textTelephoneNumbers |   | 1..1 |
| ../textTelephoneNumber | string |   | 0..* |
| unitExtraInformation | string |   | 0..1 |
| unitFunctions | unitFunctions |   | 1..1 |
| ../unitFunction | HsaUnitFunctionType |   | 0..* |
| ../../name | string |   | 1..1 |
| ../../telephoneHours | TelephoneHoursType |   | 1..1 |
| ../../../telephoneHour | TimeSpanType |   | 0..* |
| ../../../../fromDay | integer |   | 1..1 |
| ../../../../fromTime | time |   | 1..1 |
| ../../../../fromTime2 | string |   | 1..1 |
| ../../../../toDay | integer |   | 1..1 |
| ../../../../toTime | time |   | 1..1 |
| ../../../../toTime2 | string |   | 1..1 |
| ../../../../comment | string |   | 1..1 |
| ../../telephoneNumbers | telephoneNumbers |   | 1..1 |
| ../../../telephoneNumber | TelephoneNumberType |   | 0..* |
| unitTemporaryInformation | DateSpanType |   | 0..1 |
| ../fromDate | string |   | 1..1 |
| ../toDate | string |   | 1..1 |
| ../comment | string |   | 1..1 |
| visitingHours | visitingHours |   | 1..1 |
| ../visitingHour | TimeSpanType |   | 0..* |
| ../../fromDay | integer |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../fromTime2 | string |   | 1..1 |
| ../../toDay | integer |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../toTime2 | string |   | 1..1 |
| ../../comment | string |   | 1..1 |
| visitingRuleAge | AgeSpanType |   | 0..1 |
| ../from | integer |   | 1..1 |
| ../to | integer |   | 1..1 |
| visitingRuleReferral | string |   | 0..1 |
| visitingRules | string |   | 0..1 |
| referralReceiver | boolean |   | 0..1 |
| referralTypes | referralTypes |   | 1..1 |
| ../referralType | string |   | 0..* |
| DN | string |   | 1..1 |

#### 7.1.16 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetHsaUnitInteraction
 Beskrivning:
 Submission of medical health reports to the Swedish social insurance institutions
 Revisioner:
 Tjänstedomän: orgmaster:hsa
 Tjänsteinteraktionstyp: Fråga-Svar
 WS-profil: RIVTABP21
 Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1:GetHsaUnit`

#### 7.1.17 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetHsaUnitInteraction_1.0_RIVTABP21.wsdl](GetHsaUnitInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetHsaUnitResponder_1.0.xsd](GetHsaUnitResponder_1.0.xsd) | Tjänsteschema |
| [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.1.18 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/gethsaunit-request](StructureDefinition-gethsaunit-request.md)
* **Logisk modell (response):** [StructureDefinition/gethsaunit](StructureDefinition-gethsaunit.md)

### GetHsaPerson

**TKB avsnitt 4.**

GetHsaPerson hämtar information om en HSA-person (hsaPersonExtension).

#### 7.2.1 Frivillighet

Tjänsten är obligatorisk

#### 7.2.2 Version

Detta är första versionen av tjänsten.

#### 7.2.3 Begäran (Request)

Endast en av parametrarna hsaIdentity och personalIdentityNumber skall och måste användas.

| | | | |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 0 - 1 | HSA-identitet för användaren vars information skall hämtas. |
| personalIdentityNumber | String | 0 – 1 | Personnummer för användaren vars information skall hämtas. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen.Om ingen sökbas anges används c=SE som sökbas. |

#### 7.2.4 Svar (Response)

En lista med de personobjekt som matchar sökriterierna av XML-typen GetHsaPersonResponseType returneras. Detta objekt innehåller information om personen som eftersöks. Om inga personobjekt hittas returneras en tom lista. För närvarande (se ref. 3) finns inte något sätt att koppla paTitleCode till paTitleName för person.

#### 7.2.5 GetHsaPersonResponseType

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| userInformations |   | Collection | 1 – 1 |   |
|   | userInformation | User Information | 0 – n | Information om personen.Om personen har flera HSA-objekt returneras en instans per HSA-objekt. |

#### 7.2.6 UserInformation

Information om HSA-personen i form av GetHsaPersonHsaUserType. För detaljerad information om respektive parameter se HSA-specifikationen (ref 1).

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| personalPrescriptionCodeHSA: förskrivarkodLDAP: personalPrescriptionCode |   | String | 0 - 1 | Kod som identifierar en förskrivare eller en grupp av förskrivare./ (ny parameter för E-remiss) |
| paTitleCodes |   | Collection | 1 - 1 |   |
| paTitleCodeHSA: befattningskodLDAP: paTitleCode |   | String | 0 - n | Kod för personens befattning./ (ny parameter för E-remiss) |
| paTitleNames |   | Collection | 1 - 1 |   |
| paTitleNameHSA: befattningLDAP: paTitleName |   | String | 0 - n | Uppgift om vad personen är anställd som. Klartext för personens befattning./ (ny parameter för E-remiss) |
| hsaIdentityHSA: HSA-idLDAP: hsaIdentity |   | String | 1 – 1 | HSA-identitet. |
| givenNameHSA: tilltalsnamnLDAP: givenName |   | String | 1 – 1 | Tilltalsnamn. |
| snHSA: efternamnLDAP: sn |   | String | 1 – 1 | Efternamn. |
| middleNameHSA: mellannamnLDAP: middleName |   | String | 0 – 1 | Mellannamn för person |
| nickNameHSA: smeknamnLDAP: nickName |   | String | 0 – 1 | Smeknamn för användning istället för tilltalsnamn. |
| mailHSA: e-postadressLDAP: mail |   | String | 0 – 1 | Epostadress. |
| telephoneNumbers |   | Collection | 1 – 1 |   |
|   | telephoneNumberHSA: direkttelefonLDAP: telephoneNumber | Telefon | 0 – n | Publikt direkttelefonnummer. |
| hsaSwitchboardNumber |   | Telefon | 0 – 1 | Telefonnummer till växel. |
| hsaTelephoneNumbers |   | Collection | 1 – 1 |   |
|   | hsaTelephoneNumberHSA: tjänstetelefonLDAP: hsaTelephoneNumber | Telefon | 0 – 1 | Tjänstetelefonnummer.Skall inte visas för allmänheten. |
| mobileNumbers |   | Collection | 1 – 1 |   |
|   | mobileNumberHSA: mobiltelefonLDAP: mobile | String | 0 – n | Mobiltelefonnummer. |
| smsTelephoneNumberHSA: SMS-telefonLDAP: smsTelephoneNumber |   | Telefon | 0 – 1 | Telefonnummer för SMS-meddelanden. |
| facsimilleTelephoneNumbers |   | Collection | 1 – 1 |   |
|   | facsimilleTelephoneNumber HSA: faxnummerLDAP: facsimilleTelephoneNumber | Telefon | 0 – n | Faxnummer. |
| telephoneHours |   | Collection | 1 – 1 |   |
|   | telephoneHourHSA: telefontidLDAP: telephoneHour | TimeSpan | 0 – n | Telefontider för publik telefon (telephoneNumbers).För mer information se avsnitt 4.4.3.3.2. |
| postalAddressHSA: postadressLDAP: postalAddress |   | AddressType |   | Postadress. |
| labeledUriHSA: webbadressLDAP: labeledURI |   | String | 0 – 1 | Webbadress. |
| descriptionHSA: beskrivningLDAP: description |   | String | 0 – 1 | Generell beskrivning. |
| languageKnowledgeCodes |   | Collection | 1 – 1 |   |
|   | languageKnowledgeCodeHSA: språkkodLDAP: languageKnowledge Code | String | 0 – n | Kod för språk personen har tillräcklig kunskap om för att kunna ta emot patienter som talar detta språk. |
| titleHSA: titelLDAP: title |   | String | 0 – 1 | Yrkestitel i fritext |
| hsaTitles |   | Collection | 1 – 1 |   |
|   | hsaTitleHSA: Legitimerad yrkesgruppLDAP: hsaTitle | String | 0 – n | HSA-titel för specificerad person.Aktuella HSA-titlar specificeras i HSA kodtabell. |
| specialityNames |   | Collection | 1 – 1 |   |
|   | specialityNameHSA: specialitetLDAP: specialityName | String | 0 – n | Specialistutbildning utöver grundutbildning. |
| specialityCodes |   | Collection | 1 – 1 |   |
|   | specialityCodeHSA: specialitetskodLDAP: specialityCode | String | 0 – n | Klassificeringskod för specialistutbildning utöver grundutbildning. |
| DN |   | DN | 1 | DN för person |

#### 7.2.7 Regler

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

#### 7.2.8 Tjänsteinteraktion

GetHsaPersonInteraction

#### 7.2.9 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| hsaIdentity | HsaIdentityType |   | 0..1 |
| personalIdentityNumber | string |   | 0..1 |
| searchBase | SearchBaseType |   | 0..1 |
| **Svar** |   |   |   |
| userInformations | userInformations |   | 0..1 |
| ../userInformation | GetHsaPersonHsaUserType |   | 0..* |
| ../../personalPrescriptionCode | string |   | 0..1 |
| ../../description | string |   | 0..1 |
| ../../paTitleCodes | PaTitleCodesType |   | 1..1 |
| ../../../paTitleCode | string |   | 0..* |
| ../../paTitleNames | PaTitleNamesType |   | 1..1 |
| ../../../paTitleName | string |   | 0..* |
| ../../mail | string |   | 0..1 |
| ../../givenName | string |   | 1..1 |
| ../../hsaIdentity | HsaIdentityType |   | 1..1 |
| ../../hsaSwitchboardNumber | TelephoneNumberType |   | 0..1 |
| ../../hsaTelephoneNumbers | hsaTelephoneNumbers |   | 1..1 |
| ../../../hsaTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../../labeledUri | string |   | 0..1 |
| ../../languageKnowledgeCodes | languageKnowledgeCodes |   | 0..1 |
| ../../../languageKnowledgeCode | string |   | 0..* |
| ../../mobileNumbers | mobileNumbers |   | 1..1 |
| ../../../mobileNumber | TelephoneNumberType |   | 0..* |
| ../../facsimileTelephoneNumbers | facsimileTelephoneNumbers |   | 1..1 |
| ../../../facsimileTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../../nickName | string |   | 0..1 |
| ../../smsTelephoneNumber | TelephoneNumberType |   | 0..1 |
| ../../specialityCodes | specialityCodes |   | 1..1 |
| ../../../specialityCode | string |   | 0..* |
| ../../specialityNames | specialityNames |   | 1..1 |
| ../../../specialityName | string |   | 0..* |
| ../../sn | string |   | 1..1 |
| ../../telephoneHours | TelephoneHoursType |   | 1..1 |
| ../../../telephoneHour | TimeSpanType |   | 0..* |
| ../../../../fromDay | integer |   | 1..1 |
| ../../../../fromTime | time |   | 1..1 |
| ../../../../fromTime2 | string |   | 1..1 |
| ../../../../toDay | integer |   | 1..1 |
| ../../../../toTime | time |   | 1..1 |
| ../../../../toTime2 | string |   | 1..1 |
| ../../../../comment | string |   | 1..1 |
| ../../telephoneNumbers | telephoneNumbers |   | 1..1 |
| ../../../telephoneNumber | TelephoneNumberType |   | 0..* |
| ../../title | string |   | 0..1 |
| ../../DN | string |   | 1..1 |
| ../../middleName | string |   | 1..1 |
| ../../postalAddress | AddressType |   | 0..1 |
| ../../../addressLine | string |   | 1..* |
| ../../hsaTitles | HsaTitlesType |   | 1..1 |
| ../../../hsaTitle | string |   | 0..* |

#### 7.2.10 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetHsaPersonInteraction
 Beskrivning:
 Used to search for information about a specified unit or function
 Revisioner:
 Tjänstedomän: orgmaster:hsa
 Tjänsteinteraktionstyp: Fråga-Svar
 WS-profil: RIVTABP21
 Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1:GetHsaPerson`

#### 7.2.11 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetHsaPersonInteraction_1.0_RIVTABP21.wsdl](GetHsaPersonInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetHsaPersonResponder_1.0.xsd](GetHsaPersonResponder_1.0.xsd) | Tjänsteschema |
| [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.2.12 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/gethsaperson-request](StructureDefinition-gethsaperson-request.md)
* **Logisk modell (response):** [StructureDefinition/gethsaperson](StructureDefinition-gethsaperson.md)

### GetMiuForPerson

**TKB avsnitt 5.**

GetMiuForPerson används för att söka ut behörighetsegenskaper (så kallade medarbetare i uppdrag) för en specificerad HSA-person.

#### 7.3.1 Frivillighet

Tjänsten är obligatorisk

#### 7.3.2 Version

Detta är första versionen av tjänsten.

#### 7.3.3 Begäran (Request)

Endast en av parametrarna hsaIdentity och personalIdentityNumber skall och måste användas.

| | | | |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 0 – 1 | HSA-identitet på den person vars behörighetsegenskaper (MiU) skall utsökas.. |
| personalIdentityNumber | String | 0 – 1 | Personnummer på den person vars behörighetsegenskaper (MiU) skall utsökas. |
| searchBase | DN | 0 – 1 | Sökbas för sökning i HSA-katalogen.Om ingen sökbas anges används c=SE som sökbas. |

#### 7.3.4 Svar (Response)

Om specificerad person har behörighetsstyrande egenskaper (personen är kopplad till en eller flera giltiga MiU) returneras dessa i objekt av XML-typen MiuInformation. Ett objekt per kopplad MiU returneras. Listan med funna MiUInformation packas in i ett objekt av XML-typen GetMiuForPersonResponse. Observera att enbart MiU:s med aktuella kopplingar (aktuell tidpunkt ligger inom kopplingens start och slutdatum) returneras. Om personen inte har några behörighetsegenskaper (personen är inte kopplad till någon giltig MiU) returneras null.

#### 7.3.5 GetMiuForPersonResponse

| | | | |
| :--- | :--- | :--- | :--- |
| MiuInformation | Se nedan | 0 – n | Funna behörighetsegenskaper (MiU:s) för specificerad person. |

#### 7.3.6 MiuInformation

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| miuNameHSA: ObjektnamnLDAP: cn |   | String | 1 – 1 | Namn på aktuell MiU (commission). |
| hsaIdentityHSA: HSA-idLDAP: hsaIdentity |   | String | 1 – 1 | HSA-identitet för aktuell MiU (commission). |
| miuPurposeHSA: medarbetaruppdragets syfteLDAP: hsaCommissionPurpose |   | String | 1 – 1 | Syfte med aktuell MiU.Aktuella syften specificeras i HSA kodtabell. |
| careUnitHsaIdentityHSA: HSA-idLDAP: hsaIdentity |   | String | 1 – 1 | HSA-identitet på den vårdenhet aktuell MiU (commission) tillhör. |
| careUnitNameHSA: Enhetsnamn eller OrganisationsnamnLDAP: ou eller o |   | String | 1 – 1 | Namn på den vårdenhet aktuell MiU (commission) tillhör. |
| careGiverHSA: HSA-idLDAP: hsaIdentity |   | String | 0 – 1 | HSA-identitet på den vårdgivare aktuell MiU (commission) tillhör. Observera att en MiU inte är direkt kopplad till en vårdgivare utan tillhör den vårdgivare som MiU:ns vårdenhet tillhör. |
| careGiverNameHSA: Enhetsnamn eller OrganisationsnamnLDAP: ou eller o |   | String | 0 – 1 | Namn på den vårdgivare aktuell MiU tillhör. |
| careGiverOrgNoHSA: OrganisationsnummerLDAP: orgNo |   | String | 0 – 1 | Organisationsnummer för den vårdgivare aktuell MiU (commission) tillhör. |
| personalPrescriptionCodeHSA: FörskrivarkodLDAP: personalPrescriptionCode |   | String | 0 – 1 | Förskrivarkod för specificerad person. |
| hsaTitles |   | Collection | 1 – 1 |   |
|   | hsaTitleHSA: Legitimerad yrkesgruppLDAP: hsaTitle | String | 0 – n | HSA-titel för specificerad person.Aktuella HSA-titlar specificeras i HSA kodtabell. |
| miuRights |   | Collection | 1 – 1 |   |
|   | miuRightHSA: Medarbetaruppdragets rättigheterLDAP: hsaCommissionRight | String | 0 – n | Rättighet för aktuell MiU (commission),För mer information se avsnitt 4.4.5.3.3. |
| hsaSystemRoles |   | Collection | 1 – 1 |   |
|   | hsaSystemRoleHSA: individuell behörighets-egenskap för it-tjänsterLDAP: hsaSystemRole | String | 0 – n | Systemroller kopplade till specificerad person.För mer information se avsnitt 4.4.5.3.4. |
| hsaIdentityPersonHSA: HSA-idLDAP: hsaIdentity |   | String | 1 – 1 | HSA-identitet för aktuell Person |
| paTitleCodes |   | Collection | 1 - 1 |   |
| paTitleCodeHSA: befattningskodLDAP: paTitleCode |   | String | 0 – n | Befattningskoder kopplade till specificerad person. |
| givenNameHSA: förnamnLDAP: givenName |   | String | 1 – 1 | Förnamn för person |
| middleAndSurNameHSA: mellannamn + efternamnLDAP: middleName + surName (sn) |   | String | 1 – 1 | Mellannamn + efternamn för person. Namnen är separerade med bindestreck. |

#### 7.3.7 MiuRights

Rättigheterna för en MiU specificeras i en sträng enligt följande syntax, `<aktivitet>`;`<informationstyp>`;`<organisationsomfång>`. Aktivitet: Vad som får göras med aktuell information. Aktuella aktiviteter specificeras i HSA kodtabell. Informationstyp: Den typ av information aktiviteten får utföras på. Aktuella informationstyper specificeras i HSA kodtabell. Organisationsomfång: Inom vilken sfär får specificerad person komma åt informationen. Aktuella informationsomfång specificeras i HSA kodtabell

#### 7.3.8 HsaSystemRoles

De så kallade systemroller (hsaSystemRole) som är kopplade till aktuell person. En systemroll specificeras i en sträng med följande syntax, `<systemidentitet>`;`<systemroll>`.

#### 7.3.9 Regler

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

#### 7.3.10 Tjänsteinteraktion

GetMiuForPersonInteraction

#### 7.3.11 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| hsaIdentity | HsaIdentityType |   | 0..1 |
| personalIdentityNumber | string |   | 0..1 |
| searchBase | SearchBaseType |   | 0..1 |
| **Svar** |   |   |   |
| MiuInformation | MiuInformationType |   | 0..* |
| ../miuName | string |   | 1..1 |
| ../hsaIdentity | HsaIdentityType |   | 1..1 |
| ../miuPurpose | string |   | 1..1 |
| ../careUnitHsaIdentity | HsaIdentityType |   | 1..1 |
| ../careUnitName | string |   | 0..1 |
| ../careGiver | string |   | 1..1 |
| ../careGiverName | string |   | 1..1 |
| ../careGiverOrgNo | orgNo |   | 1..1 |
| ../personalPrescriptionCode | string |   | 0..1 |
| ../hsaTitles | HsaTitlesType |   | 1..1 |
| ../../hsaTitle | string |   | 0..* |
| ../miuRights | MiuRightsType |   | 1..1 |
| ../../miuRight | string |   | 0..* |
| ../hsaSystemRoles | HsaSystemRolesType |   | 1..1 |
| ../../hsaSystemRole | string |   | 0..* |
| ../hsaIdentityPerson | HsaIdentityType |   | 1..1 |
| ../paTitleCodes | PaTitleCodesType |   | 1..1 |
| ../../paTitleCode | string |   | 0..* |
| ../givenName | string |   | 1..1 |
| ../middleAndSurName | string |   | 1..1 |

#### 7.3.12 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetMiuForPersonInteraction
 Beskrivning:
 Search for authorization properties for a specified HSA-person
 Revisioner:
 Tjänstedomän: orgmaster:hsa
 Tjänsteinteraktionstyp: Fråga-Svar
 WS-profil: RIVTABP21
 Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1:GetMiuForPerson`

#### 7.3.13 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetMiuForPersonInteraction_1.0_RIVTABP21.wsdl](GetMiuForPersonInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetMiuForPersonResponder_1.0.xsd](GetMiuForPersonResponder_1.0.xsd) | Tjänsteschema |
| [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.3.14 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getmiuforperson-request](StructureDefinition-getmiuforperson-request.md)
* **Logisk modell (response):** [StructureDefinition/getmiuforperson](StructureDefinition-getmiuforperson.md)

### GetHsaUnitList

**TKB avsnitt 6 (rubrik i TKB: GetUnitList).**

GetUnitList hämtar information om en organisatorisk enhet och alla dess underenheter. En underenhet definieras som en enhet som har den överliggande enhetens namn i OU eller O i sitt DN.

#### 7.4.1 Frivillighet

Tjänsten är obligatorisk

#### 7.4.2 Version

Detta är första versionen av tjänsten.

#### 7.4.3 Begäran (Request)

| | | | |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 0 - 1 | HSA-identitet för enheten eller organisationen från vilken alla underliggande enheter ska hämtas. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen.Om ingen sökbas anges används c=SE som sökbas. |

#### 7.4.4 Svar (Response)

En lista med unitobjekt av XML-typen GetHsaUnitListResponseType returneras. Om inga objekt hittas returneras en tom lista.

#### 7.4.5 GetHsaUnitListResponseType

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| UnitList |   | Collection | 1 – 1 |   |
|   | unitListUnit | UnitListUnit | 0 – n |   |

#### 7.4.6 UnitListUnit

| | | | |
| :--- | :--- | :--- | :--- |
| hsaIdentityHSA: HSA-idLDAP: hsaIdentity | String | 1 – 1 | Enhetens HSA-identitet. |
| nameHSA: Organisationsnamn, Enhetsnamn,LDAP: ou | String | 1 – 1 | NamnNamn i detta sammanhang definieras som värdet i LDAP-attributet ou (organisationsenhet). |
| parentHsaIdentity | String | 0 - 1 | Hsa-identitet för den överliggande enheten. Om ingen överliggande enhet finns ska fältet sättas till NULL./ Förälder för en enhet är överliggande enhet i DN, med andra ord närmsta OU eller O. |

#### 7.4.7 Regler

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

#### 7.4.8 Tjänsteinteraktion

GetHsaUnitListInteraction

#### 7.4.9 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| hsaIdentity | HsaIdentityType |   | 0..1 |
| searchBase | SearchBaseType |   | 0..1 |
| **Svar** |   |   |   |
| UnitList | UnitList |   | 0..1 |
| ../unitListUnit | UnitListUnit |   | 0..* |
| ../../hsaIdentity | HsaIdentityType |   | 1..1 |
| ../../name | string |   | 1..1 |
| ../../parentHsaIdentity | HsaIdentityType |   | 0..1 |

#### 7.4.10 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetHsaUnitListInteraction
 Beskrivning:
 Fetch information about an organizational unit and all sub units
 Revisioner:
 Tjänstedomän: orgmaster:hsa
 Tjänsteinteraktionstyp: Fråga-Svar
 WS-profil: RIVTABP21
 Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1:GetHsaUnitList`

#### 7.4.11 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetHsaUnitListInteraction_1.0_RIVTABP21.wsdl](GetHsaUnitListInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetHsaUnitListResponder_1.0.xsd](GetHsaUnitListResponder_1.0.xsd) | Tjänsteschema |
| [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.4.12 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/gethsaunitlist-request](StructureDefinition-gethsaunitlist-request.md)
* **Logisk modell (response):** [StructureDefinition/gethsaunitlist](StructureDefinition-gethsaunitlist.md)

### GetPersonsWithCommissionAtHealthCareUnit

**TKB avsnitt 7.**

GetPersonsWithCommissionAtHealthCareUnit hämtar information om personer som har Medarbetaruppdrag under vårdenheten Sökningen kan även begränsas om en eller flera HsaTitles eller PaTitles anges.

#### 7.5.1 Frivillighet

Tjänsten är obligatorisk

#### 7.5.2 Version

Detta är första versionen av tjänsten.

#### 7.5.3 Begäran (Request)

| | | | |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 1 - 1 | HSA-identitet för användaren vars information skall hämtas. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen.Om ingen sökbas anges används c=SE som sökbas. |
| paTitleCodes | Collection | 1 - 1 |   |
| paTitleCode | String | 0 – n | Om angiven skall endast anställda med angiven befattning visas. Klartext för personens befattning. |
| hsaTitles | Collection | 1 - 1 |   |
| hsaTitle | String | 0 – n | Om angiven skall endast anställda med angiven legitimerad yrkesgrupp visas. Klartext för personens legitimerade yrkesgrupp. |

#### 7.5.4 Svar (Response)

En lista med objekt av XML-typen GetPersonsWithCommissionAtHealthCareUnitResponseType returneras. Om inga objekt hittas returneras en tom lista.

#### 7.5.5 GetPersonsWithCommissionAtHealthCareUnitResponseType

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| PersonList |   | Collection | 1 – 1 |   |
|   | personListPerson | PersonListPerson | 0 – n |   |

#### 7.5.6 PersonListPerson

| | | | |
| :--- | :--- | :--- | :--- |
| hsaIdentityHSA: HSA-idLDAP: hsaIdentity | String | 1 – 1 | Personens HSA-identitet. |
| givenNameHSA: tilltalsnamnLDAP: givenName | String | 1 – 1 | Tilltalsnamn. |
| snHSA: efternamnLDAP: sn | String | 1 – 1 | Efternamn. |
| personalPrescriptionCodeHSA: förskrivarkodLDAP: personalPrescriptionCode | String | 0 - 1 | Kod som identifierar en förskrivare eller en grupp av förskrivare. |
| paTitleCodes | Collection | 1 – 1 |   |
| paTitleCodeHSA: befattningskodLDAP: paTitleCode | String | 0 - n | Kod för personens befattning. |
| paTitleNames | Collection | 1 – 1 |   |
| paTitleNameHSA: befattningLDAP: paTitleName | String | 0 - n | Uppgift om vad personen är anställd som. Klartext för personens befattning. |
| hsaTitles | Collection | 1 – 1 |   |
| hsaTitleHSA: Legitimerad yrkesgruppLDAP: hsaTitle | String | 0 - n | Legitimerad yrkesgrupp som personen tillhör. |

#### 7.5.7 Regler

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

#### 7.5.8 Tjänsteinteraktion

GetPersonsWithCommissionAtHealthCareUnitInteraction

#### 7.5.9 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| hsaIdentity | HsaIdentityType |   | 1..1 |
| searchBase | SearchBaseType |   | 0..1 |
| paTitleCodes | PaTitleCodesType |   | 1..1 |
| ../paTitleCode | string |   | 0..* |
| hsaTitles | HsaTitlesType |   | 1..1 |
| ../hsaTitle | string |   | 0..* |
| **Svar** |   |   |   |
| PersonList | PersonList |   | 0..1 |
| ../personListPerson | PersonListPerson |   | 0..* |
| ../../hsaIdentity | HsaIdentityType |   | 1..1 |
| ../../givenName | string |   | 1..1 |
| ../../sn | string |   | 1..1 |
| ../../personalPrescriptionCode | string |   | 0..1 |
| ../../paTitleCodes | PaTitleCodesType |   | 1..1 |
| ../../../paTitleCode | string |   | 0..* |
| ../../paTitleNames | PaTitleNamesType |   | 1..1 |
| ../../../paTitleName | string |   | 0..* |
| ../../hsaTitles | HsaTitlesType |   | 1..1 |
| ../../../hsaTitle | string |   | 0..* |

#### 7.5.10 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetPersonsWithCommissionAtHealthCareUnitInteraction
 Beskrivning:
 List of persons on commission in the specified unit
 Revisioner:
 Tjänstedomän: orgmaster:hsa
 Tjänsteinteraktionstyp: Fråga-Svar
 WS-profil: RIVTABP21
 Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:orgmaster:hsa:GetPersonsWithCommissionAtHealthCareUnitResponder:1:GetPersonsWithCommissionAtHealthCareUnit`

#### 7.5.11 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetPersonsWithCommissionAtHealthCareUnitInteraction_1.0_RIVTABP21.wsdl](GetPersonsWithCommissionAtHealthCareUnitInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetPersonsWithCommissionAtHealthCareUnitResponder_1.0.xsd](GetPersonsWithCommissionAtHealthCareUnitResponder_1.0.xsd) | Tjänsteschema |
| [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.5.12 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getpersonswithcommissionathealthcareunit-request](StructureDefinition-getpersonswithcommissionathealthcareunit-request.md)
* **Logisk modell (response):** [StructureDefinition/getpersonswithcommissionathealthcareunit](StructureDefinition-getpersonswithcommissionathealthcareunit.md)


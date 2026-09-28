# 7 Tjänstekontrakt

Källa: *Tjänstekontrakt Organisationsinformation (orgmaster:hsa)*, RevB (2012-11-27), [Tjanstekontrakt_hsa_orgmaster_Beskrivning.docx](Tjanstekontrakt_hsa_orgmaster_Beskrivning.docx).

Tjänstekontraktsbeskrivningen beskriver ett tjänstekontrakt per huvudavsnitt (avsnitt 3–7). I denna IG ligger de under avsnitt 7, i samma ordning: 7.1 = TKB 3, 7.2 = TKB 4 osv.

### GetHsaUnit

*TKB avsnitt 3.*

GetHsaUnit används för att söka ut information om en specifik enhet eller funktion.

#### 7.1.1 Frivillighet

Tjänsten är obligatorisk

#### 7.1.2 Version

Detta är första versionen av tjänsten.

#### 7.1.3 Begäran (Request)

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 1 - 1 | HSA-identitet på den enhet som skall sökas ut. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen. / Om ingen sökbas anges används c=SE som sökbas. |
| getParentInfo | Boolean | 1 | true: om careGiver och parentHsaIdentity svarsparametrar ska returneras. |

#### 7.1.4 Svar (Response)

Om specificerad enhet hittas returneras information om enheten i ett objekt av XML-typen GetHsaUnitResponse.
Om enheten inte hittas returneras null (en tom SOAP-body).

#### 7.1.5 GetHsaUnitResponse

För detaljerad information om respektive parameter se HSA-specifikationen (ref 1).

| Parameter | Underparameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| careGiver |  | String | 0 – 1 | Hsa-identitet för vårdgivaren som vårdenheten tillhör. Returneras bara om aktuell enhet är en vårdenhet. /  / (ny parameter för E-remiss) |
| parentHsaIdentity |  | String | 0 - 1 | Hsa-identitet för den överliggande enheten. Om ingen överliggande enhet finns ska fältet sättas till NULL. /  / Förälder för en enhet är överliggande enhet i DN, med andra ord närmsta OU eller O. / Returneras bara om getParentInfo är true. /  / (ny parameter för E-remiss) |
| unitPrescriptionCodes |  | String | 1 - 1 | (ny parameter för E-remiss) |
|  | unitPrescriptionCode / HSA: Arbetsplatskod / LDAP: unitPrescriptionCode | String | 0 – n | Arbetsplatskod för enheten |
| alternateNames |  |  | 1 – 1 |  |
|  | alternateName / HSA: Alternativt namn / LDAP: ouShort | String | 0 – n | Alternativt namn på enheten som används vid sidan av det officiella namnet (publicName). |
| alternateText / HSA: alt-text / LDAP: hsaAltText |  | String | 0 – 1 | Beskrivande text som alternativ till bild på enhet. |
| businessClassifications |  |  | 1 – 1 |  |
|  | businessClassification / HSA: Verksamhet / LDAP: businessClassification Name | String | 0 – n | Typ av verksamhet (klartext). |
| businessClassificationCodes |  |  | 1 – 1 |  |
|  | businessClassificationCode / HSA: Verksamhetskod / LDAP: businessClassification Code | String | 0 – n | Typ av verksamhet (kod) |
| businessTypes |  |  | 1 – 1 |  |
|  | businessType / HSA: Enhetstyp / LDAP: hsaBusinessType | String | 0 – n | Klassificering av enhet (t.ex. sjukhus). |
| careTypes |  |  | 1 – 1 |  |
|  | careType / HSA: Vårdform / LDAP: careType | String | 0 – n | Vårdform. |
| county / HSA: Länsnamn / LDAP: countyName |  | String | 0 – 1 | Namn på län. |
| countyCode / HSA: Länskod / LDAP: countyCode |  | String | 0 – 1 | Kod för län. |
| description / HSA:Beskrivning / LDAP: description |  | String | 0 – 1 | Allmän beskrivning för enheten. |
| directoryContact / HSA: Innehållsansvarig / LDAP: hsaDirectoryContact (hämtad från överliggande o eller ou-objekt) |  | String | 0 – 1 | Ansvarig för informationen om enheten (emailadress). |
| displayOption / HSA:Alternativ namnvisning / LDAP: displayOption |  | String | 0 – 1 | Alternativ namnvisning, se Hsa Schemat för syntax. |
| dropInHours |  |  | 1 – 1 |  |
|  | dropInHour / HSA: Tid för dropin-besök utan tidsbokning / LDAP: dropInHours | Time Span | 0 – n | Tider för så dropin-besök (utan tidbokning). |
| Email / HSA: e-postadress / LDAP: mail |  | String | 0 – 1 | Officiell emailadress till enheten. |
| faxNumbers |  |  | 1 – 1 |  |
|  | faxNumber / HSA: Fax / LDAP: facsimileTelephone Number | Telefon | 0 – n | Faxnummer till enheten. |
| geographicalCoordinatesRt90 / HSA: Geografiska koordinater / LDAP: geographicalCoordinates |  | Geo Coord | 0 – 1 | Geografiska koordinater för enhetens huvudsakliga fysiska placering. Koordinaterna anges enligt RT90. |
| healthCareArea / HSA: Områdesansvar / LDAP: hsaHealthCareArea |  | String | 0 – 1 | Geografiskt område för någon typ av administrativt område. |
| hsaDestinationIndicators |  |  | 1 – 1 |  |
|  | hsaDestinationIndicator / HSA: Visas för / LDAP: hsaDestinationIndicator | String | 0 – n | Anger vilka parter som får ta del av enhetens information. |
| hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity |  | String | 1 – 1 | HSA-identitet |
| hsaJpegLogotype / HSA: Logotyp / LDAP: hsaJpegLogotype |  | String | 0 – 1 | Logotype för enheten. / Logotypen är en binär bild i JPEG-format. Bildinformationen returneras Base64-kodat. |
| invoiceAddress / HSA: Fakturaadress / LDAP: hsaInvoiceAddress |  | Address | 0 – 1 | Fakturaadress. |
| jpegPhoto / HSA: Bild / LDAP: jpegPhoto |  | String | 0 – 1 | Allmän bild för enheten. / Bilden är en binär bild i JPEG-format. Bildinformationen returneras Base64-kodat. |
| labeledUri / HSA: Webbadress / LDAP: labeledURI |  | String | 0 – 1 | Fullständig webbadress (inklusive http://  eller https://) |
| Location / HSA: Geografisk plats / LDAP: l |  | String | 0 – 1 | Namn på geografiskt område där enheten i huvudsak är placerad. |
| webPage1177 / HSA: 1177-kontaktkortslänk / LDAP: hsaVpwWebPage |  |  |  | Länk till Enhetens sida på 1177.se (om enheten är publik och finns på 1177.se) |
| managements |  |  | 1 – 1 |  |
|  | management / HSA: Ägarform / LDAP: management | String | 0 – n | Ägarform i klartext. |
| municipality / HSA: Kommunnamn / LDAP: municipalityName |  | String | 0 – 1 | Namn på kommun. |
| municipalityCode / HSA: Kommunkod / LDAP: municipalityCode |  | String | 0 – 1 | Kod för kommun. |
| municipalitySection / HSA: Kommundelsnamn / LDAP: municipalitySectionName |  | String | 0 – 1 | Namn på kommundel. |
| name / HSA: Organisationsnamn, Enhetsnamn eller Objektnamn, / LDAP: o, ou eller cn (beroende på objekttyp) |  | String | 1 – 1 | Namn / Namn i detta sammanhang definieras som värdet i LDAP-attributet o (organization), ou (organisationsenhet) eller cn (organisationsroll). |
| patientInformation / HSA: Information till patient / LDAP: hsaVpwInformation4 |  | String | 0 – 1 | Informationstext till patienter. |
| postalAddress / HSA: Postadress / LDAP: postalAddress |  | Address | 0 – 1 | Postadress. |
| postalCode / HSA: Postnummer / LDAP: postalCode |  | String | 0 – 1 | Postnummer. |
| priceInformation / HSA: Prisinformation / LDAP: hsaVpwInformation3 |  | String | 0 – 1 | Prisinformation. |
| publicName / (Namn som sätts samman utifrån flera olika Hsa-attribut, se beskrivningen) |  | String | 1 – 1 | Publikt officiellt namn. / Det publika namnet beräknas i första hand utifrån enhetens DN tillsammans med värdet i attributet displayOption i enlighet med beskrivningen i HSA-specifikationen (se ref 3). / Om enheten inte har något värde för displayOption beräknas det publika namnet utifrån följande attributkombinationer, i prioritetsordning; / ou`<blanktecken>`l / o`<blanktecken>`l / cn`<blanktecken>`l |
| relatedUnits |  |  | 1 – 1 |  |
|  | relatedUnit / HSA: Relaterad enhet / LDAP: hsaVpwNeighbouring Object | String | 0 – n | HSA-identitet på en enhet som på något sätt hör ihop med aktuell enhet. / Informationen hämtas från LDAP-attributet hsaVpwNeighbouringObject. |
| route / HSA: Vägbeskrivning / LDAP: route |  | String | 0 – 1 | Vägbeskrivning. |
| street / HSA: Besöksadress / LDAP: street |  | String | 0 – 1 | Besöksadress (gatuadress). |
| surgeryHours |  |  | 1 – 1 |  |
|  | surgeryHour / HSA: Öppettider / LDAP: surgeryHours | Time Span | 0 – n | Öppetider. |
| switchboardNumber / HSA: Växeltelefon / LDAP: hsaSwitchboardNumber |  | Telefon | 0 – 1 | Telefonnummer till växel |
| telephoneHours |  |  | 1 – 1 |  |
|  | telephoneHour / HSA: Telefontid / LDAP: telephoneHours | Time Span | 0 – n | Telefontider för telefonnummer i parametern telephoneNumbers. |
| telephoneNumbers |  |  | 1 – 1 |  |
|  | telephoneNumber / HSA: Telefonnummer / LDAP: telephoneNumber | Telefon | 0 – n | Publikt direkttelefonnummer. |
| textTelephoneNumbers |  |  | 1 – 1 |  |
|  | textTelephoneNumber / HSA: Texttelefon / LDAP: hsaTextTelephone Number | String | 0 – n | Texttelefonnummer för personer med tal- eller hörselhandikapp. |
| unitExtraInformation / HSA:  Mer om / LDAP: hsaVpwInformation1 |  | String | 0 – 1 | Kompleterande information om enheten |
| unitFunctions |  |  | 1 – 1 |  |
|  | unitFunction / (se nedan för Hsa och Ldapnamn) | UnitFunc | 0 – n | Reserverade funktionsnamn kopplade till aktuell enhet. |
| unitTemporaryInformation / HSA: Tillfällig information / LDAP: hsaVpwInformation2 |  | DateSpan | 0 – 1 | Temporär information om enheten. |
| visitingHours |  |  | 1 – 1 |  |
|  | visitingHour / HSA: Besökstider för anhöriga / LDAP: visitingHours | TimeSpan | 0 – n | Besökstider för anhöriga. |
| visitingRuleAge / HSA: Åldersregler för vårdkontakt / LDAP: hsaVisitingRuleAge |  | AgeSpan | 0 – 1 | Åldersintervall på patienter som tas emot. |
| visitingRuleReferral / HSA: Remisskrav / LDAP: hsaVisitingRuleReferral |  | String | 0 – 1 | Beskrivning av remisskrav. |
| visitingRules / HSA: Besöksregler / LDAP: hsaVisitingRules |  | String | 0 – 1 | Besöksregler |
| referralReceiver |  | Boolean | 0 – 1 | Flagga som anger om enheten kan ta emot remisser. |
| referralTypes |  | Collection | 1 – 1 |  |
| referralType |  | String | 0 – n | Vilken typ av remisser som en enhet kan ta emot |

#### 7.1.6 TimeSpan

Tidsintervall.

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| fromDay | String | 1 – 1 | Från dag. / Måndag (1) – Söndag (7). |
| fromTime | Time (XML) | 1 – 1 | Från tid. |
| toDay | String | 1 – 1 | Till dag. / Måndag (1) – Söndag (7). |
| toTime | Time (XML) | 1 – 1 | Till tid. |
| Comment | String | 0 – 1 | Information om aktuellt tidsintervall. |

#### 7.1.7 GeoCoord

Geografiska koordinater.

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| Type | String | 1 – 1 | Typ av geografisk koordinat. / Idag används enbart RT90. |
| X | String | 1 – 1 | X-koordinat. |
| Y | String | 1 – 1 | Y-koordinat. |

#### 7.1.8 Address

Addressinformation

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| addressLine | String | 1 – n | Adressrad. |

#### 7.1.9 UnitFunc

Information om så kallad enhetsfunktion. Idag finns följande enhetsfunktioner;
Avbokning
Bokning
Sjukresebeställning
Receptförnyelse
Rådgivning

| Parameter | Underparameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| namn / HSA: Objektnamn / LDAP: cn |  | String | 1 – 1 | Enhetsfunktionens namn (se ovanstående lista). |
| telephoneHours |  |  | 1 – 1 |  |
|  | telephoneHour / HSA: Telefontid / LDAP: telephoneHours | TimeSpan | 0 – n | Telefontider för telefonnummer i parametern telephoneNumbers. |
| telephoneNumbers |  |  | 1 – 1 |  |
|  | telephoneNumber / HSA: Telefonnummer / LDAP: telephoneNumber | Telefon | 0 – n | Publikt direkttelefonnummer. |

#### 7.1.10 AgeSpan

Åldersintervall

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| From | String | 1 – 1 | Från ålder. 00 för nyfödd. |
| To | String | 1 – 1 | Till ålder. 99 för ingen övre åldersgräns. |

#### 7.1.11 Telefon

Telefonnummer anges med XML-typen string. Telefonnummer kodas i nationellt format utan bindestreck och mellanslag (t.ex. 08123456).

#### 7.1.12 DateSpan

Datumintervall.

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| fromDate | String | 1 – 1 | Från datum. / Exempel: 20101123 |
| toDate | String | 1 – 1 | Till datum. / Exempel: 20101131 |

#### 7.1.13 Regler

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

#### 7.1.14 Tjänsteinteraktion

GetHsaUnitInteraction

#### 7.1.15 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| hsaIdentity | HsaIdentityType |  | 1..1 |
| searchBase | SearchBaseType |  | 0..1 |
| getParentInfo | boolean |  | 1..1 |
| **Svar** | | | |
| careGiver | string |  | 0..1 |
| parentHsaIdentity | HsaIdentityType |  | 0..1 |
| unitPrescriptionCodes | string |  | 1..1 |
| alternateNames | alternateNames |  | 0..1 |
| ../alternateName | string |  | 0..* |
| alternateText | string |  | 0..1 |
| businessClassifications | businessClassifications |  | 0..1 |
| ../businessClassification | string |  | 0..* |
| businessClassificationCodes | businessClassificationCodes |  | 0..1 |
| ../businessClassificationCode | string |  | 0..* |
| businessTypes | businessTypes |  | 0..1 |
| ../businessType | string |  | 0..* |
| careTypes | careTypes |  | 0..1 |
| ../careType | string |  | 0..* |
| county | string |  | 0..1 |
| countyCode | string |  | 0..1 |
| description | string |  | 0..1 |
| directoryContact | string |  | 0..1 |
| displayOption | string |  | 0..1 |
| dropInHours | dropInHours |  | 0..1 |
| ../dropInHour | TimeSpanType |  | 0..* |
| ../../fromDay | integer |  | 1..1 |
| ../../fromTime | time |  | 1..1 |
| ../../fromTime2 | string |  | 1..1 |
| ../../toDay | integer |  | 1..1 |
| ../../toTime | time |  | 1..1 |
| ../../toTime2 | string |  | 1..1 |
| ../../comment | string |  | 1..1 |
| email | string |  | 0..1 |
| faxNumbers | faxNumbers |  | 0..1 |
| ../faxNumber | string |  | 0..* |
| geographicalCoordinatesRt90 | CoordinatesType |  | 0..1 |
| ../type | string |  | 1..1 |
| ../x | string |  | 1..1 |
| ../y | string |  | 1..1 |
| healthCareArea | string |  | 0..1 |
| hsaDestinationIndicators | hsaDestinationIndicators |  | 1..1 |
| ../hsaDestinationIndicator | string |  | 0..* |
| hsaIdentity | HsaIdentityType |  | 1..1 |
| hsaJpegLogotype | string |  | 0..1 |
| invoiceAddress | AddressType |  | 0..1 |
| ../addressLine | string |  | 1..* |
| jpegPhoto | string |  | 0..1 |
| labeledUri | string |  | 0..1 |
| location | string |  | 0..1 |
| webPage1177 | string |  | 0..1 |
| managements | managements |  | 1..1 |
| ../management | string |  | 0..* |
| municipality | string |  | 0..1 |
| municipalityCode | string |  | 0..1 |
| municipalitySection | string |  | 0..1 |
| name | string |  | 1..1 |
| patientInformation | string |  | 0..1 |
| postalAddress | AddressType |  | 0..1 |
| ../addressLine | string |  | 1..* |
| postalCode | string |  | 0..1 |
| priceInformation | string |  | 0..1 |
| publicName | string |  | 1..1 |
| relatedUnits | relatedUnits |  | 1..1 |
| ../relatedUnit | string |  | 0..* |
| route | string |  | 0..1 |
| street | string |  | 0..1 |
| surgeryHours | surgeryHours |  | 1..1 |
| ../surgeryHour | TimeSpanType |  | 0..* |
| ../../fromDay | integer |  | 1..1 |
| ../../fromTime | time |  | 1..1 |
| ../../fromTime2 | string |  | 1..1 |
| ../../toDay | integer |  | 1..1 |
| ../../toTime | time |  | 1..1 |
| ../../toTime2 | string |  | 1..1 |
| ../../comment | string |  | 1..1 |
| switchboardNumber | TelephoneNumberType |  | 0..1 |
| telephoneHours | TelephoneHoursType |  | 1..1 |
| ../telephoneHour | TimeSpanType |  | 0..* |
| ../../fromDay | integer |  | 1..1 |
| ../../fromTime | time |  | 1..1 |
| ../../fromTime2 | string |  | 1..1 |
| ../../toDay | integer |  | 1..1 |
| ../../toTime | time |  | 1..1 |
| ../../toTime2 | string |  | 1..1 |
| ../../comment | string |  | 1..1 |
| telephoneNumbers | telephoneNumbers |  | 1..1 |
| ../telephoneNumber | TelephoneNumberType |  | 0..* |
| textTelephoneNumbers | textTelephoneNumbers |  | 1..1 |
| ../textTelephoneNumber | string |  | 0..* |
| unitExtraInformation | string |  | 0..1 |
| unitFunctions | unitFunctions |  | 1..1 |
| ../unitFunction | HsaUnitFunctionType |  | 0..* |
| ../../name | string |  | 1..1 |
| ../../telephoneHours | TelephoneHoursType |  | 1..1 |
| ../../../telephoneHour | TimeSpanType |  | 0..* |
| ../../../../fromDay | integer |  | 1..1 |
| ../../../../fromTime | time |  | 1..1 |
| ../../../../fromTime2 | string |  | 1..1 |
| ../../../../toDay | integer |  | 1..1 |
| ../../../../toTime | time |  | 1..1 |
| ../../../../toTime2 | string |  | 1..1 |
| ../../../../comment | string |  | 1..1 |
| ../../telephoneNumbers | telephoneNumbers |  | 1..1 |
| ../../../telephoneNumber | TelephoneNumberType |  | 0..* |
| unitTemporaryInformation | DateSpanType |  | 0..1 |
| ../fromDate | string |  | 1..1 |
| ../toDate | string |  | 1..1 |
| ../comment | string |  | 1..1 |
| visitingHours | visitingHours |  | 1..1 |
| ../visitingHour | TimeSpanType |  | 0..* |
| ../../fromDay | integer |  | 1..1 |
| ../../fromTime | time |  | 1..1 |
| ../../fromTime2 | string |  | 1..1 |
| ../../toDay | integer |  | 1..1 |
| ../../toTime | time |  | 1..1 |
| ../../toTime2 | string |  | 1..1 |
| ../../comment | string |  | 1..1 |
| visitingRuleAge | AgeSpanType |  | 0..1 |
| ../from | integer |  | 1..1 |
| ../to | integer |  | 1..1 |
| visitingRuleReferral | string |  | 0..1 |
| visitingRules | string |  | 0..1 |
| referralReceiver | boolean |  | 0..1 |
| referralTypes | referralTypes |  | 1..1 |
| ../referralType | string |  | 0..* |
| DN | string |  | 1..1 |

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

| Fil | Typ |
|-----|-----|
| [GetHsaUnitInteraction_1.0_RIVTABP21.wsdl](GetHsaUnitInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetHsaUnitResponder_1.0.xsd](GetHsaUnitResponder_1.0.xsd) | Tjänsteschema |
| [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.1.18 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/gethsaunit-request](StructureDefinition-gethsaunit-request.html)
* **Logisk modell (response):** [StructureDefinition/gethsaunit](StructureDefinition-gethsaunit.html)

### GetHsaPerson

*TKB avsnitt 4.*

GetHsaPerson hämtar information om en HSA-person (hsaPersonExtension).

#### 7.2.1 Frivillighet

Tjänsten är obligatorisk

#### 7.2.2 Version

Detta är första versionen av tjänsten.

#### 7.2.3 Begäran (Request)

Endast en av parametrarna hsaIdentity och personalIdentityNumber skall och måste användas.

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 0 - 1 | HSA-identitet för användaren vars information skall hämtas. |
| personalIdentityNumber | String | 0 – 1 | Personnummer för användaren vars information skall hämtas. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen. / Om ingen sökbas anges används c=SE som sökbas. |

#### 7.2.4 Svar (Response)

En lista med de personobjekt som matchar sökriterierna av XML-typen GetHsaPersonResponseType returneras. Detta objekt innehåller information om personen som eftersöks.
Om inga personobjekt hittas returneras en tom lista.
För närvarande (se ref. 3) finns inte något sätt att koppla paTitleCode till paTitleName för person.

#### 7.2.5 GetHsaPersonResponseType

| Parameter | Underparameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| userInformations |  | Collection | 1 – 1 |  |
|  | userInformation | User Information | 0 – n | Information om personen. / Om personen har flera HSA-objekt returneras en instans per HSA-objekt. |

#### 7.2.6 UserInformation

Information om HSA-personen i form av GetHsaPersonHsaUserType. För detaljerad information om respektive parameter se HSA-specifikationen (ref 1).

| Parameter | Underparameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| personalPrescriptionCode / HSA: förskrivarkod / LDAP: personalPrescriptionCode |  | String | 0 - 1 | Kod som identifierar en förskrivare eller en grupp av förskrivare. /  / (ny parameter för E-remiss) |
| paTitleCodes |  | Collection | 1 - 1 |  |
| paTitleCode / HSA: befattningskod / LDAP: paTitleCode |  | String | 0 - n | Kod för personens befattning. /  / (ny parameter för E-remiss) |
| paTitleNames |  | Collection | 1 - 1 |  |
| paTitleName / HSA: befattning / LDAP: paTitleName |  | String | 0 - n | Uppgift om vad personen är anställd som. Klartext för personens befattning. /  / (ny parameter för E-remiss) |
| hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity |  | String | 1 – 1 | HSA-identitet. |
| givenName / HSA: tilltalsnamn / LDAP: givenName |  | String | 1 – 1 | Tilltalsnamn. |
| sn / HSA: efternamn / LDAP: sn |  | String | 1 – 1 | Efternamn. |
| middleName / HSA: mellannamn / LDAP: middleName |  | String | 0 – 1 | Mellannamn för person |
| nickName / HSA: smeknamn / LDAP: nickName |  | String | 0 – 1 | Smeknamn för användning istället för tilltalsnamn. |
| mail / HSA: e-postadress / LDAP: mail |  | String | 0 – 1 | Epostadress. |
| telephoneNumbers |  | Collection | 1 – 1 |  |
|  | telephoneNumber / HSA: direkttelefon / LDAP: telephoneNumber | Telefon | 0 – n | Publikt direkttelefonnummer. |
| hsaSwitchboardNumber |  | Telefon | 0 – 1 | Telefonnummer till växel. |
| hsaTelephoneNumbers |  | Collection | 1 – 1 |  |
|  | hsaTelephoneNumber / HSA: tjänstetelefon / LDAP: hsaTelephoneNumber | Telefon | 0 – 1 | Tjänstetelefonnummer. / Skall inte visas för allmänheten. |
| mobileNumbers |  | Collection | 1 – 1 |  |
|  | mobileNumber / HSA: mobiltelefon / LDAP: mobile | String | 0 – n | Mobiltelefonnummer. |
| smsTelephoneNumber / HSA: SMS-telefon / LDAP: smsTelephoneNumber |  | Telefon | 0 – 1 | Telefonnummer för SMS-meddelanden. |
| facsimilleTelephoneNumbers |  | Collection | 1 – 1 |  |
|  | facsimilleTelephoneNumber HSA: faxnummer / LDAP: facsimilleTelephoneNumber | Telefon | 0 – n | Faxnummer. |
| telephoneHours |  | Collection | 1 – 1 |  |
|  | telephoneHour / HSA: telefontid / LDAP: telephoneHour | TimeSpan | 0 – n | Telefontider för publik telefon (telephoneNumbers). / För mer information se avsnitt 4.4.3.3.2. |
| postalAddress / HSA: postadress / LDAP: postalAddress |  | AddressType |  | Postadress. |
| labeledUri / HSA: webbadress / LDAP: labeledURI |  | String | 0 – 1 | Webbadress. |
| description / HSA: beskrivning / LDAP: description |  | String | 0 – 1 | Generell beskrivning. |
| languageKnowledgeCodes |  | Collection | 1 – 1 |  |
|  | languageKnowledgeCode / HSA: språkkod / LDAP: languageKnowledge Code | String | 0 – n | Kod för språk personen har tillräcklig kunskap om för att kunna ta emot patienter som talar detta språk. |
| title / HSA: titel / LDAP: title |  | String | 0 – 1 | Yrkestitel i fritext |
| hsaTitles |  | Collection | 1 – 1 |  |
|  | hsaTitle / HSA: Legitimerad yrkesgrupp / LDAP: hsaTitle | String | 0 – n | HSA-titel för specificerad person. / Aktuella HSA-titlar specificeras i HSA kodtabell. |
| specialityNames |  | Collection | 1 – 1 |  |
|  | specialityName / HSA: specialitet / LDAP: specialityName | String | 0 – n | Specialistutbildning utöver grundutbildning. |
| specialityCodes |  | Collection | 1 – 1 |  |
|  | specialityCode / HSA: specialitetskod / LDAP: specialityCode | String | 0 – n | Klassificeringskod för specialistutbildning utöver grundutbildning. |
| DN |  | DN | 1 | DN för person |

#### 7.2.7 Regler

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

#### 7.2.8 Tjänsteinteraktion

GetHsaPersonInteraction

#### 7.2.9 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| hsaIdentity | HsaIdentityType |  | 0..1 |
| personalIdentityNumber | string |  | 0..1 |
| searchBase | SearchBaseType |  | 0..1 |
| **Svar** | | | |
| userInformations | userInformations |  | 0..1 |
| ../userInformation | GetHsaPersonHsaUserType |  | 0..* |
| ../../personalPrescriptionCode | string |  | 0..1 |
| ../../description | string |  | 0..1 |
| ../../paTitleCodes | PaTitleCodesType |  | 1..1 |
| ../../../paTitleCode | string |  | 0..* |
| ../../paTitleNames | PaTitleNamesType |  | 1..1 |
| ../../../paTitleName | string |  | 0..* |
| ../../mail | string |  | 0..1 |
| ../../givenName | string |  | 1..1 |
| ../../hsaIdentity | HsaIdentityType |  | 1..1 |
| ../../hsaSwitchboardNumber | TelephoneNumberType |  | 0..1 |
| ../../hsaTelephoneNumbers | hsaTelephoneNumbers |  | 1..1 |
| ../../../hsaTelephoneNumber | TelephoneNumberType |  | 0..* |
| ../../labeledUri | string |  | 0..1 |
| ../../languageKnowledgeCodes | languageKnowledgeCodes |  | 0..1 |
| ../../../languageKnowledgeCode | string |  | 0..* |
| ../../mobileNumbers | mobileNumbers |  | 1..1 |
| ../../../mobileNumber | TelephoneNumberType |  | 0..* |
| ../../facsimileTelephoneNumbers | facsimileTelephoneNumbers |  | 1..1 |
| ../../../facsimileTelephoneNumber | TelephoneNumberType |  | 0..* |
| ../../nickName | string |  | 0..1 |
| ../../smsTelephoneNumber | TelephoneNumberType |  | 0..1 |
| ../../specialityCodes | specialityCodes |  | 1..1 |
| ../../../specialityCode | string |  | 0..* |
| ../../specialityNames | specialityNames |  | 1..1 |
| ../../../specialityName | string |  | 0..* |
| ../../sn | string |  | 1..1 |
| ../../telephoneHours | TelephoneHoursType |  | 1..1 |
| ../../../telephoneHour | TimeSpanType |  | 0..* |
| ../../../../fromDay | integer |  | 1..1 |
| ../../../../fromTime | time |  | 1..1 |
| ../../../../fromTime2 | string |  | 1..1 |
| ../../../../toDay | integer |  | 1..1 |
| ../../../../toTime | time |  | 1..1 |
| ../../../../toTime2 | string |  | 1..1 |
| ../../../../comment | string |  | 1..1 |
| ../../telephoneNumbers | telephoneNumbers |  | 1..1 |
| ../../../telephoneNumber | TelephoneNumberType |  | 0..* |
| ../../title | string |  | 0..1 |
| ../../DN | string |  | 1..1 |
| ../../middleName | string |  | 1..1 |
| ../../postalAddress | AddressType |  | 0..1 |
| ../../../addressLine | string |  | 1..* |
| ../../hsaTitles | HsaTitlesType |  | 1..1 |
| ../../../hsaTitle | string |  | 0..* |

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

| Fil | Typ |
|-----|-----|
| [GetHsaPersonInteraction_1.0_RIVTABP21.wsdl](GetHsaPersonInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetHsaPersonResponder_1.0.xsd](GetHsaPersonResponder_1.0.xsd) | Tjänsteschema |
| [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.2.12 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/gethsaperson-request](StructureDefinition-gethsaperson-request.html)
* **Logisk modell (response):** [StructureDefinition/gethsaperson](StructureDefinition-gethsaperson.html)

### GetMiuForPerson

*TKB avsnitt 5.*

GetMiuForPerson används för att söka ut behörighetsegenskaper (så kallade medarbetare i uppdrag) för en specificerad HSA-person.

#### 7.3.1 Frivillighet

Tjänsten är obligatorisk

#### 7.3.2 Version

Detta är första versionen av tjänsten.

#### 7.3.3 Begäran (Request)

Endast en av parametrarna hsaIdentity och personalIdentityNumber skall och måste användas.

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 0 – 1 | HSA-identitet på den person vars behörighetsegenskaper (MiU) skall utsökas.. |
| personalIdentityNumber | String | 0 – 1 | Personnummer på den person vars behörighetsegenskaper (MiU) skall utsökas. |
| searchBase | DN | 0 – 1 | Sökbas för sökning i HSA-katalogen. / Om ingen sökbas anges används c=SE som sökbas. |

#### 7.3.4 Svar (Response)

Om specificerad person har behörighetsstyrande egenskaper (personen är kopplad till en eller flera giltiga MiU) returneras dessa i objekt av XML-typen MiuInformation. Ett objekt per kopplad MiU returneras. Listan med funna MiUInformation packas in i ett objekt av XML-typen GetMiuForPersonResponse.
Observera att enbart MiU:s med aktuella kopplingar (aktuell tidpunkt ligger inom kopplingens start och slutdatum) returneras.
Om personen inte har några behörighetsegenskaper (personen är inte kopplad till någon giltig MiU) returneras null.

#### 7.3.5 GetMiuForPersonResponse

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| MiuInformation | Se nedan | 0 – n | Funna behörighetsegenskaper (MiU:s) för specificerad person. |

#### 7.3.6 MiuInformation

| Parameter | Underparameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| miuName / HSA: Objektnamn / LDAP: cn |  | String | 1 – 1 | Namn på aktuell MiU (commission). |
| hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity |  | String | 1 – 1 | HSA-identitet för aktuell MiU (commission). |
| miuPurpose / HSA: medarbetaruppdragets syfte / LDAP: hsaCommissionPurpose |  | String | 1 – 1 | Syfte med aktuell MiU. / Aktuella syften specificeras i HSA kodtabell. |
| careUnitHsaIdentity / HSA: HSA-id / LDAP: hsaIdentity |  | String | 1 – 1 | HSA-identitet på den vårdenhet aktuell MiU (commission)  tillhör. |
| careUnitName / HSA: Enhetsnamn eller Organisationsnamn / LDAP: ou eller o |  | String | 1 – 1 | Namn på den vårdenhet aktuell MiU (commission)  tillhör. |
| careGiver / HSA: HSA-id / LDAP: hsaIdentity |  | String | 0 – 1 | HSA-identitet på den vårdgivare aktuell MiU (commission) tillhör. Observera att en MiU inte är direkt kopplad till en vårdgivare utan tillhör den vårdgivare som MiU:ns vårdenhet tillhör. |
| careGiverName / HSA: Enhetsnamn eller Organisationsnamn / LDAP: ou eller o |  | String | 0 – 1 | Namn på den vårdgivare aktuell MiU tillhör. |
| careGiverOrgNo / HSA:  Organisationsnummer / LDAP: orgNo |  | String | 0 – 1 | Organisationsnummer för den vårdgivare aktuell MiU (commission) tillhör. |
| personalPrescriptionCode / HSA: Förskrivarkod / LDAP: personalPrescriptionCode |  | String | 0 – 1 | Förskrivarkod för specificerad person. |
| hsaTitles |  | Collection | 1 – 1 |  |
|  | hsaTitle / HSA: Legitimerad yrkesgrupp / LDAP: hsaTitle | String | 0 – n | HSA-titel för specificerad person. / Aktuella HSA-titlar specificeras i HSA kodtabell. |
| miuRights |  | Collection | 1 – 1 |  |
|  | miuRight / HSA: Medarbetaruppdragets rättigheter / LDAP: hsaCommissionRight | String | 0 – n | Rättighet för aktuell MiU (commission), / För mer information se avsnitt 4.4.5.3.3. |
| hsaSystemRoles |  | Collection | 1 – 1 |  |
|  | hsaSystemRole / HSA: individuell behörighets-egenskap för it-tjänster / LDAP: hsaSystemRole | String | 0 – n | Systemroller kopplade till specificerad person. / För mer information se avsnitt 4.4.5.3.4. |
| hsaIdentityPerson / HSA: HSA-id / LDAP: hsaIdentity |  | String | 1 – 1 | HSA-identitet för aktuell Person |
| paTitleCodes |  | Collection | 1 - 1 |  |
| paTitleCode / HSA: befattningskod / LDAP: paTitleCode |  | String | 0 – n | Befattningskoder kopplade till specificerad person. |
| givenName / HSA: förnamn / LDAP: givenName |  | String | 1 – 1 | Förnamn för person |
| middleAndSurName / HSA: mellannamn + efternamn / LDAP: middleName + surName (sn) |  | String | 1 – 1 | Mellannamn + efternamn för person.  Namnen är separerade med bindestreck. |

#### 7.3.7 MiuRights

Rättigheterna för en MiU specificeras i en sträng enligt följande syntax, `<aktivitet>`;`<informationstyp>`;`<organisationsomfång>`.
Aktivitet: Vad som får göras med aktuell information. Aktuella aktiviteter specificeras i HSA kodtabell.
Informationstyp: Den typ av information aktiviteten får utföras på. Aktuella informationstyper specificeras i HSA kodtabell.
Organisationsomfång: Inom vilken sfär får specificerad person komma åt informationen. Aktuella informationsomfång specificeras i HSA kodtabell

#### 7.3.8 HsaSystemRoles

De så kallade systemroller (hsaSystemRole) som är kopplade till aktuell person. En systemroll specificeras i en sträng med följande syntax, `<systemidentitet>`;`<systemroll>`.

#### 7.3.9 Regler

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

#### 7.3.10 Tjänsteinteraktion

GetMiuForPersonInteraction

#### 7.3.11 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| hsaIdentity | HsaIdentityType |  | 0..1 |
| personalIdentityNumber | string |  | 0..1 |
| searchBase | SearchBaseType |  | 0..1 |
| **Svar** | | | |
| MiuInformation | MiuInformationType |  | 0..* |
| ../miuName | string |  | 1..1 |
| ../hsaIdentity | HsaIdentityType |  | 1..1 |
| ../miuPurpose | string |  | 1..1 |
| ../careUnitHsaIdentity | HsaIdentityType |  | 1..1 |
| ../careUnitName | string |  | 0..1 |
| ../careGiver | string |  | 1..1 |
| ../careGiverName | string |  | 1..1 |
| ../careGiverOrgNo | orgNo |  | 1..1 |
| ../personalPrescriptionCode | string |  | 0..1 |
| ../hsaTitles | HsaTitlesType |  | 1..1 |
| ../../hsaTitle | string |  | 0..* |
| ../miuRights | MiuRightsType |  | 1..1 |
| ../../miuRight | string |  | 0..* |
| ../hsaSystemRoles | HsaSystemRolesType |  | 1..1 |
| ../../hsaSystemRole | string |  | 0..* |
| ../hsaIdentityPerson | HsaIdentityType |  | 1..1 |
| ../paTitleCodes | PaTitleCodesType |  | 1..1 |
| ../../paTitleCode | string |  | 0..* |
| ../givenName | string |  | 1..1 |
| ../middleAndSurName | string |  | 1..1 |

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

| Fil | Typ |
|-----|-----|
| [GetMiuForPersonInteraction_1.0_RIVTABP21.wsdl](GetMiuForPersonInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetMiuForPersonResponder_1.0.xsd](GetMiuForPersonResponder_1.0.xsd) | Tjänsteschema |
| [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.3.14 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getmiuforperson-request](StructureDefinition-getmiuforperson-request.html)
* **Logisk modell (response):** [StructureDefinition/getmiuforperson](StructureDefinition-getmiuforperson.html)

### GetHsaUnitList

*TKB avsnitt 6 (rubrik i TKB: GetUnitList).*

GetUnitList hämtar information om en organisatorisk enhet och alla dess underenheter.
En underenhet definieras som en enhet som har den överliggande enhetens namn i OU eller O i sitt DN.

#### 7.4.1 Frivillighet

Tjänsten är obligatorisk

#### 7.4.2 Version

Detta är första versionen av tjänsten.

#### 7.4.3 Begäran (Request)

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 0 - 1 | HSA-identitet för enheten eller organisationen från vilken alla underliggande enheter ska hämtas. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen. / Om ingen sökbas anges används c=SE som sökbas. |

#### 7.4.4 Svar (Response)

En lista med unitobjekt av XML-typen GetHsaUnitListResponseType returneras.
Om inga objekt hittas returneras en tom lista.

#### 7.4.5 GetHsaUnitListResponseType

| Parameter | Underparameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| UnitList |  | Collection | 1 – 1 |  |
|  | unitListUnit | UnitListUnit | 0 – n |  |

#### 7.4.6 UnitListUnit

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | String | 1 – 1 | Enhetens HSA-identitet. |
| name / HSA: Organisationsnamn, Enhetsnamn, / LDAP: ou | String | 1 – 1 | Namn / Namn i detta sammanhang definieras som värdet i LDAP-attributet ou (organisationsenhet). |
| parentHsaIdentity | String | 0 - 1 | Hsa-identitet för den överliggande enheten. Om ingen överliggande enhet finns ska fältet sättas till NULL. /  / Förälder för en enhet är överliggande enhet i DN, med andra ord närmsta OU eller O. |

#### 7.4.7 Regler

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

#### 7.4.8 Tjänsteinteraktion

GetHsaUnitListInteraction

#### 7.4.9 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| hsaIdentity | HsaIdentityType |  | 0..1 |
| searchBase | SearchBaseType |  | 0..1 |
| **Svar** | | | |
| UnitList | UnitList |  | 0..1 |
| ../unitListUnit | UnitListUnit |  | 0..* |
| ../../hsaIdentity | HsaIdentityType |  | 1..1 |
| ../../name | string |  | 1..1 |
| ../../parentHsaIdentity | HsaIdentityType |  | 0..1 |

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

| Fil | Typ |
|-----|-----|
| [GetHsaUnitListInteraction_1.0_RIVTABP21.wsdl](GetHsaUnitListInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetHsaUnitListResponder_1.0.xsd](GetHsaUnitListResponder_1.0.xsd) | Tjänsteschema |
| [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.4.12 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/gethsaunitlist-request](StructureDefinition-gethsaunitlist-request.html)
* **Logisk modell (response):** [StructureDefinition/gethsaunitlist](StructureDefinition-gethsaunitlist.html)

### GetPersonsWithCommissionAtHealthCareUnit

*TKB avsnitt 7.*

GetPersonsWithCommissionAtHealthCareUnit hämtar information om personer som har Medarbetaruppdrag under vårdenheten
Sökningen kan även begränsas om en eller flera HsaTitles eller PaTitles anges.

#### 7.5.1 Frivillighet

Tjänsten är obligatorisk

#### 7.5.2 Version

Detta är första versionen av tjänsten.

#### 7.5.3 Begäran (Request)

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 1 - 1 | HSA-identitet för användaren vars information skall hämtas. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen. / Om ingen sökbas anges används c=SE som sökbas. |
| paTitleCodes | Collection | 1 - 1 |  |
| paTitleCode | String | 0 – n | Om angiven skall endast anställda med angiven befattning visas. Klartext för personens befattning. |
| hsaTitles | Collection | 1 - 1 |  |
| hsaTitle | String | 0 – n | Om angiven skall endast anställda med angiven legitimerad yrkesgrupp visas. Klartext för personens legitimerade yrkesgrupp. |

#### 7.5.4 Svar (Response)

En lista med objekt av XML-typen GetPersonsWithCommissionAtHealthCareUnitResponseType returneras.
Om inga objekt hittas returneras en tom lista.

#### 7.5.5 GetPersonsWithCommissionAtHealthCareUnitResponseType

| Parameter | Underparameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| PersonList |  | Collection | 1 – 1 |  |
|  | personListPerson | PersonListPerson | 0 – n |  |

#### 7.5.6 PersonListPerson

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | String | 1 – 1 | Personens HSA-identitet. |
| givenName / HSA: tilltalsnamn / LDAP: givenName | String | 1 – 1 | Tilltalsnamn. |
| sn / HSA: efternamn / LDAP: sn | String | 1 – 1 | Efternamn. |
| personalPrescriptionCode / HSA: förskrivarkod / LDAP: personalPrescriptionCode | String | 0 - 1 | Kod som identifierar en förskrivare eller en grupp av förskrivare. |
| paTitleCodes | Collection | 1 – 1 |  |
| paTitleCode / HSA: befattningskod / LDAP: paTitleCode | String | 0 - n | Kod för personens befattning. |
| paTitleNames | Collection | 1 – 1 |  |
| paTitleName / HSA: befattning / LDAP: paTitleName | String | 0 - n | Uppgift om vad personen är anställd som. Klartext för personens befattning. |
| hsaTitles | Collection | 1 – 1 |  |
| hsaTitle / HSA: Legitimerad yrkesgrupp / LDAP: hsaTitle | String | 0 - n | Legitimerad yrkesgrupp som personen tillhör. |

#### 7.5.7 Regler

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

#### 7.5.8 Tjänsteinteraktion

GetPersonsWithCommissionAtHealthCareUnitInteraction

#### 7.5.9 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 8](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| hsaIdentity | HsaIdentityType |  | 1..1 |
| searchBase | SearchBaseType |  | 0..1 |
| paTitleCodes | PaTitleCodesType |  | 1..1 |
| ../paTitleCode | string |  | 0..* |
| hsaTitles | HsaTitlesType |  | 1..1 |
| ../hsaTitle | string |  | 0..* |
| **Svar** | | | |
| PersonList | PersonList |  | 0..1 |
| ../personListPerson | PersonListPerson |  | 0..* |
| ../../hsaIdentity | HsaIdentityType |  | 1..1 |
| ../../givenName | string |  | 1..1 |
| ../../sn | string |  | 1..1 |
| ../../personalPrescriptionCode | string |  | 0..1 |
| ../../paTitleCodes | PaTitleCodesType |  | 1..1 |
| ../../../paTitleCode | string |  | 0..* |
| ../../paTitleNames | PaTitleNamesType |  | 1..1 |
| ../../../paTitleName | string |  | 0..* |
| ../../hsaTitles | HsaTitlesType |  | 1..1 |
| ../../../hsaTitle | string |  | 0..* |

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

| Fil | Typ |
|-----|-----|
| [GetPersonsWithCommissionAtHealthCareUnitInteraction_1.0_RIVTABP21.wsdl](GetPersonsWithCommissionAtHealthCareUnitInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetPersonsWithCommissionAtHealthCareUnitResponder_1.0.xsd](GetPersonsWithCommissionAtHealthCareUnitResponder_1.0.xsd) | Tjänsteschema |
| [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.5.12 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getpersonswithcommissionathealthcareunit-request](StructureDefinition-getpersonswithcommissionathealthcareunit-request.html)
* **Logisk modell (response):** [StructureDefinition/getpersonswithcommissionathealthcareunit](StructureDefinition-getpersonswithcommissionathealthcareunit.html)


Organisationsinformation
Tjänstekontrakt
RevB
2012-11-27
Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av | Definitiv revision fastställd av |
| :--- | :--- | :--- | :--- | :--- |
| RevA | 2012-06-12 | Första version | Staffan Kvisth | - |
| RevB | 2012-11-27 | Efter revidering av Joakim Berg | Staffan Kvisth | - |
Innehållsförteckning
1.	Inledning	4
2.	Generella regler	5
3.	GetHsaUnit	6
4.	GetHsaPerson	15
5.	GetMiuForPerson	19
6.	GetUnitList	22
7.	GetPersonsWithCommissionAtHealthCareUnit	24
8.	Referenser	26

## Inledning
Detta är en beskrivning av tjänstekontraktet i tjänstedomänen orgmaster:hsa (huvuddomän ”<fullt utskriven huvuddomän på engelska>”, underdomän ”<fullt utskriven underdomän på engelska>”). Den svenska benämningen är ”Nationella Tjänstekontrakt för Organisationsinformation”.
Tjänstedomänen omfattning är hämtning av organisationsinformation mot en organisationskatalog, till exempel HSA. Den kravställande processen är olika leverantörers behov av ett enhetligt sätt att hämta information om en organisations enheter samt deras anställda.
Tjänstekontraktsbeskrivningen är ett teknik-oberoende, formellt regelverk som reglerar integrationskrav mellan parter (tjänstekonsumenter och tjänsteproducenter) med behov av elektronisk samverkan i ett speciellt syfte.
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, som de regler som uttrycks verbalt i detta dokument.

## Generella regler

### Format för datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

### Format för tidpunkter
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDttmmss”.

### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Felhantering
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren.
Vid ett logiskt fel i de uppdaterande tjänsterna levereras resultCode, resultText.
Syftet med resultText är att tjänstekonsumenten av tjänsten ska kunna visa upp informationen för användaren.
resultCode kan vara:
OK 
Transaktionen har utförts enligt uppdraget i frågemeddelandet.
INFO
Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart).
ERROR
Transaktionen har INTE kunnat utföras enligt uppdrag i frågemeddelandet p.g.a. logiskt fel.

## GetHsaUnit
GetHsaUnit används för att söka ut information om en specifik enhet eller funktion.

### Frivillighet
Tjänsten är obligatorisk

### Version
Detta är första versionen av tjänsten.

### Begäran (Request)

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 1 - 1 | HSA-identitet på den enhet som skall sökas ut. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen. / Om ingen sökbas anges används c=SE som sökbas. |
| getParentInfo | Boolean | 1 | true: om careGiver och parentHsaIdentity svarsparametrar ska returneras. |

### Svar (Response)
Om specificerad enhet hittas returneras information om enheten i ett objekt av XML-typen GetHsaUnitResponse.
Om enheten inte hittas returneras null (en tom SOAP-body).Unit [0..1]

### GetHsaUnitResponse
För detaljerad information om respektive parameter se HSA-specifikationen (ref 1).

| Parameter | Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| careGiver | careGiver | String | 0 – 1 | Hsa-identitet för vårdgivaren som vårdenheten tillhör. Returneras bara om aktuell enhet är en vårdenhet.

(ny parameter för E-remiss) |
| parentHsaIdentity | parentHsaIdentity | String | 0 - 1 | Hsa-identitet för den överliggande enheten. Om ingen överliggande enhet finns ska fältet sättas till NULL.

Förälder för en enhet är överliggande enhet i DN, med andra ord närmsta OU eller O. / Returneras bara om getParentInfo är true.

(ny parameter för E-remiss) |
| unitPrescriptionCodes | unitPrescriptionCodes | String | 1 - 1 | (ny parameter för E-remiss) |
|  | unitPrescriptionCode / HSA: Arbetsplatskod / LDAP: unitPrescriptionCode | String | 0 – n | Arbetsplatskod för enheten |
| alternateNames | alternateNames |  | 1 – 1 |  |
|  | alternateName / HSA: Alternativt namn / LDAP: ouShort | String | 0 – n | Alternativt namn på enheten som används vid sidan av det officiella namnet (publicName). |
| alternateText / HSA: alt-text / LDAP: hsaAltText | alternateText / HSA: alt-text / LDAP: hsaAltText | String | 0 – 1 | Beskrivande text som alternativ till bild på enhet. |
| businessClassifications | businessClassifications |  | 1 – 1 |  |
|  | businessClassification / HSA: Verksamhet / LDAP: businessClassification Name | String | 0 – n | Typ av verksamhet (klartext). |
| businessClassificationCodes | businessClassificationCodes |  | 1 – 1 |  |
|  | businessClassificationCode / HSA: Verksamhetskod / LDAP: businessClassification Code | String | 0 – n | Typ av verksamhet (kod) |
| businessTypes | businessTypes |  | 1 – 1 |  |
|  | businessType / HSA: Enhetstyp
LDAP: hsaBusinessType | String | 0 – n | Klassificering av enhet (t.ex. sjukhus). |
| careTypes | careTypes |  | 1 – 1 |  |
|  | careType / HSA: Vårdform
LDAP: careType | String | 0 – n | Vårdform. |
| county / HSA: Länsnamn / LDAP: countyName | county / HSA: Länsnamn / LDAP: countyName | String | 0 – 1 | Namn på län. |
| countyCode / HSA: Länskod / LDAP: countyCode | countyCode / HSA: Länskod / LDAP: countyCode | String | 0 – 1 | Kod för län. |
| description / HSA:Beskrivning / LDAP: description | description / HSA:Beskrivning / LDAP: description | String | 0 – 1 | Allmän beskrivning för enheten. |
| directoryContact / HSA: Innehållsansvarig / LDAP: hsaDirectoryContact (hämtad från överliggande o eller ou-objekt) | directoryContact / HSA: Innehållsansvarig / LDAP: hsaDirectoryContact (hämtad från överliggande o eller ou-objekt) | String | 0 – 1 | Ansvarig för informationen om enheten (emailadress). |
| displayOption / HSA:Alternativ namnvisning / LDAP: displayOption | displayOption / HSA:Alternativ namnvisning / LDAP: displayOption | String | 0 – 1 | Alternativ namnvisning, se Hsa Schemat för syntax. |
| dropInHours | dropInHours |  | 1 – 1 |  |
|  | dropInHour / HSA: Tid för dropin-besök utan tidsbokning / LDAP: dropInHours | Time Span | 0 – n | Tider för så dropin-besök (utan tidbokning). |
| Email / HSA: e-postadress / LDAP: mail | Email / HSA: e-postadress / LDAP: mail | String | 0 – 1 | Officiell emailadress till enheten. |
| faxNumbers | faxNumbers |  | 1 – 1 |  |
|  | faxNumber / HSA: Fax / LDAP: facsimileTelephone Number | Telefon | 0 – n | Faxnummer till enheten. |
| geographicalCoordinatesRt90 / HSA: Geografiska koordinater / LDAP: geographicalCoordinates | geographicalCoordinatesRt90 / HSA: Geografiska koordinater / LDAP: geographicalCoordinates | Geo Coord | 0 – 1 | Geografiska koordinater för enhetens huvudsakliga fysiska placering. Koordinaterna anges enligt RT90. |
| healthCareArea / HSA: Områdesansvar / LDAP: hsaHealthCareArea | healthCareArea / HSA: Områdesansvar / LDAP: hsaHealthCareArea | String | 0 – 1 | Geografiskt område för någon typ av administrativt område. |
| hsaDestinationIndicators | hsaDestinationIndicators |  | 1 – 1 |  |
|  | hsaDestinationIndicator / HSA: Visas för / LDAP: hsaDestinationIndicator | String | 0 – n | Anger vilka parter som får ta del av enhetens information. |
| hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | String | 1 – 1 | HSA-identitet |
| hsaJpegLogotype / HSA: Logotyp / LDAP: hsaJpegLogotype | hsaJpegLogotype / HSA: Logotyp / LDAP: hsaJpegLogotype | String | 0 – 1 | Logotype för enheten. / Logotypen är en binär bild i JPEG-format. Bildinformationen returneras Base64-kodat. |
| invoiceAddress / HSA: Fakturaadress / LDAP: hsaInvoiceAddress | invoiceAddress / HSA: Fakturaadress / LDAP: hsaInvoiceAddress | Address | 0 – 1 | Fakturaadress. |
| jpegPhoto / HSA: Bild / LDAP: jpegPhoto | jpegPhoto / HSA: Bild / LDAP: jpegPhoto | String | 0 – 1 | Allmän bild för enheten. / Bilden är en binär bild i JPEG-format. Bildinformationen returneras Base64-kodat. |
| labeledUri / HSA: Webbadress / LDAP: labeledURI | labeledUri / HSA: Webbadress / LDAP: labeledURI | String | 0 – 1 | Fullständig webbadress (inklusive http://  eller https://) |
| Location / HSA: Geografisk plats / LDAP: l | Location / HSA: Geografisk plats / LDAP: l | String | 0 – 1 | Namn på geografiskt område där enheten i huvudsak är placerad. |
| webPage1177 / HSA: 1177-kontaktkortslänk / LDAP: hsaVpwWebPage | webPage1177 / HSA: 1177-kontaktkortslänk / LDAP: hsaVpwWebPage |  |  | Länk till Enhetens sida på 1177.se (om enheten är publik och finns på 1177.se) |
| managements | managements |  | 1 – 1 |  |
|  | management / HSA: Ägarform / LDAP: management | String | 0 – n | Ägarform i klartext. |
| municipality / HSA: Kommunnamn / LDAP: municipalityName | municipality / HSA: Kommunnamn / LDAP: municipalityName | String | 0 – 1 | Namn på kommun. |
| municipalityCode / HSA: Kommunkod / LDAP: municipalityCode | municipalityCode / HSA: Kommunkod / LDAP: municipalityCode | String | 0 – 1 | Kod för kommun. |
| municipalitySection / HSA: Kommundelsnamn / LDAP: municipalitySectionName | municipalitySection / HSA: Kommundelsnamn / LDAP: municipalitySectionName | String | 0 – 1 | Namn på kommundel. |
| name / HSA: Organisationsnamn, Enhetsnamn eller Objektnamn, / LDAP: o, ou eller cn (beroende på objekttyp) | name / HSA: Organisationsnamn, Enhetsnamn eller Objektnamn, / LDAP: o, ou eller cn (beroende på objekttyp) | String | 1 – 1 | Namn / Namn i detta sammanhang definieras som värdet i LDAP-attributet o (organization), ou (organisationsenhet) eller cn (organisationsroll). |
| patientInformation / HSA: Information till patient / LDAP: hsaVpwInformation4 | patientInformation / HSA: Information till patient / LDAP: hsaVpwInformation4 | String | 0 – 1 | Informationstext till patienter. |
| postalAddress / HSA: Postadress / LDAP: postalAddress | postalAddress / HSA: Postadress / LDAP: postalAddress | Address | 0 – 1 | Postadress. |
| postalCode / HSA: Postnummer / LDAP: postalCode | postalCode / HSA: Postnummer / LDAP: postalCode | String | 0 – 1 | Postnummer. |
| priceInformation / HSA: Prisinformation / LDAP: hsaVpwInformation3 | priceInformation / HSA: Prisinformation / LDAP: hsaVpwInformation3 | String | 0 – 1 | Prisinformation. |
| publicName / (Namn som sätts samman utifrån flera olika Hsa-attribut, se beskrivningen) | publicName / (Namn som sätts samman utifrån flera olika Hsa-attribut, se beskrivningen) | String | 1 – 1 | Publikt officiellt namn. / Det publika namnet beräknas i första hand utifrån enhetens DN tillsammans med värdet i attributet displayOption i enlighet med beskrivningen i HSA-specifikationen (se ref 3). / Om enheten inte har något värde för displayOption beräknas det publika namnet utifrån följande attributkombinationer, i prioritetsordning; / ou<blanktecken>l / o<blanktecken>l / cn<blanktecken>l |
| relatedUnits | relatedUnits |  | 1 – 1 |  |
|  | relatedUnit / HSA: Relaterad enhet / LDAP: hsaVpwNeighbouring Object | String | 0 – n | HSA-identitet på en enhet som på något sätt hör ihop med aktuell enhet. / Informationen hämtas från LDAP-attributet hsaVpwNeighbouringObject. |
| route / HSA: Vägbeskrivning / LDAP: route | route / HSA: Vägbeskrivning / LDAP: route | String | 0 – 1 | Vägbeskrivning. |
| street / HSA: Besöksadress / LDAP: street | street / HSA: Besöksadress / LDAP: street | String | 0 – 1 | Besöksadress (gatuadress). |
| surgeryHours | surgeryHours |  | 1 – 1 |  |
|  | surgeryHour / HSA: Öppettider / LDAP: surgeryHours | Time Span | 0 – n | Öppetider. |
| switchboardNumber / HSA: Växeltelefon / LDAP: hsaSwitchboardNumber | switchboardNumber / HSA: Växeltelefon / LDAP: hsaSwitchboardNumber | Telefon | 0 – 1 | Telefonnummer till växel |
| telephoneHours | telephoneHours |  | 1 – 1 |  |
|  | telephoneHour / HSA: Telefontid / LDAP: telephoneHours | Time Span | 0 – n | Telefontider för telefonnummer i parametern telephoneNumbers. |
| telephoneNumbers | telephoneNumbers |  | 1 – 1 |  |
|  | telephoneNumber / HSA: Telefonnummer / LDAP: telephoneNumber | Telefon | 0 – n | Publikt direkttelefonnummer. |
| textTelephoneNumbers | textTelephoneNumbers |  | 1 – 1 |  |
|  | textTelephoneNumber / HSA: Texttelefon / LDAP: hsaTextTelephone Number | String | 0 – n | Texttelefonnummer för personer med tal- eller hörselhandikapp. |
| unitExtraInformation / HSA:  Mer om / LDAP: hsaVpwInformation1 | unitExtraInformation / HSA:  Mer om / LDAP: hsaVpwInformation1 | String | 0 – 1 | Kompleterande information om enheten |
| unitFunctions | unitFunctions |  | 1 – 1 |  |
|  | unitFunction / (se nedan för Hsa och Ldapnamn) | UnitFunc | 0 – n | Reserverade funktionsnamn kopplade till aktuell enhet. |
| unitTemporaryInformation / HSA: Tillfällig information / LDAP: hsaVpwInformation2 | unitTemporaryInformation / HSA: Tillfällig information / LDAP: hsaVpwInformation2 | DateSpan | 0 – 1 | Temporär information om enheten. |
| visitingHours | visitingHours |  | 1 – 1 |  |
|  | visitingHour / HSA: Besökstider för anhöriga / LDAP: visitingHours | TimeSpan | 0 – n | Besökstider för anhöriga. |
| visitingRuleAge / HSA: Åldersregler för vårdkontakt / LDAP: hsaVisitingRuleAge | visitingRuleAge / HSA: Åldersregler för vårdkontakt / LDAP: hsaVisitingRuleAge | AgeSpan | 0 – 1 | Åldersintervall på patienter som tas emot. |
| visitingRuleReferral / HSA: Remisskrav / LDAP: hsaVisitingRuleReferral | visitingRuleReferral / HSA: Remisskrav / LDAP: hsaVisitingRuleReferral | String | 0 – 1 | Beskrivning av remisskrav. |
| visitingRules / HSA: Besöksregler / LDAP: hsaVisitingRules | visitingRules / HSA: Besöksregler / LDAP: hsaVisitingRules | String | 0 – 1 | Besöksregler |
| referralReceiver | referralReceiver | Boolean | 0 – 1 | Flagga som anger om enheten kan ta emot remisser. |
| referralTypes | referralTypes | Collection | 1 – 1 |  |
| referralType | referralType | String | 0 – n | Vilken typ av remisser som en enhet kan ta emot |

### TimeSpan
Tidsintervall.

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| fromDay | String | 1 – 1 | Från dag. / Måndag (1) – Söndag (7). |
| fromTime | Time (XML) | 1 – 1 | Från tid. |
| toDay | String | 1 – 1 | Till dag. / Måndag (1) – Söndag (7). |
| toTime | Time (XML) | 1 – 1 | Till tid. |
| Comment | String | 0 – 1 | Information om aktuellt tidsintervall. |

### GeoCoord
Geografiska koordinater.

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| Type | String | 1 – 1 | Typ av geografisk koordinat. / Idag används enbart RT90. |
| X | String | 1 – 1 | X-koordinat. |
| Y | String | 1 – 1 | Y-koordinat. |

### Address
Addressinformation

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| addressLine | String | 1 – n | Adressrad. |

### UnitFunc
Information om så kallad enhetsfunktion. Idag finns följande enhetsfunktioner;
Avbokning
Bokning
Sjukresebeställning
Receptförnyelse
Rådgivning

| Parameter | Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| namn / HSA: Objektnamn / LDAP: cn | namn / HSA: Objektnamn / LDAP: cn | String | 1 – 1 | Enhetsfunktionens namn (se ovanstående lista). |
| telephoneHours | telephoneHours |  | 1 – 1 |  |
|  | telephoneHour / HSA: Telefontid / LDAP: telephoneHours | TimeSpan | 0 – n | Telefontider för telefonnummer i parametern telephoneNumbers. |
| telephoneNumbers | telephoneNumbers |  | 1 – 1 |  |
|  | telephoneNumber / HSA: Telefonnummer / LDAP: telephoneNumber | Telefon | 0 – n | Publikt direkttelefonnummer. |

### AgeSpan
Åldersintervall

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| From | String | 1 – 1 | Från ålder. 00 för nyfödd. |
| To | String | 1 – 1 | Till ålder. 99 för ingen övre åldersgräns. |

### Telefon
Telefonnummer anges med XML-typen string. Telefonnummer kodas i nationellt format utan bindestreck och mellanslag (t.ex. 08123456).

### DateSpan
Datumintervall.

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| fromDate | String | 1 – 1 | Från datum. / Exempel: 20101123 |
| toDate | String | 1 – 1 | Till datum. / Exempel: 20101131 |

### Regler
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

### Tjänsteinteraktion
GetHsaUnitInteraction

## GetHsaPerson
GetHsaPerson hämtar information om en HSA-person (hsaPersonExtension).

### Frivillighet
Tjänsten är obligatorisk

### Version
Detta är första versionen av tjänsten.

### Begäran (Request)
Endast en av parametrarna hsaIdentity och personalIdentityNumber skall och måste användas.

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 0 - 1 | HSA-identitet för användaren vars information skall hämtas. |
| personalIdentityNumber | String | 0 – 1 | Personnummer för användaren vars information skall hämtas. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen. / Om ingen sökbas anges används c=SE som sökbas. |

### Svar (Response)
En lista med de personobjekt som matchar sökriterierna av XML-typen GetHsaPersonResponseType returneras. Detta objekt innehåller information om personen som eftersöks.
Om inga personobjekt hittas returneras en tom lista.
För närvarande (se ref. 3) finns inte något sätt att koppla paTitleCode till paTitleName för person.

### GetHsaPersonResponseType

| Parameter | Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| userInformations | userInformations | Collection | 1 – 1 |  |
|  | userInformation | User Information | 0 – n | Information om personen. / Om personen har flera HSA-objekt returneras en instans per HSA-objekt. |

### UserInformation
Information om HSA-personen i form av GetHsaPersonHsaUserType. För detaljerad information om respektive parameter se HSA-specifikationen (ref 1).

| Parameter | Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| personalPrescriptionCode
HSA: förskrivarkod
LDAP: personalPrescriptionCode | personalPrescriptionCode
HSA: förskrivarkod
LDAP: personalPrescriptionCode | String | 0 - 1 | Kod som identifierar en förskrivare eller en grupp av förskrivare.

(ny parameter för E-remiss) |
| paTitleCodes | paTitleCodes | Collection | 1 - 1 |  |
| paTitleCode
HSA: befattningskod
LDAP: paTitleCode | paTitleCode
HSA: befattningskod
LDAP: paTitleCode | String | 0 - n | Kod för personens befattning.

(ny parameter för E-remiss) |
| paTitleNames | paTitleNames | Collection | 1 - 1 |  |
| paTitleName
HSA: befattning
LDAP: paTitleName | paTitleName
HSA: befattning
LDAP: paTitleName | String | 0 - n | Uppgift om vad personen är anställd som. Klartext för personens befattning.

(ny parameter för E-remiss) |
| hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | String | 1 – 1 | HSA-identitet. |
| givenName / HSA: tilltalsnamn / LDAP: givenName | givenName / HSA: tilltalsnamn / LDAP: givenName | String | 1 – 1 | Tilltalsnamn. |
| sn / HSA: efternamn / LDAP: sn | sn / HSA: efternamn / LDAP: sn | String | 1 – 1 | Efternamn. |
| middleName / HSA: mellannamn / LDAP: middleName | middleName / HSA: mellannamn / LDAP: middleName | String | 0 – 1 | Mellannamn för person |
| nickName / HSA: smeknamn / LDAP: nickName | nickName / HSA: smeknamn / LDAP: nickName | String | 0 – 1 | Smeknamn för användning istället för tilltalsnamn. |
| mail / HSA: e-postadress / LDAP: mail | mail / HSA: e-postadress / LDAP: mail | String | 0 – 1 | Epostadress. |
| telephoneNumbers | telephoneNumbers | Collection | 1 – 1 |  |
|  | telephoneNumber / HSA: direkttelefon / LDAP: telephoneNumber | Telefon | 0 – n | Publikt direkttelefonnummer. |
| hsaSwitchboardNumber | hsaSwitchboardNumber | Telefon | 0 – 1 | Telefonnummer till växel. |
| hsaTelephoneNumbers | hsaTelephoneNumbers | Collection | 1 – 1 |  |
|  | hsaTelephoneNumber / HSA: tjänstetelefon / LDAP: hsaTelephoneNumber | Telefon | 0 – 1 | Tjänstetelefonnummer. / Skall inte visas för allmänheten. |
| mobileNumbers | mobileNumbers | Collection | 1 – 1 |  |
|  | mobileNumber / HSA: mobiltelefon / LDAP: mobile | String | 0 – n | Mobiltelefonnummer. |
| smsTelephoneNumber / HSA: SMS-telefon / LDAP: smsTelephoneNumber | smsTelephoneNumber / HSA: SMS-telefon / LDAP: smsTelephoneNumber | Telefon | 0 – 1 | Telefonnummer för SMS-meddelanden. |
| facsimilleTelephoneNumbers | facsimilleTelephoneNumbers | Collection | 1 – 1 |  |
|  | facsimilleTelephoneNumber HSA: faxnummer / LDAP: facsimilleTelephoneNumber | Telefon | 0 – n | Faxnummer. |
| telephoneHours | telephoneHours | Collection | 1 – 1 |  |
|  | telephoneHour / HSA: telefontid / LDAP: telephoneHour | TimeSpan | 0 – n | Telefontider för publik telefon (telephoneNumbers). / För mer information se avsnitt 4.4.3.3.2. |
| postalAddress / HSA: postadress / LDAP: postalAddress | postalAddress / HSA: postadress / LDAP: postalAddress | AddressType |  | Postadress. |
| labeledUri / HSA: webbadress / LDAP: labeledURI | labeledUri / HSA: webbadress / LDAP: labeledURI | String | 0 – 1 | Webbadress. |
| description / HSA: beskrivning / LDAP: description | description / HSA: beskrivning / LDAP: description | String | 0 – 1 | Generell beskrivning. |
| languageKnowledgeCodes | languageKnowledgeCodes | Collection | 1 – 1 |  |
|  | languageKnowledgeCode / HSA: språkkod / LDAP: languageKnowledge Code | String | 0 – n | Kod för språk personen har tillräcklig kunskap om för att kunna ta emot patienter som talar detta språk. |
| title / HSA: titel / LDAP: title | title / HSA: titel / LDAP: title | String | 0 – 1 | Yrkestitel i fritext |
| hsaTitles | hsaTitles | Collection | 1 – 1 |  |
|  | hsaTitle / HSA: Legitimerad yrkesgrupp / LDAP: hsaTitle | String | 0 – n | HSA-titel för specificerad person. / Aktuella HSA-titlar specificeras i HSA kodtabell. |
| specialityNames | specialityNames | Collection | 1 – 1 |  |
|  | specialityName / HSA: specialitet / LDAP: specialityName | String | 0 – n | Specialistutbildning utöver grundutbildning. |
| specialityCodes | specialityCodes | Collection | 1 – 1 |  |
|  | specialityCode / HSA: specialitetskod / LDAP: specialityCode | String | 0 – n | Klassificeringskod för specialistutbildning utöver grundutbildning. |
| DN | DN | DN | 1 | DN för person |

### Regler
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

### Tjänsteinteraktion
GetHsaPersonInteraction

## GetMiuForPerson
GetMiuForPerson används för att söka ut behörighetsegenskaper (så kallade medarbetare i uppdrag) för en specificerad HSA-person.

### Frivillighet
Tjänsten är obligatorisk

### Version
Detta är första versionen av tjänsten.

### Begäran (Request)
Endast en av parametrarna hsaIdentity och personalIdentityNumber skall och måste användas.

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 0 – 1 | HSA-identitet på den person vars behörighetsegenskaper (MiU) skall utsökas.. |
| personalIdentityNumber | String | 0 – 1 | Personnummer på den person vars behörighetsegenskaper (MiU) skall utsökas. |
| searchBase | DN | 0 – 1 | Sökbas för sökning i HSA-katalogen. / Om ingen sökbas anges används c=SE som sökbas. |

### Svar (Response)
Om specificerad person har behörighetsstyrande egenskaper (personen är kopplad till en eller flera giltiga MiU) returneras dessa i objekt av XML-typen MiuInformation. Ett objekt per kopplad MiU returneras. Listan med funna MiUInformation packas in i ett objekt av XML-typen GetMiuForPersonResponse.
Observera att enbart MiU:s med aktuella kopplingar (aktuell tidpunkt ligger inom kopplingens start och slutdatum) returneras.
Om personen inte har några behörighetsegenskaper (personen är inte kopplad till någon giltig MiU) returneras null.

### GetMiuForPersonResponse

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| MiuInformation | Se nedan | 0 – n | Funna behörighetsegenskaper (MiU:s) för specificerad person. |

### MiuInformation

| Parameter | Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| miuName / HSA: Objektnamn / LDAP: cn | miuName / HSA: Objektnamn / LDAP: cn | String | 1 – 1 | Namn på aktuell MiU (commission). |
| hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | String | 1 – 1 | HSA-identitet för aktuell MiU (commission). |
| miuPurpose / HSA: medarbetaruppdragets syfte / LDAP: hsaCommissionPurpose | miuPurpose / HSA: medarbetaruppdragets syfte / LDAP: hsaCommissionPurpose | String | 1 – 1 | Syfte med aktuell MiU. / Aktuella syften specificeras i HSA kodtabell. |
| careUnitHsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | careUnitHsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | String | 1 – 1 | HSA-identitet på den vårdenhet aktuell MiU (commission)  tillhör. |
| careUnitName / HSA: Enhetsnamn eller Organisationsnamn / LDAP: ou eller o | careUnitName / HSA: Enhetsnamn eller Organisationsnamn / LDAP: ou eller o | String | 1 – 1 | Namn på den vårdenhet aktuell MiU (commission)  tillhör. |
| careGiver / HSA: HSA-id / LDAP: hsaIdentity | careGiver / HSA: HSA-id / LDAP: hsaIdentity | String | 0 – 1 | HSA-identitet på den vårdgivare aktuell MiU (commission) tillhör. Observera att en MiU inte är direkt kopplad till en vårdgivare utan tillhör den vårdgivare som MiU:ns vårdenhet tillhör. |
| careGiverName / HSA: Enhetsnamn eller Organisationsnamn / LDAP: ou eller o | careGiverName / HSA: Enhetsnamn eller Organisationsnamn / LDAP: ou eller o | String | 0 – 1 | Namn på den vårdgivare aktuell MiU tillhör. |
| careGiverOrgNo / HSA:  Organisationsnummer / LDAP: orgNo | careGiverOrgNo / HSA:  Organisationsnummer / LDAP: orgNo | String | 0 – 1 | Organisationsnummer för den vårdgivare aktuell MiU (commission) tillhör. |
| personalPrescriptionCode / HSA: Förskrivarkod / LDAP: personalPrescriptionCode | personalPrescriptionCode / HSA: Förskrivarkod / LDAP: personalPrescriptionCode | String | 0 – 1 | Förskrivarkod för specificerad person. |
| hsaTitles | hsaTitles | Collection | 1 – 1 |  |
|  | hsaTitle / HSA: Legitimerad yrkesgrupp / LDAP: hsaTitle | String | 0 – n | HSA-titel för specificerad person. / Aktuella HSA-titlar specificeras i HSA kodtabell. |
| miuRights | miuRights | Collection | 1 – 1 |  |
|  | miuRight / HSA: Medarbetaruppdragets rättigheter / LDAP: hsaCommissionRight | String | 0 – n | Rättighet för aktuell MiU (commission), / För mer information se avsnitt 4.4.5.3.3. |
| hsaSystemRoles | hsaSystemRoles | Collection | 1 – 1 |  |
|  | hsaSystemRole / HSA: individuell behörighets-egenskap för it-tjänster / LDAP: hsaSystemRole | String | 0 – n | Systemroller kopplade till specificerad person. / För mer information se avsnitt 4.4.5.3.4. |
| hsaIdentityPerson / HSA: HSA-id / LDAP: hsaIdentity | hsaIdentityPerson / HSA: HSA-id / LDAP: hsaIdentity | String | 1 – 1 | HSA-identitet för aktuell Person |
| paTitleCodes | paTitleCodes | Collection | 1 - 1 |  |
| paTitleCode
HSA: befattningskod
LDAP: paTitleCode | paTitleCode
HSA: befattningskod
LDAP: paTitleCode | String | 0 – n | Befattningskoder kopplade till specificerad person. |
| givenName / HSA: förnamn / LDAP: givenName | givenName / HSA: förnamn / LDAP: givenName | String | 1 – 1 | Förnamn för person |
| middleAndSurName / HSA: mellannamn + efternamn / LDAP: middleName + surName (sn) | middleAndSurName / HSA: mellannamn + efternamn / LDAP: middleName + surName (sn) | String | 1 – 1 | Mellannamn + efternamn för person.  Namnen är separerade med bindestreck. |

### MiuRights
Rättigheterna för en MiU specificeras i en sträng enligt följande syntax, <aktivitet>;<informationstyp>;<organisationsomfång>.
Aktivitet: Vad som får göras med aktuell information. Aktuella aktiviteter specificeras i HSA kodtabell.
Informationstyp: Den typ av information aktiviteten får utföras på. Aktuella informationstyper specificeras i HSA kodtabell.
Organisationsomfång: Inom vilken sfär får specificerad person komma åt informationen. Aktuella informationsomfång specificeras i HSA kodtabell

### HsaSystemRoles
De så kallade systemroller (hsaSystemRole) som är kopplade till aktuell person. En systemroll specificeras i en sträng med följande syntax, <systemidentitet>;<systemroll>.

### Regler
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

### Tjänsteinteraktion
GetMiuForPersonInteraction

## GetUnitList
GetUnitList hämtar information om en organisatorisk enhet och alla dess underenheter.
En underenhet definieras som en enhet som har den överliggande enhetens namn i OU eller O i sitt DN.

### Frivillighet
Tjänsten är obligatorisk

### Version
Detta är första versionen av tjänsten.

### Begäran (Request)

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 0 - 1 | HSA-identitet för enheten eller organisationen från vilken alla underliggande enheter ska hämtas. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen. / Om ingen sökbas anges används c=SE som sökbas. |

### Svar (Response)
En lista med unitobjekt av XML-typen GetHsaUnitListResponseType returneras.
Om inga objekt hittas returneras en tom lista.

### GetHsaUnitListResponseType

| Parameter | Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| UnitList | UnitList | Collection | 1 – 1 |  |
|  | unitListUnit | UnitListUnit | 0 – n |  |

### UnitListUnit

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | String | 1 – 1 | Enhetens HSA-identitet. |
| name / HSA: Organisationsnamn, Enhetsnamn, / LDAP: ou | String | 1 – 1 | Namn / Namn i detta sammanhang definieras som värdet i LDAP-attributet ou (organisationsenhet). |
| parentHsaIdentity | String | 0 - 1 | Hsa-identitet för den överliggande enheten. Om ingen överliggande enhet finns ska fältet sättas till NULL.

Förälder för en enhet är överliggande enhet i DN, med andra ord närmsta OU eller O. |

### Regler
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

### Tjänsteinteraktion
GetHsaUnitListInteraction

## GetPersonsWithCommissionAtHealthCareUnit
GetPersonsWithCommissionAtHealthCareUnit hämtar information om personer som har Medarbetaruppdrag under vårdenheten
Sökningen kan även begränsas om en eller flera HsaTitles eller PaTitles anges.

### Frivillighet
Tjänsten är obligatorisk

### Version
Detta är första versionen av tjänsten.

### Begäran (Request)

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity | String | 1 - 1 | HSA-identitet för användaren vars information skall hämtas. |
| searchBase | DN | 0 - 1 | Sökbas för sökning i HSA-katalogen. / Om ingen sökbas anges används c=SE som sökbas. |
| paTitleCodes | Collection | 1 - 1 |  |
| paTitleCode | String | 0 – n | Om angiven skall endast anställda med angiven befattning visas. Klartext för personens befattning. |
| hsaTitles | Collection | 1 - 1 |  |
| hsaTitle | String | 0 – n | Om angiven skall endast anställda med angiven legitimerad yrkesgrupp visas. Klartext för personens legitimerade yrkesgrupp. |

### Svar (Response)
En lista med objekt av XML-typen GetPersonsWithCommissionAtHealthCareUnitResponseType returneras.
Om inga objekt hittas returneras en tom lista.

### GetPersonsWithCommissionAtHealthCareUnitResponseType

| Parameter | Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- | :--- |
| PersonList | PersonList | Collection | 1 – 1 |  |
|  | personListPerson | PersonListPerson | 0 – n |  |

### PersonListPerson

| Parameter | Datatyp | Antal | Beskrivning |
| :--- | :--- | :--- | :--- |
| hsaIdentity / HSA: HSA-id / LDAP: hsaIdentity | String | 1 – 1 | Personens HSA-identitet. |
| givenName / HSA: tilltalsnamn / LDAP: givenName | String | 1 – 1 | Tilltalsnamn. |
| sn / HSA: efternamn / LDAP: sn | String | 1 – 1 | Efternamn. |
| personalPrescriptionCode
HSA: förskrivarkod
LDAP: personalPrescriptionCode | String | 0 - 1 | Kod som identifierar en förskrivare eller en grupp av förskrivare. |
| paTitleCodes | Collection | 1 – 1 |  |
| paTitleCode
HSA: befattningskod
LDAP: paTitleCode | String | 0 - n | Kod för personens befattning. |
| paTitleNames | Collection | 1 – 1 |  |
| paTitleName
HSA: befattning
LDAP: paTitleName | String | 0 - n | Uppgift om vad personen är anställd som. Klartext för personens befattning. |
| hsaTitles | Collection | 1 – 1 |  |
| hsaTitle
HSA: Legitimerad yrkesgrupp
LDAP: hsaTitle | String | 0 - n | Legitimerad yrkesgrupp som personen tillhör. |

### Regler
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception)

### Tjänsteinteraktion
GetPersonsWithCommissionAtHealthCareUnitInteraction

## Referenser
Följande externa referenser används i detta dokument;

| [1] | HSA-schema organisationsträdet, Version 3.8, 2011-10-12 |
| :--- | :--- |

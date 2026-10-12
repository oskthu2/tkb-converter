# 7 Tjänstekontrakt - strategicresourcemanagement: persons: employee v2.0.0-rc1

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

Källa: **Tjänstekontraktsbeskrivning strategicresourcemanagement: persons: employee**, tagg 2.0_RC1 (2016-11-22), [TKB_strategicresourcemanagement_persons_employee.docx](TKB_strategicresourcemanagement_persons_employee.docx).

> **Utgången domän.** Domänen kom aldrig längre än 2.0_RC1. I september 2017 flyttades tjänstekontrakten till infrastructure.directory.employee, som har en egen IG, och domänens repo är sedan dess tomt. IG:n dokumenterar RC-versionen.

Motsvarar TKB kapitel 6 **Tjänstekontrakt** (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### GetEmployeeIncludingProtectedPerson

GetEmployeeIncludingProtectedPerson returnerar information, som kontaktinformation samt legitimerad yrkesgrupp och specialitet, för angiven person. Metoden kan användas av en tjänstekonsument för att t.ex. verifiera uppgifter i en egen intern användardatabas, för att kunna registrera en användare (med HSA-id) baserat på användarens person-id eller för att verifiera behörighet för det fall att denna grundar sig enbart på den personliga egenskapen Legitimerad yrkesgrupp.

Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.2 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### 7.1.1 Version

Version på detta kontrakt är

#### 7.1.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

**De inklippta Exceldokumenten återges i [bilagan](8-bilaga-attributtabeller.md): attributtabell A och B.**

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| personHsaId *1) | String | Sökt persons HSA-id. | 0..1 |
| personalIdentityNumber *1) | String | Sökt persons Person-id (personnummer eller samordningsnummer) | 0..1 |
| searchBase *2) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |   |   |   |
| personInformation | PersonInformationType | Information om personen. / Om personen har flera person-objekt returneras en instans per objekt. | 0..n |
| ..personHsaId | String | Personens HSA-id. | 1..1 |
| ..givenName | String | Tilltalsnamn. | ..1 |
| ..middleAndSurName | String | Mellan- och Efternamn separerade med mellanslag | 1..1 |
| ..nickName | String | Smeknamn. Används då tilltalsnamn inte är det namn som personen vill använda/bli tilltalad med. | 0..1 |
| ..mail | String | E-postadress. | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer. | 0..n |
| ..switchboardNumber | Telefon | Telefonnummer till växel. | 0..1 |
| ..nonPublicTelephoneNumber | Telefon | Tjänstetelefonnummer. | 0..n |
| ..mobileNumber | Telefon | Mobiltelefonnummer. | 0..n |
| ..smsTelephoneNumber | Telefon | Telefonnummer för SMS-meddelanden. | 0..1 |
| ..facsimileTelephoneNumber | Telefon | Faxnummer. | 0..n |
| ..telephoneHour | TimeSpan | Telefontider för publik telefon (telephoneNumber). | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..postalAddress | AddressType | Postadress. | 0..1 |
| .. ..addressLine | String | Adressrad. | 1..n |
|   |   |   |   |
| ..description | String | Generell beskrivning. | 0..1 |
| ..languageKnowledgeCode | String | Kod för språk personen har tillräcklig kunskap om för att kunna ta emot patienter som talar detta språk. | 0..n |
| ..title | String | Titel i fritext | 0..1 |
| ..healthCareProfessionalLicence | String | Legitimerad yrkesgrupp | 0..n |
| ..paTitle | PaTitleType | Personens befattning | 0..n |
| .. ..paTitleName | String | Befattning | ..1 |
| .. ..paTitleCode | String | Befattningskod | ..1 |
| ..specialityName | String | Specialistutbildning utöver grundutbildning. | 0..n |
| ..specialityCode | String | Klassificeringskod för specialistutbildning utöver grundutbildning. | 0..n |
| ..dn | DN | ”Distinguished Name”. Objektets placering (sökväg) i katalogen, t.ex. cn=Henrika Littorin,ou=Anställda,ou=Enhet Systemförvaltning,ou=Område e-tjänster Drift och Förvaltning,o=Inera AB,c=SE | 1..1 |
| ..protectedPerson | Boolean | true: om person har skyddad identitet / (om personen inte har skyddad identitet kommer inget värde att returneras) | 0..1 |
| .. | Boolean | true: om personen är ett fingerat objekt | 0..1 |
|   |   |   |   |
|   |   |   |   |

#### 7.1.3 Tjänstekontraktsspecifika krav och regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

*1) personHsaId och personalIdentityNumber

Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.

*2) searchBase

För GetEmployeeIncludingProtectedPerson används följande sökningar/sökbaser:

* Sök efter person: i anropet angiven sökbas

#### 7.1.4 SLA-krav

Svarstider är specifika för respektive tjänstekontrakt.

Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| | | |
| :--- | :--- | :--- |
| GetEmployeeIncludingProtectedPerson | 10 anrop/s | 100 ms |

#### 7.1.5 Logiska fel

#### 7.1.6 Annan information om kontraktet

-

#### 7.1.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| personHsaId | string |   | 0..1 |
| personalIdentityNumber | string |   | 0..1 |
| searchBase | DNType |   | 0..1 |
| includeFeignedObject | boolean |   | 0..1 |
| **Svar** |   |   |   |
| personInformation | PersonInformationType |   | 0..* |
| ../personHsaId | string |   | 1..1 |
| ../givenName | string |   | 0..1 |
| ../middleAndSurName | string |   | 1..1 |
| ../nickName | string |   | 0..1 |
| ../mail | string |   | 0..1 |
| ../telephoneNumber | TelephoneNumberType |   | 0..* |
| ../switchboardNumber | TelephoneNumberType |   | 0..1 |
| ../nonPublicTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../mobileNumber | TelephoneNumberType |   | 0..* |
| ../smsTelephoneNumber | TelephoneNumberType |   | 0..1 |
| ../facsimileTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../telephoneHour | TimeSpanType |   | 0..* |
| ../../fromDay | string |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../toDay | string |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../comment | string |   | 0..1 |
| ../postalAddress | AddressType |   | 0..1 |
| ../../addressLine | string |   | 1..* |
| ../description | string |   | 0..1 |
| ../languageKnowledgeCode | string |   | 0..* |
| ../title | string |   | 0..1 |
| ../healthCareProfessionalLicence | string |   | 0..* |
| ../paTitle | PaTitleType |   | 0..* |
| ../../paTitleName | string |   | 0..1 |
| ../../paTitleCode | string |   | 0..1 |
| ../specialityName | string |   | 0..* |
| ../specialityCode | string |   | 0..* |
| ../dn | DNType |   | 1..1 |
| ../protectedPerson | boolean |   | 0..1 |
| ../personStartDate | dateTime |   | 0..1 |
| ../personEndDate | dateTime |   | 0..1 |
| ../feignedPerson | boolean |   | 0..1 |

#### 7.1.8 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetEmployeeIncludingProtectedPersonInteraction
 Beskrivning:
 Details – e.g. name, titles and contact details – for a specified person. Includes protected persons.
 Revisioner:
 Tjänstedomän: strategicresourcemanagement:persons:employee
 Tjänsteinteraktionstyp: Fråga-Svar
 WS-profil: RIVTABP21
 Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeIncludingProtectedPersonResponder:2:GetEmployeeIncludingProtectedPerson`

#### 7.1.9 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetEmployeeIncludingProtectedPersonInteraction_2.0_RIVTABP21.wsdl](GetEmployeeIncludingProtectedPersonInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetEmployeeIncludingProtectedPersonResponder_2.0.xsd](GetEmployeeIncludingProtectedPersonResponder_2.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_employee_2.0.xsd](strategicresourcemanagement_persons_employee_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [itintegration_monitoring_1.0.xsd](itintegration_monitoring_1.0.xsd) | Övervakning (delat) |

#### 7.1.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getemployeeincludingprotectedperson-request](StructureDefinition-getemployeeincludingprotectedperson-request.md)
* **Logisk modell (response):** [StructureDefinition/getemployeeincludingprotectedperson](StructureDefinition-getemployeeincludingprotectedperson.md)

### GetEmployee

Metoden är identisk med GetEmployeeIncludingProtectedPerson, förutom att skyddade personer aldrig returneras.

Det innebär också att fältet protectedPerson aldrig kommer att returneras.

För beskrivning av metoden se kap

ovan.

#### 7.2.1 Version

Version på detta kontrakt är 1.1

#### 7.2.2 Fältregler

Eftersom att skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.1.2 Fältregler) aldrig kommer att returneras.

#### 7.2.3 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| personHsaId | string |   | 0..1 |
| personalIdentityNumber | string |   | 0..1 |
| searchBase | DNType |   | 0..1 |
| includeFeignedObject | boolean |   | 0..1 |
| **Svar** |   |   |   |
| personInformation | PersonInformationType |   | 0..* |
| ../personHsaId | string |   | 1..1 |
| ../givenName | string |   | 0..1 |
| ../middleAndSurName | string |   | 1..1 |
| ../nickName | string |   | 0..1 |
| ../mail | string |   | 0..1 |
| ../telephoneNumber | TelephoneNumberType |   | 0..* |
| ../switchboardNumber | TelephoneNumberType |   | 0..1 |
| ../nonPublicTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../mobileNumber | TelephoneNumberType |   | 0..* |
| ../smsTelephoneNumber | TelephoneNumberType |   | 0..1 |
| ../facsimileTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../telephoneHour | TimeSpanType |   | 0..* |
| ../../fromDay | string |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../toDay | string |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../comment | string |   | 0..1 |
| ../postalAddress | AddressType |   | 0..1 |
| ../../addressLine | string |   | 1..* |
| ../description | string |   | 0..1 |
| ../languageKnowledgeCode | string |   | 0..* |
| ../title | string |   | 0..1 |
| ../healthCareProfessionalLicence | string |   | 0..* |
| ../paTitle | PaTitleType |   | 0..* |
| ../../paTitleName | string |   | 0..1 |
| ../../paTitleCode | string |   | 0..1 |
| ../specialityName | string |   | 0..* |
| ../specialityCode | string |   | 0..* |
| ../dn | DNType |   | 1..1 |
| ../protectedPerson | boolean |   | 0..1 |
| ../personStartDate | dateTime |   | 0..1 |
| ../personEndDate | dateTime |   | 0..1 |
| ../feignedPerson | boolean |   | 0..1 |

#### 7.2.4 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetEmployeeInteraction
 Beskrivning:
 Details – e.g. name, titles and contact details – for a specified person. Does not include protected persons.
 Revisioner:
 Tjänstedomän: strategicresourcemanagement:persons:employee
 Tjänsteinteraktionstyp: Fråga-Svar
 WS-profil: RIVTABP21
 Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeResponder:2:GetEmployee`

#### 7.2.5 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetEmployeeInteraction_2.0_RIVTABP21.wsdl](GetEmployeeInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetEmployeeResponder_2.0.xsd](GetEmployeeResponder_2.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_employee_2.0.xsd](strategicresourcemanagement_persons_employee_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [itintegration_monitoring_1.0.xsd](itintegration_monitoring_1.0.xsd) | Övervakning (delat) |

#### 7.2.6 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getemployee-request](StructureDefinition-getemployee-request.md)
* **Logisk modell (response):** [StructureDefinition/getemployee](StructureDefinition-getemployee.md)

### GetCommissionMembersIncludingProtectedPerson

GetCommissionMembersIncludingProtectedPerson returnerar information, som namn, kontaktinformation samt legitimerad yrkesgrupp och specialitet, om personer som är kopplade till medarbetaruppdrag för angiven enhet eller organisation och kopplingen är inom ev angivna start- och slutdatum. Listan kan vid behov filtreras. Metoden kan användas av en tjänstekonsument för att t.ex. för en administratör presentera en lista med valbara personer för registrering i en intern användardatabas eller för tilldelning av ärenden.

Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.4 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### 7.3.1 Version

Version på detta kontrakt är 1.1

#### 7.3.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

**De inklippta Exceldokumenten återges i [bilagan](8-bilaga-attributtabeller.md): attributtabell A och C.**

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| healthCareUnitHsaId | String | HSA-id för vårdenhet enligt PDL. | 1..1 |
| commissionPurpose | String | Medarbetaruppdragets ändamål enligt definierad värdemängd. | 1..1 |
| commissionRights | String | Medarbetaruppdragets rättigheter enligt definierade värdemängder. Syntax / Aktivitet;Informationstyp;Omfång, alla delar behöver anges. | 0..n |
| healthCareProfessionalLicense | String | Legitimerad yrkesgrupp enligt definierad värdemängd | 0..n |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |   |   |   |
| personInformation | PersonInformationType | Information om personen. / En person (ett HSA-id) returneras bara en gång även om personen är medlem i flera matchande medarbetaruppdrag Om personen har flera person-objekt returneras en instans per objekt. | 0..n |
| ..personHsaId | String | Personens HSA-id. | 1..1 |
| ..givenName | String | Tilltalsnamn. | ..1 |
| ..middleAndSurName | String | Mellan- och Efternamn separerade med mellanslag | 1..1 |
| ..nickName | String | Smeknamn. Används då tilltalsnamn inte är det namn som personen vill använda/bli tilltalad med. | 0..1 |
| ..personStartDate | dateTime | Eventuellt startdatum för personens anställning. Om startdatum ännu inte inträtt innebär det att personens anställning ännu inte är aktiv. | 0..1 |
| ..personEndDate | dateTime | Eventuellt slutdatum för personens anställning. Om slutdatum passerats innebär det att personens anställning inte är aktiv. | 0..1 |
| ..mail | String | E-postadress. | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer. | 0..n |
| ..switchboardNumber | Telefon | Telefonnummer till växel. | 0..1 |
| ..nonPublicTelephoneNumber | Telefon | Tjänstetelefonnummer. | 0..n |
| ..mobileNumber | Telefon | Mobiltelefonnummer. | 0..n |
| ..smsTelephoneNumber | Telefon | Telefonnummer för SMS-meddelanden. | 0..1 |
| ..facsimileTelephoneNumber | Telefon | Faxnummer. | 0..n |
| ..telephoneHour | TimeSpan | Telefontider för publik telefon (telephoneNumber). | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..languageKnowledgeCode | String | Kod för språk personen har tillräcklig kunskap om för att kunna ta emot patienter som talar detta språk. | 0..n |
| ..title | String | Titel i fritext | 0..1 |
| ..healthCareProfessionalLicence | String | Legitimerad yrkesgrupp | 0..n |
| ..paTitle | PaTitleType | Personens befattning | 0..n |
| .. ..paTitleName | String | Befattning | ..1 |
| .. ..paTitleCode | String | Befattningskod | ..1 |
| ..specialityName | String | Specialistutbildning utöver grundutbildning. | 0..n |
| ..specialityCode | String | Klassificeringskod för specialistutbildning utöver grundutbildning. | 0..n |
| ..protectedPerson | Boolean | true: om person har skyddad identitet / (om personen inte har skyddad identitet kommer inget värde att returneras) | 0..1 |
| .. | Boolean | true: om personen är ett fingerat objekt | 0..1 |
|   |   |   |   |
|   |   |   |   |

#### 7.3.3 Tjänstekontraktsspecifika krav och regler

Till denna informationsmängd finns inga regler som ej uttrycks i schemafilerna och tabellen ovan.

*2) searchBase

För GetCommissionMembersIncludingProtectedPerson används följande sökningar/sökbaser:

* Sök efter vårdenhet: i anropet angiven sökbas
* Sök efter enhet som pekas ut i organisationsomfång: i anropet angiven sökbas
* Sök efter medarbetaruppdrag: vårdenheten används som sökbas
* Sök efter person: här används sökbasen c=SE

#### 7.3.4 SLA-krav

Svarstider är specifika för respektive tjänstekontrakt.

Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| | | |
| :--- | :--- | :--- |
| GetCommissionMembersIncludingProtectedPerson | 1 anrop/s | 1000 ms |

#### 7.3.5 Logiska fel

#### 7.3.6 Annan information om kontraktet

-

#### 7.3.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| healthCareUnitHsaId | string |   | 1..1 |
| commissionPurpose | string |   | 1..1 |
| commissionRights | string |   | 0..* |
| healthCareProfessionalLicense | string |   | 0..* |
| searchBase | DNType |   | 0..1 |
| includeFeignedObject | boolean |   | 0..1 |
| **Svar** |   |   |   |
| personInformation | PersonInformationType |   | 0..* |
| ../personHsaId | string |   | 1..1 |
| ../givenName | string |   | 0..1 |
| ../middleAndSurName | string |   | 1..1 |
| ../nickName | string |   | 0..1 |
| ../mail | string |   | 0..1 |
| ../telephoneNumber | TelephoneNumberType |   | 0..* |
| ../switchboardNumber | TelephoneNumberType |   | 0..1 |
| ../nonPublicTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../mobileNumber | TelephoneNumberType |   | 0..* |
| ../smsTelephoneNumber | TelephoneNumberType |   | 0..1 |
| ../facsimileTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../telephoneHour | TimeSpanType |   | 0..* |
| ../../fromDay | string |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../toDay | string |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../comment | string |   | 0..1 |
| ../postalAddress | AddressType |   | 0..1 |
| ../../addressLine | string |   | 1..* |
| ../description | string |   | 0..1 |
| ../languageKnowledgeCode | string |   | 0..* |
| ../title | string |   | 0..1 |
| ../healthCareProfessionalLicence | string |   | 0..* |
| ../paTitle | PaTitleType |   | 0..* |
| ../../paTitleName | string |   | 0..1 |
| ../../paTitleCode | string |   | 0..1 |
| ../specialityName | string |   | 0..* |
| ../specialityCode | string |   | 0..* |
| ../dn | DNType |   | 1..1 |
| ../protectedPerson | boolean |   | 0..1 |
| ../personStartDate | dateTime |   | 0..1 |
| ../personEndDate | dateTime |   | 0..1 |
| ../feignedPerson | boolean |   | 0..1 |

#### 7.3.8 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetCommissionMembersIncludingProtectedPersonInteraction
 Beskrivning:
 Details – e.g. name, titles and contact details – for members of a commission. Includes protected persons.
 Revisioner:
 Tjänstedomän: strategicresourcemanagement:persons:employee
 Tjänsteinteraktionstyp: Fråga-Svar
 WS-profil: RIVTABP21
 Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersIncludingProtectedPersonResponder:2:GetCommissionMembersIncludingProtectedPerson`

#### 7.3.9 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetCommissionMembersIncludingProtectedPersonInteraction_2.0_RIVTABP21.wsdl](GetCommissionMembersIncludingProtectedPersonInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetCommissionMembersIncludingProtectedPersonResponder_2.0.xsd](GetCommissionMembersIncludingProtectedPersonResponder_2.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_employee_2.0.xsd](strategicresourcemanagement_persons_employee_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [itintegration_monitoring_1.0.xsd](itintegration_monitoring_1.0.xsd) | Övervakning (delat) |

#### 7.3.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getcommissionmembersincludingprotectedperson-request](StructureDefinition-getcommissionmembersincludingprotectedperson-request.md)
* **Logisk modell (response):** [StructureDefinition/getcommissionmembersincludingprotectedperson](StructureDefinition-getcommissionmembersincludingprotectedperson.md)

### GetCommissionMembers

Metoden är identisk med GetCommissionMembersIncludingProtectedPerson, förutom att skyddade personer aldrig returneras.

Det innebär också att fältet protectedPerson aldrig kommer att returneras.

För beskrivning av metoden se kap 6.3 ovan.

#### 7.4.1 Version

Version på detta kontrakt är 1.1

#### 7.4.2 Fältregler

Eftersom att skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.3.2 Fältregler) aldrig kommer att returneras.

#### 7.4.3 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| healthCareUnitHsaId | string |   | 1..1 |
| commissionPurpose | string |   | 1..1 |
| commissionRights | string |   | 0..* |
| healthCareProfessionalLicense | string |   | 0..* |
| searchBase | DNType |   | 0..1 |
| includeFeignedObject | boolean |   | 0..1 |
| **Svar** |   |   |   |
| personInformation | PersonInformationType |   | 0..* |
| ../personHsaId | string |   | 1..1 |
| ../givenName | string |   | 0..1 |
| ../middleAndSurName | string |   | 1..1 |
| ../nickName | string |   | 0..1 |
| ../mail | string |   | 0..1 |
| ../telephoneNumber | TelephoneNumberType |   | 0..* |
| ../switchboardNumber | TelephoneNumberType |   | 0..1 |
| ../nonPublicTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../mobileNumber | TelephoneNumberType |   | 0..* |
| ../smsTelephoneNumber | TelephoneNumberType |   | 0..1 |
| ../facsimileTelephoneNumber | TelephoneNumberType |   | 0..* |
| ../telephoneHour | TimeSpanType |   | 0..* |
| ../../fromDay | string |   | 1..1 |
| ../../fromTime | time |   | 1..1 |
| ../../toDay | string |   | 1..1 |
| ../../toTime | time |   | 1..1 |
| ../../comment | string |   | 0..1 |
| ../postalAddress | AddressType |   | 0..1 |
| ../../addressLine | string |   | 1..* |
| ../description | string |   | 0..1 |
| ../languageKnowledgeCode | string |   | 0..* |
| ../title | string |   | 0..1 |
| ../healthCareProfessionalLicence | string |   | 0..* |
| ../paTitle | PaTitleType |   | 0..* |
| ../../paTitleName | string |   | 0..1 |
| ../../paTitleCode | string |   | 0..1 |
| ../specialityName | string |   | 0..* |
| ../specialityCode | string |   | 0..* |
| ../dn | DNType |   | 1..1 |
| ../protectedPerson | boolean |   | 0..1 |
| ../personStartDate | dateTime |   | 0..1 |
| ../personEndDate | dateTime |   | 0..1 |
| ../feignedPerson | boolean |   | 0..1 |

#### 7.4.4 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetCommissionMembersInteraction
 Beskrivning:
 Details – e.g. name, titles and contact details – for members of a commission. Does not include protected persons.
 Revisioner:
 Tjänstedomän: strategicresourcemanagement:persons:employee
 Tjänsteinteraktionstyp: Fråga-Svar
 WS-profil: RIVTABP21
 Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:strategicresourcemanagement:persons:employee:GetCommissionMembersResponder:2:GetCommissionMembers`

#### 7.4.5 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetCommissionMembersInteraction_2.0_RIVTABP21.wsdl](GetCommissionMembersInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetCommissionMembersResponder_2.0.xsd](GetCommissionMembersResponder_2.0.xsd) | Tjänsteschema |
| [strategicresourcemanagement_persons_employee_2.0.xsd](strategicresourcemanagement_persons_employee_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [itintegration_monitoring_1.0.xsd](itintegration_monitoring_1.0.xsd) | Övervakning (delat) |

#### 7.4.6 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getcommissionmembers-request](StructureDefinition-getcommissionmembers-request.md)
* **Logisk modell (response):** [StructureDefinition/getcommissionmembers](StructureDefinition-getcommissionmembers.md)


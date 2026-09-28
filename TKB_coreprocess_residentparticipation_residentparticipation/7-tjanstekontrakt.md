# 7 Tjänstekontrakt - coreprocess: residentparticipation: residentparticipation v1.0.0-rc2

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

Källa: **Tjänstekontraktsbeskrivning för coreprocess: residentparticipation: residentparticipation**, version 1.0 RC2 (tagg 1.0_RC2, 2026-06-29), [TKB_coreprocess_residentparticipation_residentparticipation.docx](TKB_coreprocess_residentparticipation_residentparticipation.docx).

Motsvarar TKB kapitel 6 **Tjänstekontrakt** (7.1 = TKB 6.1). Efter TKB:ns text följer fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### GetCareManagers

Tjänstekontraktet hämtar en patients alla fasta kontakter. En konsument kan hämta följande fasta kontakter som patient tilldelats från vård- och omsorgen eller själv valt.

Följande fasta kontakter kan förmedlas:

* Fast vårdkontakt
* Fast omsorgskontakt
* Fast läkarkontakt (i primärvården)
* Kontaktsjuksköterska

#### 7.1.1 Version

Version 1.0

#### 7.1.2 V-MIM

![](img_006.jpeg)

**Hämta patients alla fasta kontakter - GetCareManagers**

#### 7.1.3 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| patientId | IIType | PatientId för patient vars fasta kontakter ska hämtas | 1..1 |
| patientId.root | string | Fältet sätts till OID motsvarande typ av patientidentifierare. / Följande patientId’n kan förmedlas: / 1) För personnummer skall Skatteverkets oid för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer skall Skatteverkets oid för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) För nationellt reservid skall Ineras oid för nationellt reservid (1.2.752.74.9.1) användas. / Observera: / För att en konsument och en producent ska kunna samverka behöver båda tjänstekomponenterna ha möjlighet till uppslag, antingen direkt eller indirekt, i Ineras nationella personuppgiftstjänst. | 1..1 |
| patientId.extension | string | Id för patienten. Anges med 12 tecken utan avskiljare. | 1..1 |
| careGiverId | HSAIdType | Frivilligt fält för filtrering av svar baserat på given vårdgivare. Sätts till HSAId för vårdgivaren. | 0..1 |
| careUnitId | HSAIdType | Frivilligt fält för filtrering av svar baserat på given vårdenhet. Sätts till HSAId för vårdenheten. | 0..1 |
| careManagerType | CVType | Kod för att filtrera svaret, baserat på typ av fast kontakt. Se referens R7 – kodverk för Fasta kontakter. Konsument begär filtrering genom att ange vilken typ av fast kontakt i fältet careManagerType.code samt anger careManagerType.codeSystem = ” 1.2.752.129.5.1.69”. Övriga fält i careManagerType kan utelämnas. | 0..1 |
| careProcessId | IIType | Unik identifierare för filtrering av svaret baserat på specifikt hälsoärende | 0..1 |
| Svar |   |   |   |
| careManager | PractitionerRoleType | Lista med fasta kontakter. | 0..* |
| careManager.* | PractitionerRoleType .* | Se detaljerad beskrivning av datatypen PractitionerRoleType och dess olika fält | - |
| careManager.practitioner | PractitionerType | Medarbetaren som tilldelats denna roll, så som fast kontakt | 1..1 |
| careManager.practitioner.* | PractitionerType.* | Se detaljerad beskrivning av datatypen PractitionerType och dess olika fält | - |
| careManager.careTeam | CareTeamType | Team som medarbetaren är del av, i sin roll som fast kontakt. | 0..* |
| careManager.careTeam.* | CareTeamType.* | Se detaljerad beskrivning av datatypen CareTeamType och dess olika fält | - |
| careManager.careTeam.contact | ContactType | Gemensamt kontaktsätt för att nå teamet | 0..* |
| careManager.careTeam.contact.* | ContactType .* | Se detaljerad beskrivning av datatypen ContactType och dess olika fält | - |
| careManager.contact | ContactType | Kontaktsätt för att nå den fasta kontakten (medarbetaren) | 0..* |
| careManager. contact.* | ContactType .* | Se detaljerad beskrivning av datatypen ContactType och dess olika fält | - |
| careManager.managingCareGiver | OrganizationType | Vård- eller omsorgsgivare som medarbetaren har sitt uppdrag i för denna roll (typ av fast kontakt) | 1..1 |
| careManager.managingCareGiver.* | OrganizationType.* | Se detaljerad beskrivning av datatypen OrganizationType och dess olika fält | - |
| careManager. managingCareGiver .contact.* | ContactType .* | Se detaljerad beskrivning av datatypen ContactType och dess olika fält | - |
| careManager.practitioner.managingCareUnit | OrganizationType | Vård- eller omsorgsenhet medarbetaren har sitt uppdrag i för denna roll (typ av fast kontakt) för medarbetaren | 0..1 |
| careManager.practitioner.managingCareUnit.* | * | Se detaljerad beskrivning av datatypen OrganizationType och dess olika fält | - |
| careManager. managingCareUnit .contact.* | ContactType .* | Se detaljerad beskrivning av datatypen ContactType och dess olika fält | - |
| careManager.practitioner.careProvidingCareUnit | OrganizationType | Den vårdutförande vård- eller omsorgsenheten som medarbetaren har sitt uppdrag i för denna roll (typ av fast kontakt) för medarbetaren | 0..1 |
| careManager.practitioner.careProvidingCareUnit.* | * | Se detaljerad beskrivning av datatypen OrganizationType och dess olika fält | - |
| careManager. careProvidingCareUnit .contact.* | ContactType .* | Se detaljerad beskrivning av datatypen ContactType och dess olika fält | - |
| careManager.careManagerHeader | HeaderType | Generell gemensam datatyp som används för tjänstekontrakt/informationsmängder som faller under Sammanhållen vård- och omsorgsdokumentation (SVOD). / Jämför med tjänstekontrakt som bär journal- och läkemedelsinformation. | 1..1 |
| careManager. careManagerHeader.* | HeaderType.* | Se detaljerad beskrivning av datatypen HeaderType och dess olika fält | - |
| careManagerHeader.accessControlHeader | AccessControlHeaderType | Generell information som syftar till att bl a ge underlag för konsumenters följsamhet till eventuellt spärrade journaluppgifter. / Se detaljerad beskrivning av datatypen AccessControlHeaderType och dess olika fält. | 1..1 |

#### 7.1.4 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| | | |
| :--- | :--- | :--- |
| **Regler i begäran** |   |   |
| **Regler i svaret** |   |   |
| rule001 [sch] | coun(//careManager/code/code[text() == ”2”]) <= 1 | Fast läkarkontakt får endast förekomma en (1) gång per patient |
| **Allmänna regler** |   |   |

##### 7.1.4.1 Icke funktionella krav

N/A

#### 7.1.5 Annan information om kontraktet

##### 7.1.5.1 Patientens direktåtkomst

Tjänstekontraktet GetCareManagers i denna tjänstedomän förmedlar, via attributen internalNotes, interna kommentarer som endast är avsedd för visning inom professionen. En konsumerande tjänst som tillgängliggörs till patienter ska inte tillgängliggöra denna information till patient eller till patients ombud.

#### 7.1.6 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat och domänschemat. Den avviker på några punkter från TKB:ns tabell ovan (se QUESTIONS.md); de logiska modellerna följer schemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| patientId | IIType |   | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| careGiverId | IIType |   | 0..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| careUnitId | IIType |   | 0..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| careManagerType | CVType |   | 0..* |
| ../code | string |   | 0..1 |
| ../codeSystem | string |   | 0..1 |
| ../codeSystemName | string |   | 0..1 |
| ../codeSystemVersion | string |   | 0..1 |
| ../displayName | string |   | 0..1 |
| ../originalText | string |   | 0..1 |
| careProcessId | IIType |   | 0..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| **Svar** |   |   |   |
| careManager | PractitionerRoleType |   | 0..* |
| ../careManagerHeader | HeaderType |   | 1..1 |
| ../../accessControlHeader | AccessControlHeaderType |   | 1..1 |
| ../../../accountableHealthcareProviderId | IIType |   | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../accountableCareUnitId | IIType |   | 0..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../patientId | IIType |   | 1..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../careProcessId | IIType |   | 0..1 |
| ../../../../root | string |   | 1..1 |
| ../../../../extension | string |   | 0..1 |
| ../../../blockComparisonTime | TimeStampType |   | 1..1 |
| ../../sourceSystemId | IIType |   | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../code | CVType |   | 1..1 |
| ../../code | string |   | 0..1 |
| ../../codeSystem | string |   | 0..1 |
| ../../codeSystemName | string |   | 0..1 |
| ../../codeSystemVersion | string |   | 0..1 |
| ../../displayName | string |   | 0..1 |
| ../../originalText | string |   | 0..1 |
| ../practitioner | PractitionerType |   | 1..1 |
| ../../hsaId | IIType |   | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../name | string |   | 0..1 |
| ../../qualification | CVType |   | 0..1 |
| ../../../code | string |   | 0..1 |
| ../../../codeSystem | string |   | 0..1 |
| ../../../codeSystemName | string |   | 0..1 |
| ../../../codeSystemVersion | string |   | 0..1 |
| ../../../displayName | string |   | 0..1 |
| ../../../originalText | string |   | 0..1 |
| ../careTeam | CareTeamType |   | 0..1 |
| ../../id | IIType |   | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../name | string |   | 1..1 |
| ../../internalNotes | string |   | 0..1 |
| ../../externalNotes | string |   | 0..1 |
| ../../contact | ContactType |   | 0..* |
| ../../../telecom | ContactPointSystemType |   | 0..* |
| ../../../../system | CVType |   | 0..1 |
| ../../../../../code | string |   | 0..1 |
| ../../../../../codeSystem | string |   | 0..1 |
| ../../../../../codeSystemName | string |   | 0..1 |
| ../../../../../codeSystemVersion | string |   | 0..1 |
| ../../../../../displayName | string |   | 0..1 |
| ../../../../../originalText | string |   | 0..1 |
| ../../../../value | string |   | 1..1 |
| ../../../../period | HoursOfServiceType |   | 0..* |
| ../../../../../datePeriod | DatePeriodType |   | 0..1 |
| ../../../../../../start | DateType |   | 1..1 |
| ../../../../../../end | DateType |   | 0..1 |
| ../../../../../weekDay | WeekDaysEnum |   | 0..7 |
| ../../../../../month | MonthsEnum |   | 0..* |
| ../../../../../time | TimePeriodType | Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss | 0..1 |
| ../../../../../../start | TimeType |   | 0..1 |
| ../../../../../../end | TimeType |   | 0..1 |
| ../../../address | AddressType |   | 0..1 |
| ../../../../type | CVType |   | 0..1 |
| ../../../../../code | string |   | 0..1 |
| ../../../../../codeSystem | string |   | 0..1 |
| ../../../../../codeSystemName | string |   | 0..1 |
| ../../../../../codeSystemVersion | string |   | 0..1 |
| ../../../../../displayName | string |   | 0..1 |
| ../../../../../originalText | string |   | 0..1 |
| ../../../../line | string |   | 0..* |
| ../../../../city | string |   | 0..1 |
| ../../../../postalCode | string |   | 0..1 |
| ../../../../period | HoursOfServiceType |   | 0..* |
| ../../../../../datePeriod | DatePeriodType |   | 0..1 |
| ../../../../../../start | DateType |   | 1..1 |
| ../../../../../../end | DateType |   | 0..1 |
| ../../../../../weekDay | WeekDaysEnum |   | 0..7 |
| ../../../../../month | MonthsEnum |   | 0..* |
| ../../../../../time | TimePeriodType | Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss | 0..1 |
| ../../../../../../start | TimeType |   | 0..1 |
| ../../../../../../end | TimeType |   | 0..1 |
| ../period | DatePeriodType |   | 1..1 |
| ../../start | DateType |   | 1..1 |
| ../../end | DateType |   | 0..1 |
| ../internalNotes | string |   | 0..1 |
| ../externalNotes | string |   | 0..1 |
| ../managingCareGiver | OrganizationType |   | 1..1 |
| ../../hsaId | IIType |   | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../name | string |   | 0..1 |
| ../../contact | ContactType |   | 0..* |
| ../../../telecom | ContactPointSystemType |   | 0..* |
| ../../../../system | CVType |   | 0..1 |
| ../../../../../code | string |   | 0..1 |
| ../../../../../codeSystem | string |   | 0..1 |
| ../../../../../codeSystemName | string |   | 0..1 |
| ../../../../../codeSystemVersion | string |   | 0..1 |
| ../../../../../displayName | string |   | 0..1 |
| ../../../../../originalText | string |   | 0..1 |
| ../../../../value | string |   | 1..1 |
| ../../../../period | HoursOfServiceType |   | 0..* |
| ../../../../../datePeriod | DatePeriodType |   | 0..1 |
| ../../../../../../start | DateType |   | 1..1 |
| ../../../../../../end | DateType |   | 0..1 |
| ../../../../../weekDay | WeekDaysEnum |   | 0..7 |
| ../../../../../month | MonthsEnum |   | 0..* |
| ../../../../../time | TimePeriodType | Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss | 0..1 |
| ../../../../../../start | TimeType |   | 0..1 |
| ../../../../../../end | TimeType |   | 0..1 |
| ../../../address | AddressType |   | 0..1 |
| ../../../../type | CVType |   | 0..1 |
| ../../../../../code | string |   | 0..1 |
| ../../../../../codeSystem | string |   | 0..1 |
| ../../../../../codeSystemName | string |   | 0..1 |
| ../../../../../codeSystemVersion | string |   | 0..1 |
| ../../../../../displayName | string |   | 0..1 |
| ../../../../../originalText | string |   | 0..1 |
| ../../../../line | string |   | 0..* |
| ../../../../city | string |   | 0..1 |
| ../../../../postalCode | string |   | 0..1 |
| ../../../../period | HoursOfServiceType |   | 0..* |
| ../../../../../datePeriod | DatePeriodType |   | 0..1 |
| ../../../../../../start | DateType |   | 1..1 |
| ../../../../../../end | DateType |   | 0..1 |
| ../../../../../weekDay | WeekDaysEnum |   | 0..7 |
| ../../../../../month | MonthsEnum |   | 0..* |
| ../../../../../time | TimePeriodType | Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss | 0..1 |
| ../../../../../../start | TimeType |   | 0..1 |
| ../../../../../../end | TimeType |   | 0..1 |
| ../managingCareUnit | OrganizationType |   | 0..1 |
| ../../hsaId | IIType |   | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../name | string |   | 0..1 |
| ../../contact | ContactType |   | 0..* |
| ../../../telecom | ContactPointSystemType |   | 0..* |
| ../../../../system | CVType |   | 0..1 |
| ../../../../../code | string |   | 0..1 |
| ../../../../../codeSystem | string |   | 0..1 |
| ../../../../../codeSystemName | string |   | 0..1 |
| ../../../../../codeSystemVersion | string |   | 0..1 |
| ../../../../../displayName | string |   | 0..1 |
| ../../../../../originalText | string |   | 0..1 |
| ../../../../value | string |   | 1..1 |
| ../../../../period | HoursOfServiceType |   | 0..* |
| ../../../../../datePeriod | DatePeriodType |   | 0..1 |
| ../../../../../../start | DateType |   | 1..1 |
| ../../../../../../end | DateType |   | 0..1 |
| ../../../../../weekDay | WeekDaysEnum |   | 0..7 |
| ../../../../../month | MonthsEnum |   | 0..* |
| ../../../../../time | TimePeriodType | Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss | 0..1 |
| ../../../../../../start | TimeType |   | 0..1 |
| ../../../../../../end | TimeType |   | 0..1 |
| ../../../address | AddressType |   | 0..1 |
| ../../../../type | CVType |   | 0..1 |
| ../../../../../code | string |   | 0..1 |
| ../../../../../codeSystem | string |   | 0..1 |
| ../../../../../codeSystemName | string |   | 0..1 |
| ../../../../../codeSystemVersion | string |   | 0..1 |
| ../../../../../displayName | string |   | 0..1 |
| ../../../../../originalText | string |   | 0..1 |
| ../../../../line | string |   | 0..* |
| ../../../../city | string |   | 0..1 |
| ../../../../postalCode | string |   | 0..1 |
| ../../../../period | HoursOfServiceType |   | 0..* |
| ../../../../../datePeriod | DatePeriodType |   | 0..1 |
| ../../../../../../start | DateType |   | 1..1 |
| ../../../../../../end | DateType |   | 0..1 |
| ../../../../../weekDay | WeekDaysEnum |   | 0..7 |
| ../../../../../month | MonthsEnum |   | 0..* |
| ../../../../../time | TimePeriodType | Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss | 0..1 |
| ../../../../../../start | TimeType |   | 0..1 |
| ../../../../../../end | TimeType |   | 0..1 |
| ../careProvidingCareUnit | OrganizationType |   | 0..1 |
| ../../hsaId | IIType |   | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../name | string |   | 0..1 |
| ../../contact | ContactType |   | 0..* |
| ../../../telecom | ContactPointSystemType |   | 0..* |
| ../../../../system | CVType |   | 0..1 |
| ../../../../../code | string |   | 0..1 |
| ../../../../../codeSystem | string |   | 0..1 |
| ../../../../../codeSystemName | string |   | 0..1 |
| ../../../../../codeSystemVersion | string |   | 0..1 |
| ../../../../../displayName | string |   | 0..1 |
| ../../../../../originalText | string |   | 0..1 |
| ../../../../value | string |   | 1..1 |
| ../../../../period | HoursOfServiceType |   | 0..* |
| ../../../../../datePeriod | DatePeriodType |   | 0..1 |
| ../../../../../../start | DateType |   | 1..1 |
| ../../../../../../end | DateType |   | 0..1 |
| ../../../../../weekDay | WeekDaysEnum |   | 0..7 |
| ../../../../../month | MonthsEnum |   | 0..* |
| ../../../../../time | TimePeriodType | Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss | 0..1 |
| ../../../../../../start | TimeType |   | 0..1 |
| ../../../../../../end | TimeType |   | 0..1 |
| ../../../address | AddressType |   | 0..1 |
| ../../../../type | CVType |   | 0..1 |
| ../../../../../code | string |   | 0..1 |
| ../../../../../codeSystem | string |   | 0..1 |
| ../../../../../codeSystemName | string |   | 0..1 |
| ../../../../../codeSystemVersion | string |   | 0..1 |
| ../../../../../displayName | string |   | 0..1 |
| ../../../../../originalText | string |   | 0..1 |
| ../../../../line | string |   | 0..* |
| ../../../../city | string |   | 0..1 |
| ../../../../postalCode | string |   | 0..1 |
| ../../../../period | HoursOfServiceType |   | 0..* |
| ../../../../../datePeriod | DatePeriodType |   | 0..1 |
| ../../../../../../start | DateType |   | 1..1 |
| ../../../../../../end | DateType |   | 0..1 |
| ../../../../../weekDay | WeekDaysEnum |   | 0..7 |
| ../../../../../month | MonthsEnum |   | 0..* |
| ../../../../../time | TimePeriodType | Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss | 0..1 |
| ../../../../../../start | TimeType |   | 0..1 |
| ../../../../../../end | TimeType |   | 0..1 |
| ../contact | ContactType |   | 0..* |
| ../../telecom | ContactPointSystemType |   | 0..* |
| ../../../system | CVType |   | 0..1 |
| ../../../../code | string |   | 0..1 |
| ../../../../codeSystem | string |   | 0..1 |
| ../../../../codeSystemName | string |   | 0..1 |
| ../../../../codeSystemVersion | string |   | 0..1 |
| ../../../../displayName | string |   | 0..1 |
| ../../../../originalText | string |   | 0..1 |
| ../../../value | string |   | 1..1 |
| ../../../period | HoursOfServiceType |   | 0..* |
| ../../../../datePeriod | DatePeriodType |   | 0..1 |
| ../../../../../start | DateType |   | 1..1 |
| ../../../../../end | DateType |   | 0..1 |
| ../../../../weekDay | WeekDaysEnum |   | 0..7 |
| ../../../../month | MonthsEnum |   | 0..* |
| ../../../../time | TimePeriodType | Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss | 0..1 |
| ../../../../../start | TimeType |   | 0..1 |
| ../../../../../end | TimeType |   | 0..1 |
| ../../address | AddressType |   | 0..1 |
| ../../../type | CVType |   | 0..1 |
| ../../../../code | string |   | 0..1 |
| ../../../../codeSystem | string |   | 0..1 |
| ../../../../codeSystemName | string |   | 0..1 |
| ../../../../codeSystemVersion | string |   | 0..1 |
| ../../../../displayName | string |   | 0..1 |
| ../../../../originalText | string |   | 0..1 |
| ../../../line | string |   | 0..* |
| ../../../city | string |   | 0..1 |
| ../../../postalCode | string |   | 0..1 |
| ../../../period | HoursOfServiceType |   | 0..* |
| ../../../../datePeriod | DatePeriodType |   | 0..1 |
| ../../../../../start | DateType |   | 1..1 |
| ../../../../../end | DateType |   | 0..1 |
| ../../../../weekDay | WeekDaysEnum |   | 0..7 |
| ../../../../month | MonthsEnum |   | 0..* |
| ../../../../time | TimePeriodType | Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss | 0..1 |
| ../../../../../start | TimeType |   | 0..1 |
| ../../../../../end | TimeType |   | 0..1 |

#### 7.1.7 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1:GetCareManagers`

#### 7.1.8 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetCareManagersInteraction_1.0_RIVTABP21.wsdl](GetCareManagersInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetCareManagersResponder_1.0.xsd](GetCareManagersResponder_1.0.xsd) | Tjänsteschema |
| [coreprocess_residentparticipation_residentparticipation_1.0.xsd](coreprocess_residentparticipation_residentparticipation_1.0.xsd) | Domänschema |
| [coreprocess_residentparticipation_residentparticipation_enum_1.0.xsd](coreprocess_residentparticipation_residentparticipation_enum_1.0.xsd) | Domänschema, uppräkningar |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [interoperability_headers_1.0.xsd](interoperability_headers_1.0.xsd) | Gemensamt schema i källan (importeras inte av kontraktet) |
| [SjD_TP_GetCareManagers_1.0.docx](SjD_TP_GetCareManagers_1.0.docx) | Självdeklaration för tjänsteproducent |
| [GetCareManagers_constraints.xml](GetCareManagers_constraints.xml) | Schematron-regler ur testsviten (test-suite/GetCareManagers/constraints.xml) |

#### 7.1.9 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getcaremanagers-request](StructureDefinition-getcaremanagers-request.md)
* **Logisk modell (response):** [StructureDefinition/getcaremanagers](StructureDefinition-getcaremanagers.md)
* **Kodsystem:** [CodeSystem/residentparticipation-months-cs](CodeSystem-residentparticipation-months-cs.md)
* **ValueSet:** [ValueSet/residentparticipation-months-vs](ValueSet-residentparticipation-months-vs.md)
* **Kodsystem:** [CodeSystem/residentparticipation-weekdays-cs](CodeSystem-residentparticipation-weekdays-cs.md)
* **ValueSet:** [ValueSet/residentparticipation-weekdays-vs](ValueSet-residentparticipation-weekdays-vs.md)


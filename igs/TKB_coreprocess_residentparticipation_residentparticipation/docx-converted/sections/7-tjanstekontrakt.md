## Tjänstekontrakt

### GetCareManagers
Tjänstekontraktet hämtar en patients alla fasta kontakter. En konsument kan hämta följande fasta kontakter som patient tilldelats från vård- och omsorgen eller själv valt.
Följande fasta kontakter kan förmedlas:
Fast vårdkontakt
Fast omsorgskontakt
Fast läkarkontakt (i primärvården)
Kontaktsjuksköterska

#### Version
Version 1.0

#### V-MIM
Hämta patients alla fasta kontakter - GetCareManagers

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | IIType | PatientId för patient vars fasta kontakter ska hämtas | 1..1 |
| patientId.root | string | Fältet sätts till OID motsvarande typ av patientidentifierare. 
Följande patientId’n kan förmedlas:

1) För personnummer skall Skatteverkets oid för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer skall Skatteverkets oid för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) För nationellt reservid skall Ineras oid för nationellt reservid (1.2.752.74.9.1) användas.

Observera:
För att en konsument och en producent ska kunna samverka behöver båda tjänstekomponenterna ha möjlighet till uppslag, antingen direkt eller indirekt, i Ineras nationella personuppgiftstjänst. | 1..1 |
| patientId.extension | string | Id för patienten. Anges med 12 tecken utan avskiljare. | 1..1 |
| careGiverId | HSAIdType | Frivilligt fält för filtrering av svar baserat på given vårdgivare. Sätts till HSAId för vårdgivaren. | 0..1 |
| careUnitId | HSAIdType | Frivilligt fält för filtrering av svar baserat på given vårdenhet. Sätts till HSAId för vårdenheten. | 0..1 |
| careManagerType | CVType | Kod för att filtrera svaret, baserat på typ av fast kontakt. Se referens R7 – kodverk för Fasta kontakter. Konsument begär filtrering genom att ange vilken typ av fast kontakt i fältet careManagerType.code samt anger careManagerType.codeSystem = ” 1.2.752.129.5.1.69”. Övriga fält i careManagerType kan utelämnas. | 0..1 |
| careProcessId | IIType | Unik identifierare för filtrering av svaret baserat på specifikt hälsoärende | 0..1 |
| Svar |  |  |  |
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
| careManager.careManagerHeader | HeaderType | Generell gemensam datatyp som används för tjänstekontrakt/informationsmängder som faller under Sammanhållen vård- och omsorgsdokumentation (SVOD).
Jämför med tjänstekontrakt som bär journal- och läkemedelsinformation. | 1..1 |
| careManager. careManagerHeader.* | HeaderType.* | Se detaljerad beskrivning av datatypen HeaderType och dess olika fält | - |
| careManagerHeader.accessControlHeader | AccessControlHeaderType | Generell information som syftar till att bl a ge underlag för konsumenters följsamhet till eventuellt spärrade journaluppgifter.
Se detaljerad beskrivning av datatypen AccessControlHeaderType och dess olika fält. | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
|  |  |  |
|  |  |  |
| Regler i svaret | Regler i svaret | Regler i svaret |
| rule001 [sch] | coun(//careManager/code/code[text() == ”2”]) <= 1 | Fast läkarkontakt får endast förekomma en (1) gång per patient |
|  |  |  |
| Allmänna regler | Allmänna regler | Allmänna regler |
|  |  |  |

##### Icke funktionella krav
N/A

#### Annan information om kontraktet

##### Patientens direktåtkomst
Tjänstekontraktet GetCareManagers i denna tjänstedomän förmedlar, via attributen internalNotes, interna kommentarer som endast är avsedd för visning inom professionen. En konsumerande tjänst som tillgängliggörs till patienter ska inte tillgängliggöra denna information till patient eller till patients ombud.

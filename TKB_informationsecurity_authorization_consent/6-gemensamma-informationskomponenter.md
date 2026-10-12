# 6 Gemensamma informationskomponenter - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* **6 Gemensamma informationskomponenter**

## 6 Gemensamma informationskomponenter

# 6 Gemensamma informationskomponenter

Källa: **Samtycke**, tjänstekontraktsbeskrivning version 2.0.4 (tagg 2.0.4, 2025-12-09), [TKB_informationsecurity_authorization_consent.docx](TKB_informationsecurity_authorization_consent.docx).

Motsvarar TKB kapitel 7 **Datatyper** (6.1 = TKB 7.1 osv.). Rubrikerna för datatyperna anges här utan namnrymdsprefixet `urn:riv:informationsecurity:authorization:consent:2:`.

Kaptitlet beskriver alla datatyper som används av tjänsterna, version 2.0.

### 6.1 Datatyper från namnrymd urn:riv:informationsecurity:authorization:consent:2

Nedan beskrivs komplexa och simpla datatyper som är deklarerade i den beroende namnrymden urn:riv:informationsecurity:authorization:consent:2, version 2.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### 6.1.1 AccessingActorType

Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| | | | |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId | Id för medarbetaren/personen. | 1 |
| careProviderId | HsaId | Id på medarbetarens vårdgivare enligt aktuellt medarbetaruppdrag. | 1 |
| careUnitId | HsaId | Id på medarbetarens vårdenhet enligt aktuellt medarbetaruppdrag. | 1 |

#### 6.1.2 ActionType

Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.

| | | | |
| :--- | :--- | :--- | :--- |
| requestDate | xs:DateTime | Tidpunkt då åtgärden begärdes. | 1 |
| requestedBy | ActorType | Anger vem som begärt åtgärden. Om samtycket är givet för specifik vårdpersonal ska requestedBy vara lika med employeeId i samtycket. | 1 |
| registrationDate | xs:DateTime | Tidpunkt då händelsen registrerades. Kan vara samma tidpunkt som när åtgärden begärdes. | 1 |
| registeredBy | ActorType | Anger vem som registrerat åtgärden. Detta värde kan vara samma som den som begärt åtgärden. | 1 |
| reasonText | ReasonText | Optionellt fritext fält som anger orsaken/anledningen till åtgärden. | 0..1 |

#### 6.1.3 ActorType

Datatyp som identifierar en medarbetare/person.

| | | | |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId | Id för medarbetaren/personen. | 1 |
| assignmentId | HsaId | Optionellt id för medarbetarens aktuella uppdrag. | 0..1 |
| assignmentName | AssignmentNameType | Optionellt namn på medarbetarens aktuella uppdrag. | 0..1 |

#### 6.1.4 AssertionTypeType

Enumerationsvärde som anger typ av intyg som ger direktåtkomst till information från andra vård-/omsorgsgivare enligt SVOD.

Kan vara patientens/brukarens samtycke eller nödsituation.

| | |
| :--- | :--- |
| "Consent" | Patienten/Företrädaren har givit sitt samtycke. |
| "Emergency" | Nödsituation föreligger. Patientens samtycke kunde ej inhämtas. |

#### 6.1.5 AssignmentNameType

Datatyp som representerar namn på medarbetaruppdrag.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.6 CancelledAssertionType

Datatyp som representerar ett makulerat eller avslutat samtycke samt tidpunkten när makuleringen eller avslutandet utfördes.

| | | | |
| :--- | :--- | :--- | :--- |
| assertionId | Id | Id på det makulerade eller avslutade samtycket. | 1 |
| cancellationDate | xs:DateTime | Tidpunkt när makuleringen eller avslutandet utfördes. | 1 |

#### 6.1.7 CheckResultType

Datatyp som anger om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör.

Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType |   | 1 |
| hasConsent | xs:Boolean | Anger om aktören har ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst. | 1 |
| assertionType | AssertionTypeType | Anger vilken typ av intyg som hittades. / Om olika typer av samtyckesintyg finns registrerade returneras endast typen för det senaste registrerade intyget. | 0..1 |

#### 6.1.8 ExtendedPDLAssertionType

Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är avslutat eller makulerat.

Datatypen utökar datatypen PDLAssertion.

| | | | |
| :--- | :--- | :--- | :--- |
| pDLAssertion | PDLAssertionType |   | 1 |
| representedBy | IIType | Personidentitet på den företrädare/vårdnadshavare som företräder patienten/brukaren. / Värdet är ej obligatoriskt men ska finnas om samtycket gavs av företrädare/vårdnadshavare. | 0..1 |
| registrationInfo | ActionType | Innehåller information om vem som begärt och registrerat samtycket samt tidpunkten för begäran och registreringen. | 1 |
| cancellationInfo | ActionType | Information om en eventuell utfört avslutande av samtycket, när avslutandet registrerats från vård- och omsorgen. Innehåller vem som begärt och registrerat avslutandet, tidpunkten för begäran och registreringen av avslutandet, samt anledningen till avslutandet. | 0..1 |
| deletionInfo | ActionType | Information om en eventuell utförd makulering av samtycket. Innehåller vem som begärt och registrerat makuleringen, tidpunkten för begäran och registreringen av makuleringen, samt anledningen till makuleringen. | 0..1 |

#### 6.1.9 GetAllAssertionsResultType

Datatyp som representerar en lista med giltiga intyg tillsammans med en lista av makulerade och avslutade intyg. Den används för att dela upp svaret från tjänsten i mindre delar baserat på tidpunkt.

Datatypen innehåller information om det finns ytterligare intyg att hämta samt en ny starttidpunkt för när nästa sekvens av intyg startar.

Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType |   | 1 |
| moreOnOrAfter | xs:DateTime | Anger fr.o.m. vilken tidpunkt ytterligare samtyckesintyg finns att hämta. Tidpunkten kan användas iterativt i anrop till tjänsten som ett värde till parametern CreatedOnOrAfter. / Om inga fler samtyckesintyg finns att tillgå returneras ändå en tidpunkt vilket då får representera nästa möjliga hämtningstidpunkt, dvs nya samtyckesintyg kommer att bli registrerade efter denna tidpunkt. | 1 |
| hasMore | xs:Boolean | Anger om det finns ytterligare samtycken att hämta. Om fler samtycken finns att hämta bör hämtningen utgå fr.o.m. den tidpunkt som anges i MoreOnOrAfter. | 1 |
| assertions | PDLAssertionType | Lista med giltiga intyg. | 0..* |
| cancelledAssertions | CancelledAssertionType | Lista med ej utgångna och makulerade intyg. | 0..* |

#### 6.1.10 GetConsentsResultType

Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg.

Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType |   | 1 |
| pdlAssertions | PDLAssertionType | Lista med hämtade intyg. | 0..* |

#### 6.1.11 GetExtendedConsentsResultType

Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg.

Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType |   | 1 |
| pdlAssertions | ExtendedPDLAssertionType |   | 0..* |

#### 6.1.12 HsaId

Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).

Specificerat enligt HSA-schema tjänsteträdet version 3.9.

Restriktionstyp: xs:string

Maxlängd: 32

#### 6.1.13 IIType

En universellt unik identifierare.

| | | | |
| :--- | :--- | :--- | :--- |
| root | xs:String | Fältet root sätts till OID för kodverket för identifieraren (extension) / Som exempel för svenskt personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. | 1 |
| extension | xs:String | Ett id som tillsammans med värdet i root är unikt. Som exempel för svensk personidentitet så är extension lika med personnummer. | 0..1 |

#### 6.1.14 Id

Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).

Restriktionstyp: xs:string

Maxlängd: 36

#### 6.1.15 OwnerId

Datatyp som identifierar systemet som registrerade/skapade artefakten. Används endast för tekniskt bruk för t.ex. uppföljning och spårning.

Restriktionstyp: xs:string

Maxlängd: 512

#### 6.1.16 PDLAssertionType

Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg.

| | | | |
| :--- | :--- | :--- | :--- |
| assertionId | Id | Unik, global identifierare för intyget. | 1 |
| assertionType | AssertionTypeType | Typ av intyg som ger direktåtkomst till information från andra vådgivare enligt PDL. Kan vara patientens/brukarens samtycke eller nödsituation. | 1 |
| scope | ScopeType | Omfånget/tillämpningsområde på samtycket. | 1 |
| careProviderId | HsaId | Vårdgivare id. Intyget kopplas till den vårdgivare som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| careUnitId | HsaId | Vårdenhets id. Intyget kopplas till den vårdenhet som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| employeeId | HsaId | Medarbetare id. Om samtycket är personligt anges medarbetarens id. Om samtycket gäller all behörig personal på vårdenheten skall inget värde anges. | 0..1 |
| startDate | xs:DateTime | Startdatum för vilken giltighetstid samtycket avser. | 1 |
| endDate | xs:DateTime | Optionellt slutdatum för vilken giltighetstid samtycket avser. Om ett slutdatum är angivet gäller samtycket t.o.m denna tidpunkt. Slutdatum kan ha angivits i samband med att samtycket inhämtades och registrerades eller om patient i efterhand valt att avsluta samtycket. / Om inget slutdatum anges, gäller samtycket tills det blir avslutat eller makulerat. | 0..1 |
| ownerId | OwnerId | Optionell identifierare för det system som skapade samtycket. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |
| patientId | IIType | Personidentitet på patienten/brukaren som intyget avser. | 1 |

#### 6.1.17 ReasonText

Datatyp som representerar en orsak eller anledning till en viss åtgärd.

Restriktionstyp: xs:string

Maxlängd: 1024

#### 6.1.18 ResultType

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.

En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.

Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| | | | |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType | Anger svarskod för åtgärden. | 1 |
| resultText | xs:String | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 0..1 |

#### 6.1.19 ResultCodeType

Enumerationsvärde som anger de svarskoder som finns.

| | |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "kom fastande". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a. ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "tiden har bokats av annan patient". |
| "VALIDATION_ERROR" | En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
| "NOTFOUND" | Angiven artefakt finns ej. Angiven tjänst utfördes ej. |
| "ALREADYEXISTS" | Angiven artefakt finns redan. Angiven tjänst utfördes ej. |
| "INVALIDSTATE" | Angiven tjänst utfördes ej då tjänsten eller artefakten var i ett felaktigt tillstånd. |

#### 6.1.20 ScopeType

Enumerationsvärde som anger omfånget/tillämpningsområde på intyget.

| | |
| :--- | :--- |
| "NationalLevel" | Intyget gäller på nationell nivå. |

#### 6.1.21 Datatyper från namnrymd urn:riv:informationsecurity:authorization:consent:2

Nedan beskrivs komplexa och simpla datatyper som är deklarerade i aktuell namnrymd urn:riv:informationsecurity:authorization:consent:2, version 2.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

### 6.2 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| | | | |
| :--- | :--- | :--- | :--- |
| AssertionType (`AssertionTypeType`) | Consent, Emergency | [authorization-consent-assertiontype-cs](CodeSystem-authorization-consent-assertiontype-cs.md) | [authorization-consent-assertiontype-vs](ValueSet-authorization-consent-assertiontype-vs.md) |
| ResultCode (`ResultCodeType`) | OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE | [authorization-consent-resultcode-cs](CodeSystem-authorization-consent-resultcode-cs.md) | [authorization-consent-resultcode-vs](ValueSet-authorization-consent-resultcode-vs.md) |
| Scope (`ScopeType`) | NationalLevel | [authorization-consent-scope-cs](CodeSystem-authorization-consent-scope-cs.md) | [authorization-consent-scope-vs](ValueSet-authorization-consent-scope-vs.md) |

### 6.3 Typer i domänschemat (XSD)

Genererat ur [informationsecurity_authorization_consent_2.0.xsd](informationsecurity_authorization_consent_2.0.xsd).

#### AccessingActorType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| | | | |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId |   | 1..1 |
| careProviderId | HsaId |   | 1..1 |
| careUnitId | HsaId |   | 1..1 |

#### ActionType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.

| | | | |
| :--- | :--- | :--- | :--- |
| requestDate | dateTime |   | 1..1 |
| requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| registrationDate | dateTime |   | 1..1 |
| registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| reasonText | ReasonText |   | 0..1 |

#### ActorType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som identifierar en medarbetare/person.

| | | | |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId |   | 1..1 |
| assignmentId | HsaId |   | 0..1 |
| assignmentName | AssignmentNameType |   | 0..1 |

#### CancelledAssertionType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som representerar ett makulerat eller återkallat samtycke samt tidpunkten när makuleringen eller återkallan utfördes.

| | | | |
| :--- | :--- | :--- | :--- |
| assertionId | Id |   | 1..1 |
| cancellationDate | dateTime |   | 1..1 |

#### CheckResultType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som anger om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör. Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| hasConsent | boolean |   | 1..1 |
| assertionType | AssertionTypeType |   | 0..1 |

#### ExtendedPDLAssertionType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är återkallat eller makulerat. Datatypen utökar datatypen PDLAssertion.

| | | | |
| :--- | :--- | :--- | :--- |
| pDLAssertion | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 1..1 |
| representedBy | IIType | En universellt unik identifierare. | 0..1 |
| registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| cancellationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| deletionInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |

#### GetAllAssertionsResultType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som representerar en lista med giltiga intyg tillsammans med en lista av makulerade och återkallade intyg. Den används för att dela upp svaret från tjänsten i mindre delar baserat på tidpunkt. Datatypen innehåller information om det finns ytterligare intyg att hämta samt en ny starttidpunkt för när nästa sekvens av intyg startar. Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| moreOnOrAfter | dateTime |   | 1..1 |
| hasMore | boolean |   | 1..1 |
| assertions | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 0..* |
| cancelledAssertions | CancelledAssertionType | Datatyp som representerar ett makulerat eller återkallat samtycke samt tidpunkten när makuleringen eller återkallan utfördes. | 0..* |

#### GetConsentsResultType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| pdlAssertions | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 0..* |

#### GetExtendedConsentsResultType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result.

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| pdlAssertions | ExtendedPDLAssertionType | Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är återkallat eller makulerat. Datatypen utökar datatypen PDLAssertion. | 0..* |

#### IIType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

En universellt unik identifierare.

| | | | |
| :--- | :--- | :--- | :--- |
| root | string |   | 1..1 |
| extension | string |   | 0..1 |

#### PDLAssertionType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg.

| | | | |
| :--- | :--- | :--- | :--- |
| assertionId | Id |   | 1..1 |
| assertionType | AssertionTypeType |   | 1..1 |
| scope | ScopeType |   | 1..1 |
| careProviderId | HsaId |   | 1..1 |
| careUnitId | HsaId |   | 1..1 |
| employeeId | HsaId |   | 0..1 |
| startDate | dateTime |   | 1..1 |
| endDate | dateTime |   | 0..1 |
| ownerId | OwnerId |   | 0..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |

#### ResultType

Domänschema `informationsecurity_authorization_consent_2.0.xsd` (namnrymd `urn:riv:informationsecurity:authorization:consent:2`).

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| | | | |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType |   | 1..1 |
| resultText | string |   | 0..1 |


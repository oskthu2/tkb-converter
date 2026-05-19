## Datatyper
Kaptitlet beskriver alla datatyper som används av tjänsterna, version 1.0.

### Datatyper från namnrymd urn:riv:ehr:patientconsent:1
Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:patientconsent:1, version 1.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### patientconsent:AccessingActor
Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | patientconsent:HsaId | Id för medarbetaren/personen. | 1 |
| careProviderId | patientconsent:HsaId | Id på medarbetarens vårdgivare enligt aktuellt medarbetaruppdrag. | 1 |
| careUnitId | patientconsent:HsaId | Id på medarbetarens vårdenhet enligt aktuellt medarbetaruppdrag. | 1 |

#### patientconsent:Action
Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med
en möjlig orsak/anledning angivet som fritext.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| requestDate | xs:dateTime | Tidpunkt då åtgärden begärdes. | 1 |
| requestedBy | patientconsent:Actor | Anger vem som begärt åtgärden. | 1 |
| registrationDate | xs:dateTime | Tidpunkt då händelsen registrerades. Kan vara samma tidpunkt som när åtgärden begärdes. | 1 |
| registeredBy | patientconsent:Actor | Anger vem som registrerat åtgärden. Detta värde kan vara samma som den som begärt åtgärden. | 1 |
| reasonText | patientconsent:ReasonText | Optionellt fritext fält som anger orsaken/anledningen till åtgärden. | 0..1 |

#### patientconsent:Actor
Datatyp som identifierar en medarbetare/person.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | patientconsent:HsaId | Id för medarbetaren/personen. | 1 |
| assignmentId | patientconsent:HsaId | Optionellt id för medarbetarens aktuella uppdrag. | 0..1 |
| assignmentName | patientconsent:AssignmentNameType | Optionellt namn på medarbetarens aktuella uppdrag. | 0..1 |

#### patientconsent:AssertionType
Enumerationsvärde som anger typ av intyg som ger direktåtkomst till information från andra vådgivare enligt PDL.
Kan vara patientens samtycke eller nödsituation.

| Värde | Beskrivning |
| :--- | :--- |
| "Consent" | Patienten/Företrädaren har givit sitt samtycke. |
| "Emergency" | Nödsituation föreligger. Patientens samtycke kunde ej inhämtas. |

#### patientconsent:AssignmentNameType
Datatyp som representerar namn på medarbetaruppdrag.
Maxlängd: 256

#### patientconsent:CancelledAssertion
Datatyp som representerar ett makulerat eller återkallat samtycke samt tidpunkten när makuleringen eller återkallan utfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| assertionId | patientconsent:Id | Id på det makulerade eller återkallade samtycket. | 1 |
| cancellationDate | xs:dateTime | Tidpunkt när makuleringen eller återkallan utfördes. | 1 |

#### patientconsent:CheckResult
Datatyp som anger om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hasConsent | xs:boolean | Anger om aktören har ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst. | 1 |
| assertionType | patientconsent:AssertionType | Anger vilken typ av intyg som hittades. / Om olika typer av samtyckesintyg finns registrerade returneras endast typen för det senaste registrerade intyget. | 0..1 |

#### patientconsent:ExtendedPDLAssertion
Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är återkallat eller makulerat.
Datatypen utökar datatypen PDLAssertion.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| representedBy | patientconsent:PersonIdValue | Information om den företrädare/vårdnadshavare som företräder patienten. Värdet är ej obligatoriskt. | 0..1 |
| registrationInfo | patientconsent:Action | Innehåller information om vem som begärt och registrerat samtycket samt tidpunkten för begäran och registreringen. | 1 |
| cancellationInfo | patientconsent:Action | Information om en eventuell utförd återkallan av samtycket. Innehåller vem som begärt och registrerat återkallan, tidpunkten för begäran och registreringen av återkallan, samt anledningen till återkallan. | 0..1 |
| deletionInfo | patientconsent:Action | Information om en eventuell utförd makulering av samtycket. Innehåller vem som begärt och registrerat makuleringen, tidpunkten för begäran och registreringen av makuleringen, samt anledningen till makuleringen. | 0..1 |

#### patientconsent:GetAllAssertionsResult
Datatyp som representerar en lista med giltiga intyg tillsammans med en lista av makulerade och återkallade intyg. Den används för att dela upp svaret från tjänsten i mindre delar baserat på tidpunkt.
Datatypen innehåller information om det finns ytterligare intyg att hämta samt en ny starttidpunkt för när nästa sekvens av intyg startar.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| moreOnOrAfter | xs:dateTime | Anger fr.o.m. vilken tidpunkt ytterligare samtyckesintyg finns att hämta. Tidpunkten kan användas iterativt i anrop till tjänsten som ett värde till parametern CreatedOnOrAfter. / Om inga fler samtyckesintyg finns att tillgå returneras ändå en tidpunkt vilket då får representera nästa möjliga hämtningstidpunkt, dvs nya samtyckesintyg kommer att bli registrerade efter denna tidpunkt. | 1 |
| hasMore | xs:boolean | Anger om det finns ytterligare samtycken att hämta. Om fler samtycken finns att hämta bör hämtningen utgå fr.o.m. den tidpunkt som anges i MoreOnOrAfter. | 1 |
| assertions | patientconsent:PDLAssertion | Lista med giltiga intyg. | 0..* |
| cancelledAssertions | patientconsent:CancelledAssertion | Lista med ej utgångna makulerade och återkallade intyg. | 0..* |

#### patientconsent:GetConsentsResult
Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| pdlAssertions | patientconsent:PDLAssertion | Lista med hämtade intyg. | 0..* |

#### patientconsent:GetExtendedConsentsResult
Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| pdlAssertions | patientconsent:ExtendedPDLAssertion |  | 0..* |

#### patientconsent:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9.
Maxlängd: 32

#### patientconsent:Id
Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).
Maxlängd: 36

#### patientconsent:OwnerId
Datatyp som identifierar systemet som registrerade/skapade artifakten. Används endast för tekniskt bruk för t.ex. uppföljning och spårning.
Maxlängd: 512

#### patientconsent:PDLAssertion
Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| assertionId | patientconsent:Id | Unik, global identifierare för intyget. | 1 |
| assertionType | patientconsent:AssertionType | Typ av intyg som ger direktåtkomst till information från andra vådgivare enligt PDL. Kan vara patientens samtycke eller nödsituation. | 1 |
| scope | patientconsent:Scope | Omfånget/tillämpningsområde på samtycket. | 1 |
| patientId | patientconsent:PersonIdValue | Patientens id nummer, kan vara personnummer alternativt samordningsnummer. | 1 |
| careProviderId | patientconsent:HsaId | Vårdgivare id. Intyget kopplas till den vårdgivare som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| careUnitId | patientconsent:HsaId | Vårdenhets id. Intyget kopplas till den vårdenhet som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| employeeId | patientconsent:HsaId | Medarbetare id. Om samtycket är personligt anges medarbetarens id. Om samtycket gäller all behörig personal på vårdenheten skall inget värde anges. | 0..1 |
| startDate | xs:dateTime | Startdatum för vilken giltighetstid samtycket avser. | 1 |
| endDate | xs:dateTime | Optionellt slutdatum för vilken giltighetstid samtycket avser. Om ett slutdatum är angivet gäller samtycket t.o.m denna tidpunkt. Om inget slutdatum anges, gäller samtycket tills det blir återkallat eller makulerat. | 0..1 |
| ownerId | patientconsent:OwnerId | Optionell identifierare för det system som skapade samtycket. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### patientconsent:PersonIdValue
Datatyp som representerar ett personnummer eller samordningsnummer.
Maxlängd: 12

#### patientconsent:ReasonText
Datatyp som representerar en orsak eller anledning till en viss åtgärd.
Maxlängd: 1024

#### patientconsent:Result
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | patientconsent:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |

#### patientconsent:ResultCode
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "kom fastande". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "tiden har bokats av annan patient". |
| "VALIDATION_ERROR" | En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
| "NOTFOUND" | Angiven artifakt finns ej. Angiven tjänst utfördes ej. |
| "ALREADYEXISTS" | Angiven artifakt finns redan. Angiven tjänst utfördes ej. |
| "INVALIDSTATE" | Angiven tjänst utfördes ej då tjänsten eller artifakten var i ett felaktigt tillstånd. |

#### patientconsent:Scope
Enumerationsvärde som anger omfånget/tillämpningsområde på intyget.

| Värde | Beskrivning |
| :--- | :--- |
| "NationalLevel" | Intyget gäller på nationell nivå. |

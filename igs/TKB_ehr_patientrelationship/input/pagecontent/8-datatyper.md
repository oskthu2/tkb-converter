## Datatyper

Kapitlet beskriver alla datatyper som används av tjänsterna, version 1.0.

### Datatyper från namnrymd urn:riv:ehr:patientrelationship:1

Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:patientrelationship:1, version 1.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### patientrelationship:AccessingActor

Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | patientrelationship:HsaId | Id för medarbetaren/personen. | 1 |
| careProviderId | patientrelationship:HsaId | Id på medarbetarens vårdgivare enligt aktuellt medarbetaruppdrag. | 1 |
| careUnitId | patientrelationship:HsaId | Id på medarbetarens vårdenhet enligt aktuellt medarbetaruppdrag. | 1 |

#### patientrelationship:Action

Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med
en möjlig orsak/anledning angivet som fritext.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| requestDate | xs:dateTime | Tidpunkt då åtgärden begärdes. | 1 |
| requestedBy | patientrelationship:Actor | Anger vem som begärt åtgärden. | 1 |
| registrationDate | xs:dateTime | Tidpunkt då händelsen registrerades. Kan vara samma tidpunkt som när åtgärden begärdes. | 1 |
| registeredBy | patientrelationship:Actor | Anger vem som registrerat åtgärden. Detta värde kan vara samma som den som begärt åtgärden. | 1 |
| reasonText | patientrelationship:ReasonText | Optionellt fritext fält som anger orsaken/anledningen till åtgärden. | 0..1 |

#### patientrelationship:Actor

Datatyp som identifierar en medarbetare/person.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | patientrelationship:HsaId | Id för medarbetaren/personen. | 1 |
| assignmentId | patientrelationship:HsaId | Optionellt id för medarbetarens aktuella uppdrag. | 0..1 |
| assignmentName | patientrelationship:AssignmentNameType | Optionellt namn på medarbetarens aktuella uppdrag. | 0..1 |

#### patientrelationship:AssignmentNameType

Datatyp som representerar namn på medarbetaruppdrag.
Maxlängd: 256

#### patientrelationship:CancelledPatientRelation

Datatyp som representerar en makulerad eller återkallad patientrelation samt tidpunkten när makuleringen eller återkallan utfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientRelationId | patientrelationship:Id | Id på den makulerade eller återkallade patientrelationen. | 1 |
| cancellationDate | xs:dateTime | Tidpunkt när makulering eller återkallan utfördes. | 1 |

#### patientrelationship:CheckResult

Datatyp som innehåller resultatet från kontrollen huruvida en aktör har en giltig patientrelation med en patient.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hasPatientrelation | xs:boolean |  | 1 |

#### patientrelationship:ExtendedPatientRelation

Datatyp som representerar en patientrelation enligt det utökade formatet. Innehåller information vem som har begärt respektive registrerat patientrelationen,
samt om och när patientrelationen är återkallad och/eller makulerat.
Datatypen utökar datatypen PatientRelation.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| registrationInfo | patientrelationship:Action | Innehåller vem som begärt och registrerat patientrelationen samt tid för begäran och registrering. | 1 |
| cancellationInfo | patientrelationship:Action | Ej obligatorisk info om återkallelse, innehåller vem som begärt och registrerat återkallelsen samt tid för begäran och registrering. Samt anledning till återkallelse | 0..1 |
| deletionInfo | patientrelationship:Action | Ej obligatorisk info om makulering, innehåller vem som begärt och registrerat makuleringen samt tid för begäran och registrering. Samt anledning till makulering | 0..1 |

#### patientrelationship:GetAllPatientRelationsResult

Datatyp som representerar en lista med giltiga patientrelationer tillsammans med en lista av makulerade och återkallade patientrelationer. Den används för att dela upp svaret från tjänsten i mindre delar baserat på tidpunkt.
Det är upp till tjänsten att bestämma om svaret skall delas upp eller levereras som en komplett entitet.
Datatypen innehåller information om det finns ytterligare patientrelationer att hämta samt en ny starttidpunkt för när nästa sekvens av patientrelationer startar.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| moreOnOrAfter | xs:dateTime | Anger fr.o.m. vilken tidpunkt ytterligare patientrelationer finns att hämta. Tidpunkten kan användas iterativt i anrop till tjänsten som ett värde till parametern CreatedOnOrAfter. / Om inga fler patientrelationer finns att tillgå returneras ändå en tidpunkt vilket då får representera nästa möjliga hämtningstidpunkt, dvs nya patientrelationer kommer att bli registrerade efter denna tidpunkt. | 1 |
| hasMore | xs:boolean | Anger om det finns ytterligare patientrelationer att hämta. Om fler patientrelationer finns att hämta bör hämtningen utgå fr.o.m. den tidpunkt som anges i MoreOnOrAfter. | 1 |
| patientRelations | patientrelationship:PatientRelation | Lista med aktiva patientrelationer. | 0..* |
| cancelledPatientRelations | patientrelationship:CancelledPatientRelation | Lista med makulerade och återkallade patientrelationer. | 0..* |

#### patientrelationship:GetExtendedPatientRelationResult

Datatyp som innehåller resultatet från en hämtning av patientrelationer enligt det utökade formatet tillsammans med hämtade patientrelationer.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| extendedPatientRelations | patientrelationship:ExtendedPatientRelation |  | 0..* |

#### patientrelationship:GetPatientRelationsResult

Datatyp som innehåller resultatet från en hämtning av patientrelationer tillsammans med hämtade patientrelationer.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientRelations | patientrelationship:PatientRelation |  | 0..* |

#### patientrelationship:HsaId

Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9.
Maxlängd: 32

#### patientrelationship:Id

Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).
Maxlängd: 36

#### patientrelationship:OwnerId

Datatyp som identifierar systemet som registrerade/skapade artifakten. Används endast för tekniskt bruk för t.ex. uppföljning och spårning.
Maxlängd: 512

#### patientrelationship:PatientRelation

Representerar en existerande patientrelation enligt grundformatet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientRelationId | patientrelationship:Id | Unik, global identifierare för patientrelationen. | 1 |
| patientId | patientrelationship:PersonIdValue | Patientens id nummer, kan vara personnummer alternativt samordningsnummer. | 1 |
| careProviderId | patientrelationship:HsaId | Vårdgivare id. Intyget kopplas till den vårdgivare som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| careUnitId | patientrelationship:HsaId | Vårdenhets id. Intyget kopplas till den vårdenhet som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| employeeId | patientrelationship:HsaId | Medarbetare id. Den medarbetare som intyget avser. | 1 |
| startDate | xs:dateTime | Startdatum för vilken giltighetstid patientrelationen avser. | 1 |
| endDate | xs:dateTime | Tidpunkts då giltigheten går ut för patientrelationen. | 1 |
| ownerId | patientrelationship:OwnerId | Optionell identifierare för den aktör/system som skapat patientrelationen. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### patientrelationship:PersonIdValue

Datatyp som representerar ett personnummer eller samordningsnummer.
Maxlängd: 12

#### patientrelationship:ReasonText

Datatyp som representerar en orsak eller anledning till en viss åtgärd.
Maxlängd: 1024

#### patientrelationship:Result

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | patientrelationship:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |

#### patientrelationship:ResultCode

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

#### FHIR-artefakter för kodverk

* **Kodsystem:** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.html)
* **ValueSet:** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.html)

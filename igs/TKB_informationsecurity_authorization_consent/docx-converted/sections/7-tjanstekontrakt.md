## Tjänstekontrakt

### GetConsentsForPatient
Tjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation.
Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents).
Ogiltiga intyg (giltigt t o m har passerats, makulerade eller avslutade) returneras ej.
Tjänsten kan användas i ett integrationsmönster där journalsystemet läser in giltiga samtycken som finns för patienten/brukaren per vård- eller omsorgsgivare, för att sedan utföra intern kontroll av samtycke.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_027.jpeg](images/img_027.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | Obligatoriskt id på den vårdgivare vars samtycken skall hämtas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| Svar |  |  |  |
| getConsentsResult | urn:riv:informationsecurity:authorization:consent:2:GetConsentsResultType | Lista med giltiga samtycken för patient/brukare. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### GetConsentsForCareProvider
Tjänst som läser alla giltiga samtyckesintyg för en viss vård-/omsorgsgivare med grundinformation.
Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll av åtkomst (CheckConsents).
Det är valbart om makulerade, avslutade samtyckesintyg eller samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras. Utgångna samtyckesintyg (giltigt t o m har passerats) returneras ej oavsett makulering.
Det går även att ange en tidpunkt (CreatedOnOrAfter) från när man önskar inhämta uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Här avses tidpunkten då samtycket lagrades i tjänsten.
Tjänsten tillåts att dela upp listan av samtyckesintyg i mindre delar för att minska på belastningen på systemet. Om detta sker kommer flaggan HasMore att vara satt om det finns fler samtyckesintyg att hämta. De resterande samtyckesintygen skall i så fall hämtas med ytterligare anrop till tjänsten tills flaggan HashMore ej längre är satt (false).
Tjänsten returnerar en ny tidpunkt (CreatedOnOrAfter) som anger från och med nästa tidpunkt som samtyckesintygen ej har hämtats. Detta värde kan användas som inparameter i ytterligare anrop till tjänsten för att hämta nästa sekvens av samtyckesintyg.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar alla samtycken det behöver utifrån de vårdgivare som systemet hanterar information från, för att sedan vid behov utföra intern kontroll mot underlaget av samtycken och nödsituationsintyg.
Viktigt att kontrollera att alla samtycken är hämtade genom att kontrollera värdet på flaggan HasMore.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_003.jpeg](images/img_003.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | HSA-id på den vård-/omsorgsgivare vars samtycken skall hämtas. | 1..1 |
| createdOnOrAfter | xs:DateTime | Ej obligatoriskt startdatum för hur gamla samtyckesintyg som skall hämtas. Om angivet returneras endast samtyckesintyg som är giltiga i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| getCancelledFlag | xs:Boolean | Flagga som avgör om makulerade samtyckesintyg eller samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras. | 1..1 |
| Svar |  |  |  |
| getAllAssertionsResult | urn:riv:informationsecurity:authorization:consent:2:GetAllAssertionsResultType | Lista med giltiga samtyckesintyg och eventuellt en lista med ogiltiga samtyckesintyg. Information om det finns fler samtyckesintyg att hämta samt ny starttidpunkt ingår även i svaret. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### GetExtendedConsentsForPatient
Tjänst som läser registrerade samtyckesintyg för en viss patient/brukare med utökad information.
Det är valbart om ogiltiga (makulerade och utgångna) samtyckesintyg skall returneras.
Tjänsten kan användas för att söka fram och administrera patientens/brukarens samtycken för en viss vård-/omsorgsgivare.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_012.jpeg](images/img_012.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | HSA-id på den vård-/omsorgsgivare vars samtycken skall hämtas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| getCancelledFlag | xs:Boolean | Flagga som avgör om ogiltiga samtyckesintyg skall returneras. | 1..1 |
| Svar |  |  |  |
| getExtendedConsentsResult | urn:riv:informationsecurity:authorization:consent:2:GetExtendedConsentsResultType | Utökad information för samtycke. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### CheckConsent
Tjänst som kontrollerar om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör (vårdenhet eller medarbetare).
Med giltigt samtycke avses ett samtycke som fortfarande är giltigt (giltigt t o m har ej passerats), ej makulerat.
Om ett giltigt intyg gällande åtkomst för angiven aktör hittas, kommer tjänsten att svara OK.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_030.jpeg](images/img_030.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| accessingActor | urn:riv:informationsecurity:authorization:consent:2:AccessingActorType | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycke skall kontrolleras. | 1..1 |
| Svar |  |  |  |
| checkResult | urn:riv:informationsecurity:authorization:consent:2:CheckResultType | Status för om ett giltigt intyg gällande åtkomst för angiven aktör hittades. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | Beror på ingående samtyckestjänsters tillgänglighet. Önskas högre tillgänglighet kan konsumerande system mellanlagra data i cache som anpassas till krav på aktualitet. |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att utföra en kontroll på de senaste registrerade intygsuppgifterna i samtyckestjänsten. |  |

### RegisterExtendedConsent
Tjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens/brukarens information från andra vårdgivare enligt PDL.
Intyget avser patientens/brukarens aktiva medgivande (samtycke), alternativt nödsituation då HoS personal bedömer att behov av uppgifterna finns för nödvändig vård av patient som inte kan ge aktivt medgivande.
Det går även att registrera patientens/brukarens företrädare.
Tjänsten kräver utökad information (metainformation) kring skapande av intyget.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_006.jpeg](images/img_006.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Unik, global identifierare för intyget. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| assertionType | urn:riv:informationsecurity:authorization:consent:2:AssertionTypeType | Typ av intyg som ger direktåtkomst till information från andra vård-/omsorgsgivare enligt SVOD. Kan vara patientens/brukarens samtycke eller nödsituation. | 1..1 |
| scope | urn:riv:informationsecurity:authorization:consent:2:ScopeType | Omfånget/tillämpningsområde på intyget. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren på vilket samtycket ska registreras. | 1..1 |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | Id på den vård-/omsorgsgivare som intyget gäller för/kopplas till. | 1..1 |
| careUnitId | urn:riv:informationsecurity:authorization:consent:2:HsaId | Id på den enhet som intyget gäller för/kopplas till. | 1..1 |
| employeeId | urn:riv:informationsecurity:authorization:consent:2:HsaId | MedarbetarId. Om samtycket är personligt anges id för den medarbetare som samtycket skall gälla för. Om samtycket gäller all behörig personal på angiven vårdenhet, skall inget medarbetarid anges. | 0..1 |
| startDate | xs:DateTime | Ej obligatoriskt startdatum för intygets giltighetstid. Om ett startdatum är angivet gäller intyget fr.o.m denna tidpunkt, annars gäller samtycket fr.o.m aktuell tidpunkt (registreringstidpunkt). | 0..1 |
| endDate | xs:DateTime | Ej obligatoriskt slutdatum för intygets giltighetstid. Om ett slutdatum är angivet gäller intyget t.o.m denna tidpunkt. Om inget slutdatum anges, gäller samtycket tills det blir avslutat eller makulerat. | 0..1 |
| representedBy | urn:riv:informationsecurity:authorization:consent:2:IIType | Ej obligatorisk personidentitet på företrädare/vårdnadshavare som företräder patienten/brukaren. Värdet ska anges om samtycket är inhämtat från företrädare/vårdnadshavare. | 0..1 |
| registrationAction | urn:riv:informationsecurity:authorization:consent:2:ActionType | Identifierar de personer som begärt och registrerat intyget samt tidpunkter för dessa. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av samtycke skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor till samtyckestjänsten. |  |

### CancelExtendedConsent
Tjänst som avslutar ett samtycke i samtyckestjänsten. Intyget raderas inte från samtyckestjänsten utan markeras som avslutat (ej längre giltig) för historikens skull. Ett avslutat samtycke kan ej återtas.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_023.jpeg](images/img_023.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Identifierare för det intyg som skall avslutas. | 1..1 |
| cancellationAction | urn:riv:informationsecurity:authorization:consent:2:ActionType | Identifierar de personer som begärt och registrerat avslutandet samt tidpunkter för dessa. En anledning till avslutande i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att avslutande av samtycket skett då anropet genomförts utan fel. Avslutande speglas omedelbart i svar från frågor genom tjänsterna. |  |

### DeleteExtendedConsent
Tjänst som makulerar ett samtycke i samtyckestjänsten. Makulering av samtycke används enbart för borttagning av felregistrerade samtycken.
Samtycket raderas inte från samtyckestjänst utan markeras som makulerad (ej längre giltig) för historikens skull. En makulering kan ej återtas.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_018.jpeg](images/img_018.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Identifierar det intyg som skall makuleras. | 1..1 |
| deletionAction | urn:riv:informationsecurity:authorization:consent:2:ActionType | Identifierar de personer som begärt och utfört makulering samt tidpunkter för dessa. En anledning till makuleringen i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att makulering av samtycke skett då anropet genomförts utan fel. Makuleringen speglas omedelbart i svar från frågor genom tjänsterna. |  |

### GetAllExtendedConsentsForPatient
Tjänst som läser registrerade samtyckesintyg för en viss patient/brukare med utökad information.
Det är valbart om ogiltiga (makulerade och utgångna) samtyckesintyg skall returneras.
Tjänsten kan användas för att söka patients/brukares samtliga samtycken. Aktören är patienten/brukaren själv eller patients legala ombud.

#### Version
1.0

#### Meddelandeinformationsmodell

![img_013.jpeg](images/img_013.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| getCancelledFlag | xs:Boolean | Flagga som avgör om ogiltiga samtyckesintyg skall returneras. | 1..1 |
| Svar |  |  |  |
| getExtendedConsentsResult | urn:riv:informationsecurity:authorization:consent:2:GetExtendedConsentsResultType | Utökad information för samtycke. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### EndConsentByPatient
Tjänst som ger patient/brukare möjlighet att avsluta ett tidigare givet samtycke i förtid.
Tjänsten förutsätter att giltiga samtycken först har inhämtats via tjänstekontraktet GetAllExtendedConsentsForPatient, varifrån det unika id för samtycket som ska avslutas också hämtas.
Aktören är patienten/brukaren själv eller patients legala ombud.

#### Version
1.0

#### Meddelandeinformationsmodell

![img_028.jpeg](images/img_028.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Unikt id som identifierar det intyg som skall avslutas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| representedById | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet för den företrädare/vårdnadshavare som företräder patienten/brukaren.
Ska anges om samtycket avslutas av företrädare/vårdnadshavare. | 0..1 |
| endDateTime | xs:dateTime | Frivillig tidpunkt/tidsstämpel för när samtycket ska avslutas. Tidstämpeln ska som tidigast vara nuvarande tidpunkt, alternativt före en tidigare given sista giltighetstidpunkt som är i framtiden. Om ingen tidpunkt anges ska producenten tolka samtyckets nya giltighetstidpunkt t o m nuvarande tidpunkt. | 0..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |


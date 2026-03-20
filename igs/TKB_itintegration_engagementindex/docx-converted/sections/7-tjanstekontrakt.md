## Tjänstekontraktens tekniska beskrivning

### Domänspecifika attribut
Ett antal av attributen i tjänstekontrakten för engagemangsindex definieras endast tekniskt avseende namn, typ och multiplicitet. Användningen av dessa attribut i tjänstekontrakten definieras av den tjänstedomän som informationen avser. Krav och regler beskrivs i respektive tjänstedomäns tjänstekontraktsbeskrivning.
Detta innebär att ett attribut som tekniskt sett är valfritt (multiplicitet 0..1 eller 0..*) kan vara obligatoriskt i en viss tjänstedomän. Kravet kan uttryckas via skrivningar i tjänstekontraktsbeskrivning och ibland kompletterat med schematronfiler.
Notera också att vissa attribut kan vara tekniskt obligatoriska men inte användas inom domänen. I dessa fall sätts attributet till NA (för Not Applicable) för att indikera detta men ändå tekniskt uppfylla tjänstekontraktet.

| Namn | Typ | Kommentar / Nedan ges den beskrivning av attributen som är den vanligaste. Varje tjänstedomän kan dock definiera om attributens betydelse. | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| *engagement |  |  |  |
| *.serviceDomain | URN | Namnrymd för den Tjänstedomän som innehåller det tjänstekontrakt som ska användas för att läsa den information som EI-posten gäller. / exempel:
urn:riv:clinicalprocess:activity:request | 1..1 |
| *.categorization | String | Identifierar den informationskategori som EI-posten gäller, t.ex. vaccination eller journalanteckning. De informations-kategorier som är giltiga för en viss tjänstedomän anges i tjänstedomänens tjänstekontraktsbeskrivning. | 1..1 |
| *.logicalAddress | String | Den logiska adress som ska anropas för att nå den tjänsteproducent som har den information som indexposten avser. / Den logiska adressen följer den adresseringsmodell som gäller för den tjänstedomän som anges av fältet Service Domain. | 1..1 |
| *.engagementTransaction .engagement.businessObjectInstanceIdentifier | String | Definieras av respektive tjänstedomän. / ”NA” anger att attributet inte är tillämpbart i aktuell tjänstedomän. | 1..1 |
| *.clinicalProcess InterestId | String | Definieras av respektive tjänstedomän. / ”NA” anger att attributet inte är tillämpbart i aktuell tjänstedomän. | 1..1 |
| *.mostRecentContent | TS | Definieras av respektive tjänstedomän. | 0..1 |

### Update

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

##### Begäran

| Namn | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| engagementTransaction | EngagementTransactionType |  | 1..* |
| engagementTransaction.deleteFlag | Boolean | True anger att posten ska tas bort. False anger att posten ska skapas/uppdateras. | 1..1 |
| engagementTransaction .engagement | EngagementType |  | 1..1 |
| engagementTransaction .engagement.registeredResidentIdentification | Nationell accepterad personidentitet | Enligt formatregler i meddelandemodellen | 1..1 |
| engagementTransaction .engagement.serviceDomain | URN | Namnrymd för Tjänstedomän / exempel:
urn:riv:clinicalprocess:activity:request | 1..1 |
| engagementTransaction .engagement.categorization | String | Enligt tjänstedomänens dokumentation. | 1..1 |
| engagementTransaction .engagement.logicalAddress | String | Enligt tjänstedomänens dokumentation. | 1..1 |
| engagementTransaction .engagement.businessObjectInstanceIdentifier | String | Enligt tjänstedomänens dokumentation. | 1..1 |
| engagementTransaction .engagement.clinicalProcess InterestId | String | Enligt tjänstedomänens dokumentation. | 1..1 |
| engagementTransaction .engagement.mostRecentContent | TS | Enligt tjänstedomänens dokumentation. | 0..1 |
| engagementTransaction .engagement.sourceSystem | HSA-id | Källsystemet som innehåller den information som EI-posten pekar ut. / I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen. | 1..1 |
| engagementTransaction .engagement.dataController | String | Identitet för den PUA som ansvarar för postens innehåll. / I första hand organisations-nummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.) / Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgifts-ansvarig för sin information i engagemangsindex. | 1..1 |

| Notera att vissa element finns representerade i schemafilerna på grund av att typen som används är gemensamt definierad. Dessa ska inte användas i denna interaktion, detta gäller: / engagementTransaction .engagement.creationTime / engagementTransaction .engagement.updateTime / engagementTransaction .engagement.owner |
| :--- |

##### Svar

| Namn | Typ | Kommentar | Kardinalitet |
| :--- | :--- | :--- | :--- |
| ResultCode | Kodverk | Status enligt generell regel. | 1..1 |
| comment | String | Meddelande enligt generell regel | 0..1 |

### FindContent

#### Begäran

| Namn | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| registeredResidentIdentification | Nationell accepterad personidentitet | Enligt formatregler i meddelandemodellen | 1..1 |
| serviceDomain | URN | Namnrymd för Tjänstedomän / exempel:
urn:riv:clinicalprocess:activity:request | 1..1 |
| categorization | String | Kodverk enligt tjänstedomänens dokumentation. | 0..1 |
| logicalAddress | String | Enligt tjänstedomänens dokumentation. | 0..1 |
| engagementTransaction .engagement.businessObjectInstanceIdentifier | String | Enligt tjänstedomänens dokumentation. | 0..1 |
| clinicalProcessInterestId | String | Enligt tjänstedomänens dokumentation | 0..1 |
| mostRecentContent | TS | YYYYMMDDhhmmss. | 0..1 |
| sourceSystem | HSA-id | Källsystemet som innehåller den information som EI-posten pekar ut. / I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen. | 0..1 |
| dataController | String | Identitet för den PUA som ansvarar för postens innehåll. / I första hand organisationsnummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.) / Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgiftsansvarig för sin information i engagemangsindex. | 0..1 |
| owner | HSA-id | HSA-id för den organisations vars index tog emot uppdateringsbegäran. | 0..1 |

#### Svar

| Namn | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| engagement | EngagementType |  | 0..* |
| engagement.registeredResidentIdentification | Nationell accepterad personidentitet | Enligt formatregler i meddelandemodell | 1..1 |
| engagement.serviceDomain | URN | Namnrymd för Tjänstedomän / exempel:
urn:riv:clinicalprocess:activity:request | 1..1 |
| engagement.categorization | String | Enligt tjänstedomänens dokumentation. | 1..1 |
| engagement.logicalAddress | String | Enligt tjänstedomänens dokumentation. | 1..1 |
| engagementTransaction .engagement.businessObjectInstanceIdentifier | String | Enligt tjänstedomänens dokumentation. | 1..1 |
| engagement.clinicalProcessInterestId | String | Enligt tjänstedomänens dokumentation. | 0..1 |
| engagement.mostRecentContent | TS | YYYYMMDDhhmmss | 0..1 |
| engagement.sourceSystem | HSA-id | Källsystemet som innehåller den information som EI-posten pekar ut. / I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen. | 1..1 |
| engagement.creationTime | TS | YYYYMMDDhhmmss | 1..1 |
| engagement.updateTime | TS | YYYYMMDDhhmmss | 0..1 |
| engagement.dataController | String | Identitet för den PUA som ansvarar för postens innehåll. / I första hand organisationsnummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.) / Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgiftsansvarig för sin information i engagemangsindex. | 1..1 |
| engagement.owner | HSA-id | HSA-id för den organisations vars index tog emot uppdateringsbegäran. | 1..1 |

### ProcessNotification

#### Begäran

| Namn | Typ | Kommentar | Kardin-alitet |
| :--- | :--- | :--- | :--- |
| engagementTransaction | EngagementTransactionType |  | 1..* |
| engagementTransaction.deleteFlag | Boolean | ”true” anger att posten ska tas bort. False anger att posten ska skapas/uppdateras. | 1..1 |
| engagementTransaction .engagement | EngagementType |  | 1..1 |
| engagementTransaction .engagement.registeredResidentIdentification | Nationell accepterad personidentitet | Enligt formatregler i meddelandemodell | 1..1 |
| engagementTransaction .engagement.serviceDomain | URN | Namnrymd för Tjänstedomän / exempel:
urn:riv:clinicalprocess:activity:request | 1..1 |
| engagementTransaction .engagement.categorization | String | Enligt tjänstedomänens dokumentation. | 1..1 |
| engagementTransaction .engagement.logicalAddress | String | Enligt tjänstedomänens dokumentation. | 1..1 |
| engagementTransaction .engagement.businessObjectInstanceIdentifier | String | Enligt tjänstedomänens dokumentation. | 1..1 |
| engagementTransaction .engagement.clinicalProcessInterestId | HSA-id | Enligt tjänstedomänens dokumentation. | 1..1 |
| engagementTransaction .engagement.mostRecentContent | TS | Enligt tjänstedomänens dokumentation. | 0..1 |
| engagementTransaction .engagement.sourceSystem | HSA-id | Källsystemet som innehåller den information som EI-posten pekar ut. / I regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen. | 1..1 |
| engagementTransaction .engagement.creationTime | TS | YYYYMMDDhhmmss | 1..1 |
| engagementTransaction .engagement.updateTime | TS | YYYYMMDDhhmmss | 1..1 |
| engagementTransaction .engagement.dataController | String | Identitet för den PUA som ansvarar för postens innehåll. / I första hand organisations-nummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.) / Viktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgifts-ansvarig för sin information i engagemangsindex. | 1..1 |
| engagementTransaction .engagement.owner | HSA-id | HSA-id för den organisations vars index tog emot ursprunglig uppdateringsbegäran. | 1..1 |

#### Svar

| Namn | Typ | Kommentar | Kardinalitet |
| :--- | :--- | :--- | :--- |
| ResultCode | Kodverk | Status enligt generell regel. | 1..1 |
| comment | String | Meddelande enligt generell regel | 0..1 |


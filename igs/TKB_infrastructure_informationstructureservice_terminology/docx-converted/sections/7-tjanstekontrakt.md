## Tjänstekontrakt

### GetTerminologySubset
GetTerminologySubset hämtar ut en delmängd (subset) av en eller flera terminologier (exempelvis SNOMED CT, ICD-10, ATC-kodverket) som är användbara i ett visst sammanhang. Tjänsten returnerar en lista med de begrepp som ingår i urvalet tillsammans med information om urvalet.

#### Version
Version på detta kontrakt: 1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| GetTerminologySubsetRequestType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | String | Identifierare för urvalet | 1..1 |
| LocalOrganizationExtensionId | String | Id för system eller organisation som har lokala tillägg för urvalet. Om denna anges kommer det gemensamma urvalet returneras tillsammans med de koder i urvalet som är specifika för aktuella systemet/organisationen. | 0..1 |
| TermType | String | Typ av term som ska användas. | 1..1 |

| GetTerminologySubsetResponseType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Subset | SubsetType | Urval | 0..1 |
| ResultCode | String | OK = Subset hämtades utan avvikelser / ERROR = Fel vid hämtningen. Felet beskrivs i elementet comment / INFO = Information finns. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om felaktiga parametrar. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### Version för urval
Konsumenten bör spara version för sin befintliga uppsättning av urvalet. Versionsidentifierare kan hämtas separat via tjänsten GetTerminologySubsetInformation för att konsumenten ska kunna verifiera om ny laddning av urvalet är nödvändig.

##### Felhantering
Om en okänd SubsetIdentity skickas in returneras ERROR.
I de fall då ett meddelande omfattar LocalOrganizationExtensionId som inte finns returneras INFO. Begrepp som ingår i det gemensamma urvalet hämtas.

### GetTerminologySubsetInformation
GetTerminologySubsetInformation hämtar ut namn, id och versionsidentifierare för ett eller flera subset. Versionsidentifierare används för att konsumenten ska kunna verifiera om ny information finns i GetTerminologySubset.

#### Version
Version på detta kontrakt: 1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| GetTerminologySubset
InformationRequestType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | String | Identifierare för urvalet | 1..* |
| LocalOrganizationExtensionId | String | Id för system eller organisation som har lokala tillägg för urvalet. Om denna anges kommer det gemensamma urvalet returneras tillsammans med de koder i urvalet som är specifika för aktuella systemet/organisationen. | 0..1 |
| TermType | String | Typ av term som ska användas. | 1..1 |

| GetTerminologySubset
InformationResponseType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetInformation | Subset
Information
Type | Information om urval | 0..* |
| ResultCode | String | OK = Information hämtades / ERROR = Fel vid hämtningen. Felet beskrivs i elementet comment / INFO = Information finns. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om felaktiga parametrar. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### Felhantering
Om endast okända SubsetIdentity skickas in returneras ERROR.
I de fall då ett meddelande omfattar flera SubsetIdentity returneras INFO tillsammans med information om vilka identifierare som var felaktiga. Information hämtas för giltiga identifierare.

### GetConcepts
GetConcepts hämtar ut sökta begrepp och termer från ett urval (subset) av en eller flera terminologier (exempelvis SNOMED CT, ICD-10, ATC-kodverket). Begreppen söks ut med exempelvis kod som beskriver begreppet.

#### Version
Version på detta kontrakt: 1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| GetConceptsRequestType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | String | Identifierare för urvalet | 1..1 |
| LocalOrganizationExtensionId | String | Id för system eller organisation som har lokala tillägg för urvalet. Om denna anges kommer det gemensamma urvalet returneras tillsammans med de koder i urvalet som är specifika för aktuella systemet/organisationen. | 0..1 |
| CodeSystem | String | Identifierare av kodsystem | 0..1 |
| Code | String | Begreppskod. Del av begreppskod kan anges. | 0..1 |
| Term | String | Term som beskriver begreppet. Del av term kan anges. | 0..1 |
| ConceptsResponseThreshold* | Int | Antal begrepp som max ska returneras i svaret | 0..1 |
| TermType | String | Typ av term som ska användas. | 1..1 |

| GetConceptsResponseType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Subset | SubsetType | Urval | 0..1 |
| ResultCode | String | OK = Sökningen lyckades och alla poster returnerades / ERROR = Fel vid hämtningen. Felet beskrivs i elementet comment / INFO = Information finns. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om felaktiga parametrar. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 1 - ConceptsResponseThreshold
Valfritt värde. Om inget värde anges kan en implementation välja att begränsa max antal returnerade termer.

##### Felhantering
Om en okänd SubsetIdentity skickas in returneras ERROR.
Om fler antal begrepp finns än angivet maxantal i svaret returneras INFO.
Om fler antal begrepp finns än den största mängd som en viss implementation har som inbyggd maxgräns returneras INFO.
I de fall då ett meddelande omfattar LocalOrganizationExtensionId som inte finns returneras INFO. Begrepp som ingår i det gemensamma urvalet hämtas.

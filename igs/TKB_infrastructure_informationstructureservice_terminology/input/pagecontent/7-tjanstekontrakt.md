# 7 Tjänstekontrakt

Källa: *Tjänstekontraktsbeskrivning Terminologitjänst*, version PA1 (2013-10-30), [Tjanstekontraktsbeskrivning_Terminologitjanst.docx](Tjanstekontraktsbeskrivning_Terminologitjanst.docx).

### GetTerminologySubset

GetTerminologySubset hämtar ut en delmängd (subset) av en eller flera terminologier (exempelvis SNOMED CT, ICD-10, ATC-kodverket) som är användbara i ett visst sammanhang. Tjänsten returnerar en lista med de begrepp som ingår i urvalet tillsammans med information om urvalet.

#### 7.1.1 Version
Version på detta kontrakt: 1.0

#### 7.1.2 Fältregler
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

#### 7.1.3 Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### 7.1.3.1 Version för urval
Konsumenten bör spara version för sin befintliga uppsättning av urvalet. Versionsidentifierare kan hämtas separat via tjänsten GetTerminologySubsetInformation för att konsumenten ska kunna verifiera om ny laddning av urvalet är nödvändig.

##### 7.1.3.2 Felhantering
Om en okänd SubsetIdentity skickas in returneras ERROR.
I de fall då ett meddelande omfattar LocalOrganizationExtensionId som inte finns returneras INFO. Begrepp som ingår i det gemensamma urvalet hämtas.

#### 7.1.4 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| SubsetIdentity | string | Identifierare som representerar urvalet | 1..1 |
| LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation | 0..1 |
| TermType | string | Type of term | 1..1 |
| **Svar** | | | |
| Subset | SubsetType |  | 0..1 |
| ../SubsetInformation | SubsetInformationType | Information om urval | 1..1 |
| ../../SubsetIdentity | SubsetIdentityType | Identifierare av urval (XML-attribut.) | 1..1 |
| ../../Name | SubsetNameType | Namn som representerar urval (XML-attribut.) | 1..1 |
| ../../Version | SubsetVersionType | Version för urval (XML-attribut.) | 1..1 |
| ../Concept | ConceptType | Lista med concepts | 0..* |
| ../../Metadata | MetadataType | 0..* Metadata | 0..* |
| ../../../Name | MetadataNameType | Identifierar typ av metadata (XML-attribut.) | 1..1 |
| ../../../Value | MetadataValueType | Metadatavärde (XML-attribut.) | 1..1 |
| ../../../LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation (XML-attribut.) | 0..1 |
| ../../CodeSystem | ConceptCodeSystemType | Identifierare av kodsystem (XML-attribut.) | 1..1 |
| ../../Code | ConceptCodeType | Kod för val i listan (XML-attribut.) | 1..1 |
| ../../Term | ConceptTermType | Term som visas upp i vallistan (XML-attribut.) | 1..1 |
| ../../LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation (XML-attribut.) | 0..1 |
| ResultCode | ResultCodeEnum |  | 1..1 |
| comment | string |  | 0..1 |

#### 7.1.5 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetTerminologySubsetInteraction  
Beskrivning:  
Retrieve all concepts and terms for the selected subset  
Revisioner:  
Tjänstedomän: infrastructure:informationstructureservice:terminology  
Tjänsteinteraktionstyp: Fråga-Svar  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetResponder:1:GetTerminologySubset`

#### 7.1.6 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetTerminologySubsetInteraction_1.0_RIVTABP21.wsdl](GetTerminologySubsetInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetTerminologySubsetResponder_1.0.xsd](GetTerminologySubsetResponder_1.0.xsd) | Tjänsteschema |
| [infrastructure_informationstructureservice_terminology_1.0.xsd](infrastructure_informationstructureservice_terminology_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.1.7 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getterminologysubset-request](StructureDefinition-getterminologysubset-request.html)
* **Logisk modell (response):** [StructureDefinition/getterminologysubset](StructureDefinition-getterminologysubset.html)
* **Kodsystem:** [CodeSystem/terminology-resultcode-cs](CodeSystem-terminology-resultcode-cs.html)
* **ValueSet:** [ValueSet/terminology-resultcode-vs](ValueSet-terminology-resultcode-vs.html)

### GetTerminologySubsetInformation

GetTerminologySubsetInformation hämtar ut namn, id och versionsidentifierare för ett eller flera subset. Versionsidentifierare används för att konsumenten ska kunna verifiera om ny information finns i GetTerminologySubset.

#### 7.2.1 Version
Version på detta kontrakt: 1.0

#### 7.2.2 Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| GetTerminologySubset InformationRequestType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | String | Identifierare för urvalet | 1..* |
| LocalOrganizationExtensionId | String | Id för system eller organisation som har lokala tillägg för urvalet. Om denna anges kommer det gemensamma urvalet returneras tillsammans med de koder i urvalet som är specifika för aktuella systemet/organisationen. | 0..1 |
| TermType | String | Typ av term som ska användas. | 1..1 |

| GetTerminologySubset InformationResponseType | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetInformation | Subset Information Type | Information om urval | 0..* |
| ResultCode | String | OK = Information hämtades / ERROR = Fel vid hämtningen. Felet beskrivs i elementet comment / INFO = Information finns. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om felaktiga parametrar. | 0..1 |

#### 7.2.3 Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### 7.2.3.1 Felhantering
Om endast okända SubsetIdentity skickas in returneras ERROR.
I de fall då ett meddelande omfattar flera SubsetIdentity returneras INFO tillsammans med information om vilka identifierare som var felaktiga. Information hämtas för giltiga identifierare.

#### 7.2.4 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| SubsetIdentity | string | Identifierare som representerar urvalet | 1..* |
| LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation | 0..1 |
| TermType | string | Type of term | 1..1 |
| **Svar** | | | |
| SubsetInformation | SubsetInformationType |  | 0..* |
| ../SubsetIdentity | SubsetIdentityType | Identifierare av urval (XML-attribut.) | 1..1 |
| ../Name | SubsetNameType | Namn som representerar urval (XML-attribut.) | 1..1 |
| ../Version | SubsetVersionType | Version för urval (XML-attribut.) | 1..1 |
| ResultCode | ResultCodeEnum |  | 1..1 |
| comment | string |  | 0..1 |

#### 7.2.5 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetTerminologySubsetInformationInteraction  
Beskrivning:  
Retrieve information for the selected terminology subsets  
Revisioner:  
Tjänstedomän: infrastructure:informationstructureservice:terminology  
Tjänsteinteraktionstyp: Fråga-Svar  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:informatics:terminology:GetTerminologySubsetInformationResponder:1:GetTerminologySubsetInformation`

#### 7.2.6 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetTerminologySubsetInformationInteraction_1.0_RIVTABP21.wsdl](GetTerminologySubsetInformationInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetTerminologySubsetInformationResponder_1.0.xsd](GetTerminologySubsetInformationResponder_1.0.xsd) | Tjänsteschema |
| [infrastructure_informationstructureservice_terminology_1.0.xsd](infrastructure_informationstructureservice_terminology_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.2.7 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getterminologysubsetinformation-request](StructureDefinition-getterminologysubsetinformation-request.html)
* **Logisk modell (response):** [StructureDefinition/getterminologysubsetinformation](StructureDefinition-getterminologysubsetinformation.html)
* **Kodsystem:** [CodeSystem/terminology-resultcode-cs](CodeSystem-terminology-resultcode-cs.html)
* **ValueSet:** [ValueSet/terminology-resultcode-vs](ValueSet-terminology-resultcode-vs.html)

### GetConcepts

GetConcepts hämtar ut sökta begrepp och termer från ett urval (subset) av en eller flera terminologier (exempelvis SNOMED CT, ICD-10, ATC-kodverket). Begreppen söks ut med exempelvis kod som beskriver begreppet.

#### 7.3.1 Version
Version på detta kontrakt: 1.0

#### 7.3.2 Fältregler
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

#### 7.3.3 Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 1 - ConceptsResponseThreshold
Valfritt värde. Om inget värde anges kan en implementation välja att begränsa max antal returnerade termer.

##### 7.3.3.1 Felhantering
Om en okänd SubsetIdentity skickas in returneras ERROR.
Om fler antal begrepp finns än angivet maxantal i svaret returneras INFO.
Om fler antal begrepp finns än den största mängd som en viss implementation har som inbyggd maxgräns returneras INFO.
I de fall då ett meddelande omfattar LocalOrganizationExtensionId som inte finns returneras INFO. Begrepp som ingår i det gemensamma urvalet hämtas.

#### 7.3.4 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| SubsetIdentity | string | Identifierare som representerar urvalet | 1..1 |
| LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation | 0..1 |
| CodeSystem | ConceptCodeSystemType | Kodsystem som sökt concept tillhör | 0..1 |
| Code | ConceptCodeType | Kod för sökt concept | 0..1 |
| Term | ConceptTermType | Term för sökt concept | 0..1 |
| ConceptsResponseThreshold | int | Antal concepts som maximalt returneras i svaret | 0..1 |
| TermType | string | Type of term | 1..1 |
| **Svar** | | | |
| Subset | SubsetType |  | 0..1 |
| ../SubsetInformation | SubsetInformationType | Information om urval | 1..1 |
| ../../SubsetIdentity | SubsetIdentityType | Identifierare av urval (XML-attribut.) | 1..1 |
| ../../Name | SubsetNameType | Namn som representerar urval (XML-attribut.) | 1..1 |
| ../../Version | SubsetVersionType | Version för urval (XML-attribut.) | 1..1 |
| ../Concept | ConceptType | Lista med concepts | 0..* |
| ../../Metadata | MetadataType | 0..* Metadata | 0..* |
| ../../../Name | MetadataNameType | Identifierar typ av metadata (XML-attribut.) | 1..1 |
| ../../../Value | MetadataValueType | Metadatavärde (XML-attribut.) | 1..1 |
| ../../../LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation (XML-attribut.) | 0..1 |
| ../../CodeSystem | ConceptCodeSystemType | Identifierare av kodsystem (XML-attribut.) | 1..1 |
| ../../Code | ConceptCodeType | Kod för val i listan (XML-attribut.) | 1..1 |
| ../../Term | ConceptTermType | Term som visas upp i vallistan (XML-attribut.) | 1..1 |
| ../../LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation (XML-attribut.) | 0..1 |
| ResultCode | ResultCodeEnum |  | 1..1 |
| comment | string |  | 0..1 |

#### 7.3.5 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetConceptsInteraction  
Beskrivning:  
Retrieve the searched concepts  
Revisioner:  
Tjänstedomän: infrastructure:informationstructureservice:terminology  
Tjänsteinteraktionstyp: Fråga-Svar  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:infrastructure:informationstructureservice:terminology:GetConceptsResponder:1:GetConcepts`

#### 7.3.6 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetConceptsInteraction_1.0_RIVTABP21.wsdl](GetConceptsInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetConceptsResponder_1.0.xsd](GetConceptsResponder_1.0.xsd) | Tjänsteschema |
| [infrastructure_informationstructureservice_terminology_1.0.xsd](infrastructure_informationstructureservice_terminology_1.0.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.3.7 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getconcepts-request](StructureDefinition-getconcepts-request.html)
* **Logisk modell (response):** [StructureDefinition/getconcepts](StructureDefinition-getconcepts.html)
* **Kodsystem:** [CodeSystem/terminology-resultcode-cs](CodeSystem-terminology-resultcode-cs.html)
* **ValueSet:** [ValueSet/terminology-resultcode-vs](ValueSet-terminology-resultcode-vs.html)


## Tjänstekontrakt

### AssertCareEngagement
Ger svar på om en medarbetare med uppdrag på angiven vårdenhet ska ges möjlighet att begära åtkomst till sammanhållen journalföring. Tjänsteproducenter verifierar rättigheten genom att hitta administrativa informationsmängder som indirekt styrker att vårdenheten har en roll i något aktuellt hälsoärende för angiven patient. Det kan t.ex. innebära att tjänsteproducenten söker efter historiska eller planerade vårdkontakter i verksamhetens patientadministrativa system och också söker efter remisser som avser aktuell patient i journalsystemets remissmodul. Om sådana administrativa elektroniska avtryck kan hittas, svarar tjänsteproducenten med "true" annars "false". Värdet "true" indikerar att åtkomstberättigande vårdrelation kan anses föreligga. Respektive vårdgivare ansvarar för att ett ändamålsenligt regelverk tillämpas.
E-tjänster och tillämpningar som bereder professionen åtkomst till sammanhållen journalföring ska genomföra åtkomstkontrollen (anropa AssertCareEngagement) innan någon information ur sammanhållen journalföring tillgängliggörs för aktuell användare.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| performer | sträng | HSA-id för medarbetare som begär åtkomst till sammanhållen journalföring. Ska vara HSA-id för den medarbetare som är autentiserad i tjänstekonsumenten och som begär åtkomst till sammanhållen journalföring. | 1..1 |
| subjectOfCareId | sträng | Person- eller samordningsnummer. 12 tecken enligt Skatteverkets format (ej bindestreck). | 1..1 |
| careUnitHsaIdentity | sträng | HSA-id för medarbetarens uppdragsvårdenhet | 1..1 |
| careGiverHsaIdentity | Sträng | HSA-id för vårdgivaren där vårdenhet med HSA-id enligt careUnitHsaIdentity ingår. | 1..1 |
|  |  |  |  |
| Svar |  |  |  |
| HasCareEngagement | booelan | "true" om åtkomstberättigande vårdrelation kan anses föreligga, annars "false". | 1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

##### Producentregler

| P1 | Tjänsteproducenten ska tillämpa regelverk i enlighet med avsnitt 4.3.1 |
| :--- | :--- |

##### Konsumentregler

| K1 | Medarbetarens identitet ska vara fastställd enligt gällande nationellt regelverk |
| :--- | :--- |

#### Icke funktionella krav
Inga övriga icke funktionella krav.

#### SLA-krav
Inga avvikande SLA-krav.

#### 7.1 Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [AssertCareEngagementInteraction_1.0_RIVTABP21.wsdl](files/wsdl/AssertCareEngagementInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt (RIVTABP21) |
| [AssertCareEngagementInteraction_1.0_RIVTABP20.wsdl](files/wsdl/AssertCareEngagementInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt (RIVTABP20) |
| [ehr_accesscontrol_1.0.xsd](files/schema/ehr_accesscontrol_1.0.xsd) | Domänschema (delat) |
| [AssertCareEngagementResponder_1.0.xsd](files/schema/AssertCareEngagementResponder_1.0.xsd) | Tjänstespecifikt schema |
| [itintegration_registry_1.0.xsd](files/schema/itintegration_registry_1.0.xsd) | Engagemangsindex-schema |
| [ws-addressing-1.0.xsd](files/schema/ws-addressing-1.0.xsd) | WS-Addressing schema |
| [AB_ehr_accesscontrol.docx](files/docs/AB_ehr_accesscontrol.docx) | Arkitekturbeskrivning |
| [SjD_TP_AssertCareEngagement_1.0.docx](files/docs/SjD_TP_AssertCareEngagement_1.0.docx) | Tjänstebeskrivning (tjänsteproducent) |

#### 7.1 FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (request):** [StructureDefinition/assertcareengagement-request](StructureDefinition-assertcareengagement-request.html)
* **Logisk modell (response):** [StructureDefinition/assertcareengagement](StructureDefinition-assertcareengagement.html)

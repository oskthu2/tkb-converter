# 7 Tjänstekontrakt

Källa: *Tjänstekontraktsbeskrivning, Screeningstöd livmoderhals*, version 1.0_RC4 (2020-12-09), [TKB_clinicalprocess_logistics_cervixscreening.docx](TKB_clinicalprocess_logistics_cervixscreening.docx).

Motsvarar TKB kapitel 6 *Tjänstekontrakt* (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### ProcessCervixScreeningInformation

Tjänstekontraktet ProcessCervixScreeningInformation stödjer informationsflödet från en region som har kallelsegrundande information om en kvinna till en annan region som har kallelseansvaret för samma kvinna.

Informationsflödet skall säkerställa att en obruten vårdkedja upprätthålls för en enskild kvinna. Oaktat om en kvinna flyttar mellan regioner, lämnar prov i annan region än hemregionen eller genomgår vård och behandling i annan region än hemregionen.

Typiska källsystem som ingår i systemlösningen för att möjliggöra informationsflödet mellan regioner (huvudmän) är:

- Olika regioners kallelsesystem för utbyte av information mellan regioners kallelsekanslier (scenario ”Kvinna flyttar mellan regioner (flyttar över länsgräns)”)
- LIS/journalsystem för överföring av provresultat till olika regioners kallelsesystem (scenario ”Kvinna lämnar prov i annan region”)
- Journalsystem för överföring av utfall av vård och behandling till olika regioners kallelsesystem (scenario ”Kvinna behandlas i annan region”)

#### 7.1.1 Frivillighet

Tjänstekontraktet är obligatorisk för alla parter som behöver stödja kallelsegrundande informationsutbyte mellan regioner (huvudmän).

#### 7.1.2 Version

1.0_RC3

#### 7.1.3 Fältregler

##### 7.1.3.1 Begäran

Nedanstående tabell beskriver varje element i begäran. Har namnet en * finns ytterligare regler för detta element

och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| CervixScreeningInformation | CervixScreeningInformationType | Kallelsegrundande information för cervixscreening. | 1..1 |
| ../subjectOfCare | PersonType | Folkbokförd person med svenskt personnummer / Personnummer skall anges på formatet ÅÅÅÅMMDDNNNN. | 1..1 |
| ../../personId | IIType | Personnummer: / root:  1.2.752.129.2.1.3.1 / extension: `<personnummer>` / Endast svenskt personnummer är tillåtet | 1..1 |
| ../sendingRegion | RegionType | Region som gör utlämnandet. | 1..1 |
| ../../region | OrganisationType | Region. | 1..1 |
| ../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: `<hsa-id>` | 1..1 |
| ../../../name | String | Regionens namn i klartext. | 1..1 |
| ../../careGiver | OrganisationType | Skall ej anges. | 0..0 |
| ../../../id | IIType | Skall ej anges. | 0..0 |
| ../../../name | String | Skall ej anges. | 0..0 |
| ../../careUnit | OrganisationType | Skall ej anges. | 0..0 |
| ../../../id | IIType | Skall ej anges. | 0..0 |
| ../../../name | String | Skall ej anges. | 0..0 |
| ../exclusion | ExclusionType | Information om exkludering från kallelse. | 0..1 |
| ../../reason | CVType | Orsak till att kvinnan ska exkluderas från kallelser. / Urval ur SNOMED CT: / code: [31021000119100\|116140006\|702371008] / codeSystem: 1.2.752.116.2.1.1 / codeSystemName: Används ej / codeSystemVersion: Används ej / displayName: Valfritt (kan anges) / originalText: Används ej / Urvalet av koder kan komma att förändras vid förändringar i vårdprogrammet. | 1..1 |
| ../../registeredAt | DateType | Datum då det ursprungligen registrerades att kvinnan ska exkluderas från kallelse. / Datum anges på format ”ÅÅÅÅMMDD” | 1..1 |
| ../../originalRegion | RegionType | Organisation varifrån information om exkludering ursprungligen härstammar. | 1..1 |
| ../../../region | OrganisationType | Region. | 1..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: `<hsa-id>` | 1..1 |
| ../../../../name | String | Regionens namn i klartext. | 1..1 |
| ../../../careGiver | OrganisationType | Vårdgivare. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: `<hsa-id>` | 1..1 |
| ../../../../name | String | Vårdgivarens namn i klartext. | 1..1 |
| ../../../careUnit | OrganisationType | Vårdenhet. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: `<hsa-id>` | 1..1 |
| ../../../../name | String | Vårdenhetens namn i klartext. | 1..1 |
| ../followUpGroups | FollowUpGroupType | Information om uppföljningsgrupp (kontrollfil) för kvinna. | 0..* |
| ../../type | CVType | Typ av uppföljningsgrupp (kontrollfil). / Urval ur SNOMED CT: / code: [59461000052109\| 59291000052102\|59321000052109\|59301000052103] / codeSystem: 1.2.752.116.2.1.1 / codeSystemName: Används ej / codeSystemVersion: Används ej / displayName: Valfritt (kan anges) / originalText: Används ej / Urvalet av koder kan komma att förändras vid förändringar i vårdprogrammet. | 1..1 |
| ../../inclusionDate | DateType | Datum då kvinna inkluderades i uppföljningsgrupp (kontrollfil). / Datum anges på format ”ÅÅÅÅMMDD” | 1..1 |
| ../../originalRegion | RegionType | Organisation varifrån information om tillhörighet till uppföljningsgrupp (kontrollfil) ursprungligen härstammar. | 1..1 |
| ../../../region | OrganisationType | Region. | 1..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: `<hsa-id>` | 1..1 |
| ../../../../name | String | Regionens namn i klartext. | 1..1 |
| ../../../careGiver | OrganisationType | Vårdgivare. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: `<hsa-id>` | 1..1 |
| ../../../../name | String | Vårdgivarens namn i klartext. | 1..1 |
| ../../../careUnit | OrganisationType | Vårdenhet. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: `<hsa-id>` | 1..1 |
| ../../../../name | String | Vårdenhetens namn i klartext. | 1..1 |
| ../specimen | SpecimenType | Gynekologiska cellprovtagning som ledde till ett bedömbart prov. | 0..1 |
| ../../specimenDate | TimeStampType | Tidpunkt för senaste provtagning som ledde till ett bedömbart prov. | 1..1 |
| ../../originalRegion | RegionType | Organisation varifrån information om provtagning ursprungligen härstammar. | 1..1 |
| ../../../region | OrganisationType | Region. | 1..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: `<hsa-id>` | 1..1 |
| ../../../../name | String | Regionens namn i klartext. | 1..1 |
| ../../../careGiver | OrganisationType | Vårdgivare. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: `<hsa-id>` | 1..1 |
| ../../../../name | String | Vårdgivarens namn i klartext. | 1..1 |
| ../../../careUnit | OrganisationType | Vårdnhet. | 0..1 |
| ../../../../id | IIType | Anges med HSA-id. / root: 1.2.752.129.2.1.4.1 / extension: `<hsa-id>` | 1..1 |
| ../../../../name | String | Vårdenhetens namn i klartext. | 1..1 |
| ../../HPVstatusList | HPVstatusType | Provets HPV-status. / Skall anges om och endast om provet har analyserats för HPV. | 0..* |
| ../../../value | CVType | Värde för HPV-status. / Urval ur SNOMED CT: / code: [59291000052102\|59321000052109\|59301000052103\|59311000052101] / codeSystem: 1.2.752.116.2.1.1 / codeSystemName: Används ej / codeSystemVersion: Används ej / displayName: Valfritt (kan anges) / originalText: Används ej / Urvalet av koder kan komma att förändras vid förändringar i vårdprogrammet. | 1..1 |
| ../plannedInvitation | PlannedInvitationType | Förmedlar det individuella kallelsedatum som frångår vårdprogrammets ordinarie kallelseintervall och har satts för en enskild kvinna | 0..1 |
| ../../date | DateType | Planerat individuellt kallelsedatum | 1..1 |
| ../../reason | String | Beskrivning av orsaken till att kvinnan har ett individuellt kallelsedatum istället för vårdprogrammets ordinarie kallelse-intervall. | 0..1 |

##### 7.1.3.2 Svar

Nedanstående tabell beskriver varje element i svar.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

#### 7.1.4 Övriga regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.

Allmänna regler

R1: Om ett meddelande endast innehåller entiteten subjectOfCare och ingen av följande entiteter - SpecimenType, ExclusionType, FollowUpGroupType, PlannedInvitationType.

Skall följande tolkning göras av mottagande system – ”Kallelsegrundande information saknas”.

#### 7.1.5 Annan information om kontraktet

N/A

#### 7.1.6 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| cervixScreeningInformation | CervixScreeningInformationType |  | 1..1 |
| ../subjectOfCare | PersonType |  | 1..1 |
| ../../personId | IIType |  | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../sendingRegion | RegionType |  | 1..1 |
| ../../region | OrganisationType |  | 1..1 |
| ../../../id | IIType |  | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../../name | string |  | 1..1 |
| ../../careGiver | OrganisationType |  | 0..1 |
| ../../../id | IIType |  | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../../name | string |  | 1..1 |
| ../../careUnit | OrganisationType |  | 0..1 |
| ../../../id | IIType |  | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../../name | string |  | 1..1 |
| ../exclusion | ExclusionType |  | 0..1 |
| ../../reason | CVType |  | 1..1 |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../registeredAt | DateType |  | 1..1 |
| ../../originalRegion | RegionType |  | 1..1 |
| ../../../region | OrganisationType |  | 1..1 |
| ../../../../id | IIType |  | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../../name | string |  | 1..1 |
| ../../../careGiver | OrganisationType |  | 0..1 |
| ../../../../id | IIType |  | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../../name | string |  | 1..1 |
| ../../../careUnit | OrganisationType |  | 0..1 |
| ../../../../id | IIType |  | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../../name | string |  | 1..1 |
| ../followUpGroups | FollowUpGroupType |  | 0..* |
| ../../type | CVType |  | 1..1 |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../inclusionDate | DateType |  | 1..1 |
| ../../originalRegion | RegionType |  | 1..1 |
| ../../../region | OrganisationType |  | 1..1 |
| ../../../../id | IIType |  | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../../name | string |  | 1..1 |
| ../../../careGiver | OrganisationType |  | 0..1 |
| ../../../../id | IIType |  | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../../name | string |  | 1..1 |
| ../../../careUnit | OrganisationType |  | 0..1 |
| ../../../../id | IIType |  | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../../name | string |  | 1..1 |
| ../plannedInvitation | PlannedInvitationType |  | 0..1 |
| ../../date | DateType |  | 1..1 |
| ../../reason | string |  | 0..1 |
| ../specimen | SpecimenType |  | 0..1 |
| ../../specimenDate | DateType |  | 1..1 |
| ../../originalRegion | RegionType |  | 1..1 |
| ../../../region | OrganisationType |  | 1..1 |
| ../../../../id | IIType |  | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../../name | string |  | 1..1 |
| ../../../careGiver | OrganisationType |  | 0..1 |
| ../../../../id | IIType |  | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../../name | string |  | 1..1 |
| ../../../careUnit | OrganisationType |  | 0..1 |
| ../../../../id | IIType |  | 1..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 0..1 |
| ../../../../name | string |  | 1..1 |
| ../../HPVstatusList | HPVstatusType |  | 0..* |
| ../../../value | CVType |  | 1..1 |
| ../../../../code | string |  | 1..1 |
| ../../../../codeSystem | string |  | 1..1 |
| ../../../../codeSystemName | string |  | 0..1 |
| ../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../displayName | string |  | 0..1 |
| ../../../../originalText | string |  | 0..1 |
| **Svar** | | | |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |

#### 7.1.7 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:clinicalprocess:logistics:cervixscreening:ProcessCervixScreeningInformationResponder:1:ProcessCervixScreeningInformation`

#### 7.1.8 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ProcessCervixScreeningInformationInteraction_1.0_RIVTABP21.wsdl](ProcessCervixScreeningInformationInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [ProcessCervixScreeningInformationResponder_1.0.xsd](ProcessCervixScreeningInformationResponder_1.0.xsd) | Tjänsteschema |
| [clinicalprocess_logistics_cervixscreening_1.0.xsd](clinicalprocess_logistics_cervixscreening_1.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [ProcessCervixScreeningInformation_constraints.xml](ProcessCervixScreeningInformation_constraints.xml) | Schematron-regler ur testsviten (test-suite/ProcessCervixScreeningInformation/constraints.xml) |

#### 7.1.9 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/processcervixscreeninginformation-request](StructureDefinition-processcervixscreeninginformation-request.html)
* **Logisk modell (response):** [StructureDefinition/processcervixscreeninginformation](StructureDefinition-processcervixscreeninginformation.html)
* **Kodsystem:** [CodeSystem/CervixScreening-resultcode-cs](CodeSystem-CervixScreening-resultcode-cs.html)
* **ValueSet:** [ValueSet/CervixScreening-resultcode-vs](ValueSet-CervixScreening-resultcode-vs.html)


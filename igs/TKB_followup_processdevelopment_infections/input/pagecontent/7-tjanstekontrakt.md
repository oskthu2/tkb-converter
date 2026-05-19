## Tjänstekontrakt

Tjänstedomänen followup: processdevelopment: infections innehåller sju tjänstekontrakt för hantering av data i Infektionsverktyget.

### ProcessPrescriptionReason

Tjänsten registrerar en ordinationsorsak med information om patient, organisatorisk enhet, eventuellt aktivitet som ordinationsorsaken har kopplats till, ordination och ordinerad substans. Observera att det endast är möjligt att skicka en ordination per meddelande. En befintlig ordinationsorsak kan uppdateras genom att ett nytt meddelande med samma id (aktivitetsid eller tillståndsid) skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| prescriptionTime | TimeStampType | Tidpunkt då registreringen av ordinationsorsaken gjordes. / I de fall en ordination finns anges här / I annat fall lämnas detta fält tomt. | 0..1 |
| substanceCode | CVType | Hanterar information kring en läkemedelssubstans som är del av en läkemedelsordination / Kodverk: ATC | 1..1 |
| substanceCode.code | String | ATC-kod för läkemedelssubstansen. | 0..1 |
| substanceCode.codeSystem | String | Kodsystem för ATC: 1.2.752.129.2.2.3.1.1 | 0..1 |
| substanceCode.codeSystemName | String | ATC | 0..1 |
| substanceCode.codeSystemVersion | String | Versionsnumret för kodsystemet | 0..1 |
| substanceCode.displayName | String | Textuell beskrivning av det som koden anger | 0..1 |
| prescriptionCareUnitId | IIType | Medicinskt ansvarig för ordinationsmoment. | 1..1 |
| prescriptionCareUnitId.root | String | OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| prescriptionCareUnitId.extension | String | HSAid for enheten | 0..1 |
| prescriptionLocationId | IIType | Registreringsenhet för ordinationsmoment. | 0..1 |
| prescriptionLocationId.root | String | OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| prescriptionLocationId.extension | String | HSAid for enheten | 0..1 |
| prescriptionReasonCareUnitId | IIType | Medicinskt ansvarig för ordinationsorsak | 1..1 |
| prescriptionReasonCareUnitId.root | String | OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| prescriptionReasonCareUnitId.extension | String | HSAid for enheten | 0..1 |
| prescriptionReasonLocationId | IIType | Registreringsenhet för ordinationsorsak | 0..1 |
| prescriptionReasonLocationId.root | String | OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| prescriptionReasonLocationId.extension | String | HSAid for enheten | 0..1 |
| conditionId | IIType | Id för patientens diagnos | 0..1 |
| conditionId.root | String | Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1 | 1..1 |
| conditionId.extension | String | HSA-id för det system inom vilket tillstånds-id är unikt + ":" + tillstånds-id. | 0..1 |
| conditionCode | CVType | Anger koden och klartext för patientens diagnos / Kodverk: SnomedCT, IV Annan, KSH97 | 0..1 |
| conditionCode.code | String |  | 0..1 |
| conditionCode.codeSystem | String |  | 0..1 |
| conditionCode.codeSystemName | String |  | 0..1 |
| conditionCode.codeSystemVersion | String |  | 0..1 |
| conditionCode.displayName | String |  | 0..1 |
| source | CVType | Kod och klartext som anger hur infektionen uppstått. Anger om det är samhälls- eller vårdförvärvad infektion eller ej infektion (vid förebyggande profylax) / Kodverk: IV Smittväg | 0..1 |
| source.code | String |  | 0..1 |
| source.codeSystem | String |  | 0..1 |
| source.codeSystemName | String |  | 0..1 |
| source.codeSystemVersion | String |  | 0..1 |
| source.displayName | String |  | 0..1 |
| activityCode | CVType | Information om en aktivitet som är relevant att registrera. / Kodverk: KVÅ, SnomedCT, IV Annan | 1..1 |
| activityCode.code | String |  | 0..1 |
| activityCode.codeSystem | String |  | 0..1 |
| activityCode.codeSystemName | String |  | 0..1 |
| activityCode.codeSystemVersion | String |  | 0..1 |
| activityCode.displayName | String |  | 0..1 |
| activityId | IIType | Unik identifierare för aktivitet | 1..1 |
| activityId.root | String | Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1 | 1..1 |
| activityId.extension | String | HSA-id för det system inom vilket aktivitets-id är unikt + ":" + aktivitets-id. | 0..1 |
| patient | PatientType | Patientuppgifter | 1..1 |
| patient.id | IIType |  | 1..1 |
| patient.id.root | String | OID för patientidentifieringstyp | 1..1 |
| patient.id.extension | String | Personnummer anges på formatet ÅÅÅÅMMDDXXXX. | 0..1 |
| patient.birthtime | DateType | Patientens födelseår. Anges enligt ÅÅÅÅMMDD, ÅÅÅÅMM eller ÅÅÅÅ | 1..1 |
| patient.gender | CVType | Kod och klartext som anger patientens kön | 1..1 |
| patient.gender.code | String | Kod för könet: 0 = not known, 1 = male, 2 = female, 9 = not applicable | 0..1 |
| patient.gender.codeSystem | String | OID för kodverket: 1.2.752.129.2.2.1.1 | 0..1 |
| patient.gender.codeSystemName | String | Namn på kodverket: KV Kön | 0..1 |
| patient.gender.codeSystemVersion | String | Versionsnummer ifall applicerbar | 0..1 |
| patient.gender.displayname | String | Klartext för koden | 0..1 |
| prescriptionId | IIType | Unik identifierare för ordinationen | 1..1 |
| prescriptionId.root | String | Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1 |  |
| prescriptionId.extension | String | HSA-id för det system inom vilket ordinations-id är unikt + ":" + ordinations-id. |  |
| prescriptionReasonTime | TimeStampType | Tidpunkt för ordinationen. | 0..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen / INFO = Information finns om operationen | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan.
Fält 1 – ActivityId - Särskilda identifierare för angivande av annan vårdgivare (GUIDar):
- Annan vårdgivare: BC533FBB-DD4F-4F14-9E77-9E67A1E6D738
- Annan vårdgivare Sverige: CFEEC579-C1FD-41C7-B940-1DD15CB6957A
- Annan vårdgivare utomlands: DDCD0F15-E459-4F5C-BCD6-478D9C3040EE

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [ProcessPrescriptionReasonInteraction_1.0_RIVTABP21.wsdl](files/wsdl/ProcessPrescriptionReasonInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [followup_processdevelopment_infections_1.0.xsd](files/schema/followup_processdevelopment_infections_1.0.xsd) | Domänschema (delat) |
| [followup_processdevelopment_infections_enum_1.0.xsd](files/schema/followup_processdevelopment_infections_enum_1.0.xsd) | Domänenumerationer (delat) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (request):** [StructureDefinition/processprescriptionreason-request](StructureDefinition-processprescriptionreason-request.html)
* **Logisk modell (response):** [StructureDefinition/processprescriptionreason-response](StructureDefinition-processprescriptionreason-response.html)

---

### DeletePrescriptionReason

DeletePrescriptionReason raderar information som tidigare har registrerats via tjänsten ProcessPrescriptionReason.
En befintlig ordinationsorsak i Infektionsverktyget raderas genom att tillstånds-id, om orsaken är en infektion, eller aktivitets-id, om orsaken är profylax, skickas via tjänsten. All information som har registrerats tillsammans med den identifierade ordinationsorsaken via tjänsten ProcessPrescriptionReason raderas helt i Infektionsverktyget.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| activityId | IIType | Aktivitets-id för den aktivitet med tillhörande information som ska raderas. Anges när den ordinationsorsak som ska raderas är en aktivitet (profylax). | 0..1 |
| activityId.root | String | Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1 |  |
| activityId.extension | String | HSA-id för det system inom vilket aktivitets-id är unikt + ":" + aktivitets-id. |  |
| conditionId | IIType | Tillstånds-id för det tillstånd/diagnos med tillhörande information som ska raderas. Anges när den ordinationsorsak som ska raderas är ett tillstånd (infektion). Någon av aktivitets-id eller tillstånds-id ska anges men ej båda. | 0..1 |
| conditionId.root | String | Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1 | 1..1 |
| conditionId.extension | String | HSA-id för det system inom vilket tillstånds-id är unikt + ":" + tillstånds-id. | 0..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen / INFO = Information finns om operationen | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Fält 1 – Antingen activityId eller conditionId: Någon av aktivitets-id eller tillstånds-id ska anges, men ej båda.

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeletePrescriptionReasonInteraction_1.0_RIVTABP21.wsdl](files/wsdl/DeletePrescriptionReasonInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [followup_processdevelopment_infections_1.0.xsd](files/schema/followup_processdevelopment_infections_1.0.xsd) | Domänschema (delat) |
| [followup_processdevelopment_infections_enum_1.0.xsd](files/schema/followup_processdevelopment_infections_enum_1.0.xsd) | Domänenumerationer (delat) |

#### FHIR-artefakter

* **Logisk modell (request):** [StructureDefinition/deleteprescriptionreason-request](StructureDefinition-deleteprescriptionreason-request.html)
* **Logisk modell (response):** [StructureDefinition/deleteprescriptionreason-response](StructureDefinition-deleteprescriptionreason-response.html)

---

### DeletePrescription

DeletePrescription raderar information om en ordination som tidigare har registrerats via tjänsten ProcessPrescriptionReason. Ordinationsorsaken för ordinationen tas inte bort.

#### Version
1.0

#### Fältregler

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| prescriptionId | IIType | Ordinations-id för den ordination som ska raderas. | 1..1 |
| prescriptionId.root | String | Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1 | 1..1 |
| prescriptionId.extension | String | HSA-id för det system inom vilket ordinations-id är unikt + ":" + ordinations-id. | 0..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen / INFO = Information finns om operationen | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Detta tjänstekontrakt har inga övriga regler.

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeletePrescriptionInteraction_1.0_RIVTABP21.wsdl](files/wsdl/DeletePrescriptionInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [followup_processdevelopment_infections_1.0.xsd](files/schema/followup_processdevelopment_infections_1.0.xsd) | Domänschema (delat) |
| [followup_processdevelopment_infections_enum_1.0.xsd](files/schema/followup_processdevelopment_infections_enum_1.0.xsd) | Domänenumerationer (delat) |

#### FHIR-artefakter

* **Logisk modell (request):** [StructureDefinition/deleteprescription-request](StructureDefinition-deleteprescription-request.html)
* **Logisk modell (response):** [StructureDefinition/deleteprescription-response](StructureDefinition-deleteprescription-response.html)

---

### ProcessLaboratoryReport

Tjänsten registrerar ett nytt laboratoriesvar med tillhörande information om patient, beställande enhet, provtagningstidpunkt och agensförekomst. Ett befintligt laboratoriesvar kan uppdateras genom att ett nytt meddelande med samma svarsid skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

#### Version
1.0

#### Fältregler

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| orgUnitId | IIType | Informationsspecifikation: Laboratoriesvar.har beställande.Enhet.enhets-id | 1..1 |
| orgUnitId.root | String | OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| orgUnitId.extension | String | HSA-id för enheten | 0..1 |
| reportId | IIType | Informationsspecifikation: Laboratoriesvar.laboratoriesvars-id | 1..1 |
| reportId.root | String | Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1 | 1..1 |
| reportId.extension | String | HSA-id för det system inom vilket svars-id är unikt. + ":" svars-id. | 0..1 |
| testTime | TimeStampType | Informationsspecifikation: Provtagning.provtagningstidpunkt | 1..1 |
| observationTime | TimeStampType | Informationsspecifikation: Mikrobiologiskt fynd.observationstidpunkt | 1..1 |
| findingCode | CVType | Informationsspecifikation: Mikrobiologiskt fynd.agenskod / Kodverk: NPU / Möjliga koder: ATCC09689 (Clostridium difficile) | 1..1 |
| findingCode.code | String | Koden för fyndet. Exempel: ATCC09689 | 0..1 |
| findingCode.codeSystem | String | OID för NPU kodverket | 0..1 |
| findingCode.codeSystemName | String | NPU | 0..1 |
| findingCode.codeSystemVersion | String | Versionsnumret för använt kodverk | 0..1 |
| findingCode.displayName | String | Textuell beskrivning av det som koden anger. Exempel: Clostridium difficile | 0..1 |
| patient | PatientType | Informationsspecifikation: Patient | 1..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen / INFO = Information finns om operationen | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Detta tjänstekontrakt har inga övriga regler.

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ProcessLaboratoryReportInteraction_1.0_RIVTABP21.wsdl](files/wsdl/ProcessLaboratoryReportInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [followup_processdevelopment_infections_1.0.xsd](files/schema/followup_processdevelopment_infections_1.0.xsd) | Domänschema (delat) |
| [followup_processdevelopment_infections_enum_1.0.xsd](files/schema/followup_processdevelopment_infections_enum_1.0.xsd) | Domänenumerationer (delat) |

#### FHIR-artefakter

* **Logisk modell (request):** [StructureDefinition/processlaboratoryreport-request](StructureDefinition-processlaboratoryreport-request.html)
* **Logisk modell (response):** [StructureDefinition/processlaboratoryreport-response](StructureDefinition-processlaboratoryreport-response.html)

---

### DeleteLaboratoryReport

DeleteLaboratoryReport raderar information som tidigare har registrerats via tjänsten ProcessLaboratoryReport. Ett befintligt labsvar i Infektionsverktyget raderas genom att svars-id skickas via tjänsten. All information som har registrerats tillsammans med det identifierade labsvaret via tjänsten ProcessLabReport raderas helt i Infektionsverktyget.

#### Version
1.0

#### Fältregler

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| laboratoryReportId | IIType | Svars-id för det laboratoriesvar med tillhörande information som ska raderas. | 1..1 |
| laboratoryReportId.root | String | Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1 | 1..1 |
| laboratoryReportId.extension | String | HSA-id för det system inom vilket svars-id är unikt. + ":" svars-id. | 0..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen / INFO = Information finns om operationen | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Detta tjänstekontrakt har inga övriga regler.

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteLaboratoryReportInteraction_1.0_RIVTABP21.wsdl](files/wsdl/DeleteLaboratoryReportInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [followup_processdevelopment_infections_1.0.xsd](files/schema/followup_processdevelopment_infections_1.0.xsd) | Domänschema (delat) |
| [followup_processdevelopment_infections_enum_1.0.xsd](files/schema/followup_processdevelopment_infections_enum_1.0.xsd) | Domänenumerationer (delat) |

#### FHIR-artefakter

* **Logisk modell (request):** [StructureDefinition/deletelaboratoryreport-request](StructureDefinition-deletelaboratoryreport-request.html)
* **Logisk modell (response):** [StructureDefinition/deletelaboratoryreport-response](StructureDefinition-deletelaboratoryreport-response.html)

---

### ProcessCareEncounter

Detta tjänstekontrakt skriver vårdkontaktsdata. En vårdkontakt kan vara av arten noterat fenomen som rör en patients orsak till vårdkontakt, t.ex. bokat möte eller akut intag. Tjänsten registrerar ett eller flera nya vårdkontakter med tillhörande information. En vårdkontakt kan uppdateras genom att ett nytt meddelande med samma vårdkontaktsid skickas in.

#### Version
1.0

#### Fältregler

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| careEncounter | CareEncounterType |  | 1..1 |
| CareEncounterType.id | IIType | Ett unikt värde för själva vårdkontakten som också refererar till vilket källsystem informationen kommer ifrån. | 1..1 |
| CareEncounterType.id.root | String | Root sätts till nationell OID för lokala id:n: 1.2.752.129.2.1.2.1 | 1..1 |
| CareEncounterType.id.extension | String | Extension sätts till HSA-id för det system inom vilket careEncounterId är unikt + ":" + själva ID. | 1..1 |
| CareEncounterType.type | CVType | Anger vilken typ av vårdkontakt det gäller. | 0..1 |
| CareEncounterType.type.code | String | Kod för vårdkontaktstyp. | 1..1 |
| CareEncounterType.type.codeSystem | String | Kodsystem för angiven kod. | 1..1 |
| CareEncounterType.type.codeSystemName | String | Namn för kodsystem. | 0..1 |
| CareEncounterType.type.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| CareEncounterType.type.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| CareEncounterType.time | TimePeriodType | Tidsperiod för vårdkontakten. Består av start och end i formatet ÅÅÅÅMMDDttmmss | 1..1 |
| CareEncounterType.time.start | TimeStampType | Startdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| CareEncounterType.time.end | TimeStampType | Slutdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| CareEncounterType.status | CVType | Anger vilken status vårdkontakten har. | 0..1 |
| CareEncounterType.status.code | String | Kod för vårdkontaktsstatus. | 1..1 |
| CareEncounterType.status.codeSystem | String | Kodsystem för angiven kod. | 1..1 |
| CareEncounterType.status.codeSystemName | String | Namn för kodsystem. | 0..1 |
| CareEncounterType.status.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| CareEncounterType.status.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| CareEncounterType.reason | String | Fritextbeskrivning där orsaken till vårdkontakten beskrivs. | 0..1 |
| location | LocationType |  | 0..1 |
| LocationType.id | IIType | Identifiering för platsen. Anges om platsen är en vårdenhet. | 0..1 |
| LocationType.id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| LocationType.id.extension | String | Extension sätts till HSA-id. | 1..1 |
| LocationType.name | String | Namn på den plats där vårdkontakt har genomförts. | 1..1 |
| LocationType.address | AddressType | Platsens adress vilken vårdkontakten är knuten till. | 0..* |
| LocationType.telecom | TelType | Platsens telefon och/eller mail adress. | 0..* |
| patient | PatientType |  | 1..1 |
| PatientType.id | IIType | Id för patienten. Skall anges med 12 tecken utan avskiljare. | 1..1 |
| PatientType.id.root | String | OID för typ av identifierare (personnummer, samordningsnummer, reservnummer) | 1..1 |
| PatientType.id.extension | String | Personnummer/globalt reservnummer/samordningsnummer. | 1..1 |
| PatientType.dateOfBirth | DateTime | Patientens födelseår, månad och dag. Format ÅÅÅÅMMDD. | 1..1 |
| PatientType.gender | CVType | Anger patientens kön. | 0..1 |
| sourceSystem | SourceSystemType |  | 0..1 |
| SourceSystemType.id | IIType | HSA-id för källsystemet som genererat dokumentet. | 1..1 |
| performerRole | PerformerRoleType |  | 1..1 |
| PerformerRoleType.id | IIType | Personens identitet av utförarrollen, unik inom källsystemet. Lämnas tomt ifall vårdkontakten utförs av patienten själv eller annan person. | 0..1 |
| PerformerRoleType.code | CVType | Beskriver utförarens roll. | 1..1 |
| PerformerRoleType.careUnit | CareUnitType |  | 0..1 |
| CareUnitType.id | IIType | HSAid för PDL vårdenhet som har medicinskt ansvar för observationen. | 1..1 |
| CareUnitType.name | String | Vårdenhetens namn till vilken vårdkontakten är knuten. | 0..1 |
| CareGiverType.id | IIType | HSAid. Vårdgivarens identitet som enheten är anknuten till. | 1..1 |
| CareGiverType.name | String | Vårdgivarens namn till vilken enheten är knuten. | 0..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen / INFO = Information finns om operationen | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Fält 2 – Plats för observation i egenskap av vårdprocess: Då observationen inkluderar PerformerRole.id dvs. involverar vårdpersonal ska minst Location.name anges.

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ProcessCareEncounterInteraction_1.0_RIVTABP21.wsdl](files/wsdl/ProcessCareEncounterInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [followup_processdevelopment_infections_1.0.xsd](files/schema/followup_processdevelopment_infections_1.0.xsd) | Domänschema (delat) |
| [followup_processdevelopment_infections_enum_1.0.xsd](files/schema/followup_processdevelopment_infections_enum_1.0.xsd) | Domänenumerationer (delat) |

#### FHIR-artefakter

* **Logisk modell (request):** [StructureDefinition/processcareencounter-request](StructureDefinition-processcareencounter-request.html)
* **Logisk modell (response):** [StructureDefinition/processcareencounter-response](StructureDefinition-processcareencounter-response.html)

---

### DeleteCareEncounter

DeleteCareEncounter raderar information som tidigare har registrerats via tjänsten ProcessCareEncounter. All information som har registrerats tillsammans med den identifierade vårdkontakten via tjänsten ProcessCareEncounter raderas helt.

#### Version
1.0

#### Fältregler

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| careEncounterId | IIType | careEncounterId för den vårdkontakt med tillhörande information som ska raderas. Root := Nationell OID för lokala id:n. Ext:= HSA-id för det system inom vilket vårdkontakt-id är unikt + ":" + vårdkontakt-id. | 1..1 |
| careEncounterId.root | String | Nationell OID för lokala id:n: 1.2.752.129.2.1.2.1 |  |
| careEncounterId.extension | String | Extension sätts till HSA-id för det system inom vilket careEncounterId är unikt + ":" + själva ID. |  |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen / INFO = Information finns om operationen | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Detta tjänstekontrakt har inga övriga regler.

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteCareEncounterInteraction_1.0_RIVTABP21.wsdl](files/wsdl/DeleteCareEncounterInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [followup_processdevelopment_infections_1.0.xsd](files/schema/followup_processdevelopment_infections_1.0.xsd) | Domänschema (delat) |
| [followup_processdevelopment_infections_enum_1.0.xsd](files/schema/followup_processdevelopment_infections_enum_1.0.xsd) | Domänenumerationer (delat) |

#### FHIR-artefakter

* **Logisk modell (request):** [StructureDefinition/deletecareencounter-request](StructureDefinition-deletecareencounter-request.html)
* **Logisk modell (response):** [StructureDefinition/deletecareencounter-response](StructureDefinition-deletecareencounter-response.html)

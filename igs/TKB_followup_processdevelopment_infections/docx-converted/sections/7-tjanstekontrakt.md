## Tjänstekontrakt

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
| conditionId.root | String | Nationell OID för lokala ID:n: / 1.2.752.129.2.1.2.1 | 1..1 |
| conditionId.extension | String | HSA-id för det system inom vilket tillstånds-id är unikt + ”:” + tillstånds- id. | 0..1 |
| conditionCode | CVType | Anger koden och klartext för patientens diagnos / Kodverk: SnomedCT, IV Annan, KSH97 | 0..1 |
| conditionCode.code | String |  | 0..1 |
| conditionCode.codeSystem | String |  | 0..1 |
| conditionCode.codeSystemName | String |  | 0..1 |
| conditionCode.codeSystemVersion | String |  | 0..1 |
| conditionCode.displayName | String |  | 0..1 |
| source | CVType | Kod och klartext som anger hur infektionen uppstått. / Anger om det är samhälls- eller vårdförvärvad infektion eller ej infektion (vid förebyggande profylax) / Kodverk: IV Smittväg | 0..1 |
| source.code | String |  | 0..1 |
| source.codeSystem | String |  | 0..1 |
| source.codeSystemName | String |  | 0..1 |
| source.codeSystemVersion | String |  | 0..1 |
| source..displayName | String |  | 0..1 |
| activityCode | CVType | Information om en aktivitet som är relevant att registrera. / Kodverk: KVÅ, SnomedCT, IV Annan | 1..1 |
| activityCode.code | String |  | 0..1 |
| activityCode.codeSystem | String |  | 0..1 |
| activityCode.codeSystemName | String |  | 0..1 |
| activityCode.codeSystemVersion | String |  | 0..1 |
| activityCode.displayName | String |  | 0..1 |
| activityId | IIType | Unik identifierare för aktivitet / OBSERVERA / Notera att detta attribut har olika betydelse beroende på om mallen för Activity ( profylax) eller Condition (infektion) används. / För Activity avses ett id för själva profylaxbehandlingen, för Condition avses ett id för den åtgärd som orsakat en post-operativ infektion. / I Condition-fallet måste den angivna åtgärden sändas via ProcessActivity-tjänsten (innan eller efter anropet till ProcessPrescriptionReason) för att kopplingen skall bli komplett. Innan ProcessActivity anropats ligger kopplingen till åtgärden i en väntekö. / (Fält 1) | 1..1 |
| activityId.root | String | Nationell OID för lokala ID:n: / 1.2.752.129.2.1.2.1 / Eller vid annan (okänd) vårdgivare (Svensk, Utländsk, Ej specificerad) så sätts root till GUID (UUID). | 1..1 |
| activityId.extension | String | HSA-id för det system inom vilket aktivitets-id är unikt + ”:” + aktivitets- id. / Eller vid annan (okänd) vårdgivare (Svensk, Utländsk, Ej specificerad) så lämnas extension tomt. | 0..1 |
| patient | PatientType | Patientuppgifter | 1..1 |
| patient.id | IIType |  | 1..1 |
| patient.id.root | String | Lokalt reservnummer görs unikt genom att ange HSA-id för den enhet inom vilken reservnumret är unikt tillsammans med det lokala reservnumret. / För lokala reservnummer används OID:n för icke-nationell identifierare Org+lokalt unikt id | 1..1 |
| patient.id.extension | String | Personnummer anges på formatet ÅÅÅÅMMDDXXXX. | 0..1 |
| patient.birthtime | DateType | Patientens födelseår. Anges enligt följande alternativ: / ÅÅÅÅMMDD / ÅÅÅÅMM / ÅÅÅÅ | 1..1 |
| patient.gender | CVType | Kod och klartext som anger patientens kön | 1..1 |
| patient.gender.code | String | Kod för könet: / 0 = not known / 1 = male / 2 = female / 9 = not applicable | 0..1 |
| patient.gender.codeSystem | String | OID för kodverket: / 1.2.752.129.2.2.1.1 | 0..1 |
| patient.gender.codeSystemName | String | Namn på kodverket: / KV Kön | 0..1 |
| patient.gender.codeSystemVersion | String | Versionsnummer ifall applicerbar | 0..1 |
| patient.gender.displayname | String | Klartext för koden: / 0 = not known / 1 = male / 2 = female / 9 = not applicable | 0..1 |
| prescriptionId | IIType | Unik identifierare för ordinationen | 1..1 |
| prescriptionId.root | String | Nationell OID för lokala ID:n: / 1.2.752.129.2.1.2.1 |  |
| prescriptionId.extension | String | HSA-id för det system inom vilket ordinations-id är unikt / + ”:”+ordinations- id. |  |
| prescriptionReasonTime | TimeStampType | Tidpunkt för ordinationen. / I de fall en ordinationsorsak registreras utan ordination anges här Ordinationsorsak.registreringstidpunkt i annat fall lämnas detta fält tomt. | 0..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen. Felet beskrivs i elementet comment / INFO = Information finns om operationen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 1 – ActivityId - Särskilda identifierare för angivande av annan vårdgivare (GUIDar)
Annan vårdgivare: BC533FBB-DD4F-4F14-9E77-9E67A1E6D738
Annan vårdgivare Sverige: CFEEC579-C1FD-41C7-B940-1DD15CB6957A
Annan vårdgivare utomlands: DDCD0F15-E459-4F5C-BCD6-478D9C3040EE

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

### DeletePrescriptionReason
DeletePrescriptionReason raderar information som tidigare har registrerats via tjänsten ProcessPrescriptionReason.
En befintlig ordinationsorsak i Infektionsverktyget raderas genom att tillstånds-id, om orsaken är en infektion, eller aktivitets-id, om orsaken är profylax, skickas via tjänsten. All information som har registrerats tillsammans med den identifierade ordinationsorsaken via tjänsten ProcessPrescriptionReason raderas helt i Infektionsverktyget.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| activityId | IIType | Aktivitets-id för den aktivitet med tillhörande information som ska raderas. / Anges när den ordinationsorsak som ska raderas är en aktivitet (profylax). / (Fält 1) | 0..1 |
| activityId.root | String | Nationell OID för lokala ID:n: / 1.2.752.129.2.1.2.1 |  |
| activityId.extension | String | HSA-id för det system inom vilket aktivitets-id är unikt + ”:” + aktivitets- id. |  |
| conditionId | IIType | Tillstånds-id för det tillstånd/diagnos med tillhörande information som ska raderas. / Anges när den ordinationsorsak som ska raderas är ett tillstånd (infektion). / Någon av aktivitets-id eller tillstånds-id ska anges men ej båda / (Fält 1) | 0..1 |
| conditionId.root | String | Nationell OID för lokala ID:n: / 1.2.752.129.2.1.2.1 | 1..1 |
| conditionId.extension | String | HSA-id för det system inom vilket tillstånds-id är unikt + ”:” + tillstånds- id. | 0..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen. Felet beskrivs i elementet comment / INFO = Information finns om operationen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 1 – Antingen activityId eller conditionId
Någon av aktivitets-id eller tillstånds-id ska anges, men ej båda.

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

### DeletePrescription
DeletePrescription raderar information om en ordination som tidigare har registrerats via tjänsten ProcessPrescriptionReason. Ordinationsorsaken för ordinationen tas inte bort.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| prescriptionId | IIType | Ordinations-id för den ordination som ska raderas. | 1..1 |
| prescriptionId.root | String | Nationell OID för lokala ID:n: / 1.2.752.129.2.1.2.1 | 1..1 |
| prescriptionId.extension | String | HSA-id för det system inom vilket ordinations-id är unikt / + ”:”+ordinations- id. | 0..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen. Felet beskrivs i elementet comment / INFO = Information finns om operationen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Detta tjänstekontrakt har inga övriga regler.

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

### ProcessLaboratoryReport
Tjänsten registrerar ett nytt laboratoriesvar med tillhörande information om patient, beställande enhet, provtagningstidpunkt och agensförekomst. Ett befintligt laboratoriesvar kan uppdateras genom att ett nytt meddelande med samma svarsid skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| orgUnitId | IIType | Informationsspecifikation: Laboratoriesvar.har beställande.Enhet.enhets-id | 1..1 |
| orgUnitId.root | String | OID för HSA-id: 1.2.752.129.2.1.4.1 | 1..1 |
| orgUnitId.extension | String | HSA-id för enheten | 0..1 |
| reportId | IIType | Informationsspecifikation: Laboratoriesvar.laboratoriesvars-id / Root := Nationell OID för lokala id:n / Ext:= HSA-id för det system inom vilket svars-id är unikt. + ”:” svars-id. | 1..1 |
| reportId.root | String | Nationell OID för lokala ID:n: / 1.2.752.129.2.1.2.1 | 1..1 |
| reportId.extension | String | HSA-id för det system inom vilket svars-id är unikt. + ”:” svars-id. | 0..1 |
| testTime | TimeStampType | Informationsspecifikation: Provtagning.provtagningstidpunkt | 1..1 |
| observationTime | TimeStampType | Informationsspecifikation: 
Mikrobiologiskt fynd.observationstidpunkt | 1..1 |
| findingCode | CVType | Informationsspecifikation: 
Mikrobiologiskt fynd.agenskod / Kodverk: / NPU / Möjliga koder: ATCC09689 (Clostridium difficile) | 1..1 |
| findingCode.code | String | Koden för fyndet. Exempel: ATCC09689 | 0..1 |
| findingCode.codeSystem | String | OID för NPU kodverket | 0..1 |
| findingCode.codeSystemName | String | NPU | 0..1 |
| findingCode.codeSystemVersion | String | Versionsnumret för använt kodverk | 0..1 |
| findingCode.displayName | String | Textuell beskrivning av det som koden anger. Exempel: Clostridium difficile | 0..1 |
| Patient | PersonType | Informationsspecifikation: 
Patient | 1..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen. Felet beskrivs i elementet comment / INFO = Information finns om operationen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Detta tjänstekontrakt har inga övriga regler.

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

### DeleteLaboratoryReport
DeleteLaboratoryReport raderar information som tidigare har registrerats via tjänsten ProcessLaboratoryReport. Ett befintligt labsvar i Infektionsverktyget raderas genom att svars-id skickas via tjänsten. All information som har registrerats tillsammans med det identifierade labsvaret via tjänsten ProcessLabReport raderas helt i Infektionsverktyget.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| laboratoryReportId | IIType | Svars-id för det laboratoriesvar med tillhörande information som ska raderas. / Informationsspecifikation: Laboratoriesvar.svars-id | 1..1 |
| laboratoryReportId.root | String | Nationell OID för lokala ID:n: / 1.2.752.129.2.1.2.1 | 1..1 |
| laboratoryReportId.extension | String | HSA-id för det system inom vilket svars-id är unikt. + ”:” svars-id. | 0..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen. Felet beskrivs i elementet comment / INFO = Information finns om operationen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Detta tjänstekontrakt har inga övriga regler.

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

### ProcessCareEncounter
Detta tjänstekontrakt skriver vårdkontaktsdata. En vårdkontakt kan vara av arten noterat fenomen som rör en patients orsak till vårdkontakt, t.ex. bokat möte eller akut intag. Tjänsten registrerar ett eller flera nya vårdkotakter med tillhörande information. En vårdkontakt kan uppdateras genom att ett nytt meddelande med samma vårdkonataksid skickas in.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran |
| careEncounter | CareEncounterType |  | 1 |
| CareEncounterType.id | IIType | Ett unikt värde för själva vårdkontakten som också refererar till vilket källsystem informationen kommer ifrån. | 1 |
| CareEncounterType.id.root | String | Root blir då / nationell OID för lokala id:n: 1.2.752.129.2.1.2.1 | 1 |
| CareEncounterType.id.extension | String | Extension sätts till HSA-id för det system inom vilket careEncounterId är unikt + ”:” + själva ID. | 1 |
| CareEncounterType.type | CVType | Anger vilken typ av vårdkontakt det gäller. | 1 |
| CareEncounterType.type.code | String | Kod för vårdkontaktstyp. | 1 |
| CareEncounterType.type.codeSystem | String | Kodsystem för angiven kod. | 1 |
| CareEncounterType.type.codeSystemName | String | Namn för kodsystem. | 0..1 |
| CareEncounterType.type.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| CareEncounterType.type.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| CareEncounterType.time | TimePeriodType | Tidsperiod för vårdkontakten. / Består av TimeStampType intervallerna startTime respektive endTime. Vardera uttrycks med formatet ÅÅÅÅMMDDttmmss | 1 |
| CareEncounterType.time.start | TimeStampType | Startdatum. Format ÅÅÅÅMMDDttmmss. | 1 |
| CareEncounterType.time.end | TimeStampType | Slutdatum. Format ÅÅÅÅMMDDttmmss. | 0..1 |
| CareEncounterType.status | CVType | Anger vilken status vårdkontakten har. | 1 |
| CareEncounterType.status.code | String | Kod för vårdkontaktsstatus. | 1 |
| CareEncounterType.status.codeSystem | String | Kodsystem för angiven kod. | 1 |
| CareEncounterType.status.codeSystemName | String | Namn för kodsystem. | 0..1 |
| CareEncounterType.status.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| CareEncounterType.status.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| CareEncounterType.reason | String | Fritextbeskrivning där orsaken till vårdkontakten beskrivs. | 0..1 |
| location | LocationType |  | 0..1 |
| ../LocationType.id | IIType | Identifiering för platsen. Anges om platsen är en vårdenhet. | 0..1 |
| ../LocationType.id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| ../LocationType.id.extension | String | Extension sätts till HSA-id. | 1 |
| ../LocationType.name* | String | Namn på den plats där vårdkontakt har genomförts. / (Fält 2) | 1 |
| ../LocationType.address | AddressType | Platsens adress vilken vårdkontakten är knuten till. | 0..* |
| ../LocationType.address.purpose | CV | Beskriver adressens logiska platstyp, t.ex. hemmet, jobbet. | 0..1 |
| ../LocationType.address.purpose.code | String | Kod för platstyp. | 1 |
| ../LocationType.address.purpose.codeSystem | String | Kodsystem för angiven kod för adresstyp. Kan vara följande: / KV Healthcare Service Location (HL7) med OID / 2.16.840.1.113883.6.259 | 1 |
| ../LocationType.address.purpose.codeSystemName | String | Namn för kodsystem. | 0..1 |
| ../LocationType.address.purpose.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| ../LocationType.address.purpose.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| ../LocationType.address.purpose.value | AddressPartType | Själva adressen anges. | 1..* |
| ../LocationType.address.purpose.value. AddressPartType.value | String | Namn på adressdel som bygger upp addressrymden. | 1 |
| ../LocationType.address.purpose.value. AddressPartType.role | AddressPartTypeEnum | Enumeration baserat på KV HL7 v3: / AL = Adressrad (används för leveransadress, tilläggsinfo eller en gatuadress men ej leveransadress och gatuadress tillsammans) / ADL = Tillägg lokalisationsinfo (t.ex. våningsnr "3", lägenhetsnr "122") / UNIT = Definierar värdestypen för lokalisationsinfo (t.ex. "våning", "lägenhet") / UNID = Siffran eller namnet på värdestyp som kännetecknar byggnad eller fastighet (t.ex. "kvarteret Hälsan") / DAL = Leveransadressrad (tillåts inte stå i kombination med leveransadress och gatuadress) / DINSTA = Leveransområde (oftast en ort där leveransadressen skiljer sig från kommunorten) / DINSTQ = Leveransadressbenämning (t.ex. hisshall "B", "östra" receptionen) / DINST = Leveransadresstypen (t.ex. "hisshall", "receptionen") / DMOD = Leveranssätt (t.ex. "postutdelning", "postbox") / DMODID = Leveranssättbenämning (t.ex. postbox "2683") / SAL = Gatuadressrad (används frekvent då man inte vill bryta ned adressrymden i gatutyper, byggnadsnr etc.) / BNR = Byggnads- eller fastighetsnummer (används ej som gatunummer) / BNN = Den numeriska delen av byggnads- eller fastighetsnumret / BNS = Byggnads- eller fastighetsnummer suffix (t.ex. 12"B") / STR = Gatunamn (namnet samt typen av gatan) / STB = Gatunamnbasen (namnet på anknytande huvudgata utan riktning) / STTYP = Gatutypen (typen på gatan som berörs, t.ex. "gågata") / DIR = Riktning (t.ex. N, S, W, E) / INT = Korsning (anger att en korsning är anknuten berörd adress) / CAR = C/O (care of) adress / CEN = Områdes- kvartersbenämning (definierar område eller kvarter som berörd adress ligger i, t.ex. SoFo) / CNT = Land / CPA = Län / DEL = Skiljetecken (används för att särskilja text i adressrymden) / CTY = Postort / POB = Postbox / ZIP = Postnummer / PRE = Distriktsområde / STA = Region eller provins | 0..1 |
| ../LocationType.telecom | TelType | Platsens telefon och/eller mail adress för vilken den är knuten till vårdkontakten. / KV HL7 V3 TelecommunicationAddress (TEL) | 0..* |
| ../LocationType.telecom.use | TelTypeEnum | Enumeration baserat på KV HL7 v3: / voice = Nummer för att föra ett röstsamtal / fax = Faxnummer / data = E-post adress / sms = Nummer för mobila textmeddelanden | 0..1 |
| ../LocationType.telecom.value | String | Namn på alternativ för telekom kommunikation. | 0..1 |
| patient | PatientType |  | 1 |
| ../PatientType.id | IIType | Id för patienten. Skall anges med 12 tecken utan avskiljare. | 1 |
| ../PatientType.id.root | String | KV OID för typ av identifierare: / För personnummer används OID (1.2.752.129.2.1.3.1).
För samordningsnummer används OID (1.2.752.129.2.1.3.3).
För lokala reservnummer används OID (1.2.752.129.2.1.2.1) / Det finns en OID för nationella reservnummer (1.2.752.129.2.1.3.2). | 1 |
| ../PatientType.id.extension | String | Personnummer/globalt reservnummer/samordningsnummer. / För lokala reservnummer ska extension sättas till HSA-id för den enhet inom vilket ID:t i huvudklassen är unikt + ”:” + reservnummer. | 1 |
| ../PatientType.dateOfBirth | DateTime | Anger patientens födelseår, månad och dag. Månad och dag är frivilligt. Endast födelseår är obligatoriskt. Ej personnummer! / Datum. Format ÅÅÅÅMMDD. | 1 |
| ../PatientType.gender | CVType | Anger patientens kön. | 0..1 |
| ../PatientType.gender.code | String | Kod för könstyp. Antingen 0 för okänt, 1 för Kvinna, 2 för Man och 9 för Ej tillämpligt. | 1 |
| ../PatientType.gender.codeSystem | String | Kodsystem för angiven kod för könstyp. / KV. V-TIM OID: 1.2.752.129.2.2.1.1 | 1 |
| ../PatientType.gender.codeSystemName | String | Namn för kodsystem. | 0..1 |
| ../PatientType.gender.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| ../PatientType.gender.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| sourceSystem | SourceSystemType |  | 0..1 |
| ../SourceSystemType.id | IIType | HSA-id för källsystemet som genererat dokumentet. | 1 |
| ../SourceSystemType.id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| ../SourceSystemType.id.extension | String | Extension sätts till HSA-id för systemet | 1 |
| performerRole | PerformerRoleType |  | 1 |
| ../PerformerRoleType .id* | IIType | Personens identitet av utförarrollen som är unik inom källsystemet. / Lämnas tomt ifall vårdkontakten utförs av patienten själv eller annan person / HSAid skall anges ifall utföraren är en vårdpersonal. (Fält 2) | 0..1 |
| ../PerformerRoleType .id.root | String | Root sätts till OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| ../PerformerRoleType .id.extension | String | Extension sätts till HSA-id. | 1 |
| ../PerformerRoleType.Code | CVType | Beskriver utförarens roll. | 1 |
| ../PerformerRoleType.Code.code | String | Kod för utförarroll. | 1 |
| ../PerformerRoleType.Code.codeSystem | String | Kodsystem för angiven kod för utförartyp. Ska baseras på HL7 RoleCode med OID 2.16.840.1.113883.5.111 | 1 |
| ../PerformerRoleType.Code.codeSystemName | String | Namn för kodsystem. | 0..1 |
| ../PerformerRoleType.Code.codeSystemVersion | String | Versionsnummer för använt kodsystem. | 0..1 |
| ../PerformerRoleType.Code.displayName | String | Textuell beskrivning av det som koden anger. | 0..1 |
| ../PerformerRoleType.CareUnit | CareUnitType |  | 1 |
| ../../CareUnitType.id | IIType | HSAid för PDL vårdenhet som har medicinskt ansvar för observationen. | 1 |
| ../../CareUnitType.id.root | String | Root blir då / OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| ../../CareUnitType.id.extension | String | Extension sätts till HSA-id för vårdenheten | 1 |
| ../../CareUnitType.name | String | Vårdenhetens namn till vilken vårdkontakten är knuten. | 0..1 |
| ../../CareUnit.CareGiver | CareGiverType |  | 1 |
| ../../../CareGiverType.id | IIType | HSAid. Vårdgivarens identitet som enheten är anknuten till. | 1 |
| ../../../CareGiverType.id.root | String | Root blir då / OID för HSA-id: 1.2.752.129.2.1.4.1 | 1 |
| ../../../CareGiverType.id.extension | String | Extension sätts till HSA-id för vårdgivaren. | 1 |
| ../../ ../CareGiverType.name | String | Vårdgivarens namn till vilken enheten är knuten. | 0..1 |
| Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen. Felet beskrivs i elementet comment / INFO = Information finns om operationen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 2 – Plats för observation i egenskap av vårdprocess
Då observationen inkluderar PerformerRole.id dvs. involverar vårdpersonal ska minst Location.name anges. Detta för att eliminera risken för missförstånd att observationen ska ha skett vid samma plats som CareUnit tillhörigheten för den vårdpersonal som utfört observationen

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

### DeleteCareEncounter
DeleteCareEncounter raderar information som tidigare har registrerats via tjänsten ProcessCareEncounter. All information som har registrerats tillsammans med den identifierade vårdkontakten via tjänsten ProcessCareEncounter raderas helt.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- | :--- |
| Begäran | Begäran | Begäran | Begäran | Begäran |
| careEncounterId | IIType | careEncounterId för den vårdkontakt med tillhörande information som ska raderas. / Root := Nationell OID för lokala id:n. / Ext:= HSA-id för det system inom vilket vårdkontakt-id är unikt+”:”+vårdkontakt- id. | careEncounterId för den vårdkontakt med tillhörande information som ska raderas. / Root := Nationell OID för lokala id:n. / Ext:= HSA-id för det system inom vilket vårdkontakt-id är unikt+”:”+vårdkontakt- id. | 1..1 |
| careEncounterId.root | String | Root blir då / nationell OID för lokala id:n: 1.2.752.129.2.1.2.1 | Root blir då / nationell OID för lokala id:n: 1.2.752.129.2.1.2.1 |  |
| careEncounterId.extension | String | Extension sätts till HSA-id för det system inom vilket careEncounterId är unikt + ”:” + själva ID. | Extension sätts till HSA-id för det system inom vilket careEncounterId är unikt + ”:” + själva ID. |  |
| Svar | Svar | Svar | Svar | Svar |
| code | String | OK = operationen genomförd utan fel / ERROR = Fel vid operationen. Felet beskrivs i elementet comment / INFO = Information finns om operationen. Informationen beskrivs i elementet comment | OK = operationen genomförd utan fel / ERROR = Fel vid operationen. Felet beskrivs i elementet comment / INFO = Information finns om operationen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd operation. | Beskrivning av fel som uppstått alternativt information om genomförd operation. | 0..1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Detta tjänstekontrakt har inga övriga regler.

##### Icke funktionella krav
Detta tjänstekontrakt har inga övriga icke funktionella krav.

###### SLA-krav
Detta tjänstekontrakt har inga avvikande SLA-krav.

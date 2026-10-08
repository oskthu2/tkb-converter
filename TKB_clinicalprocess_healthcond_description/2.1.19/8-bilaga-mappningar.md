# 8 Bilaga Mappningar - clinicalprocess: healthcond: description 2.1 v2.1.19

* [**Table of Contents**](toc.md)
* **8 Bilaga Mappningar**

## 8 Bilaga Mappningar

## Bilaga Mappningar

Denna bilaga återger de tre Excel-bilagorna med mappningar som TKB:n hänvisar till som [R3], [R4] och [R5] ("Mappning mot dessa hittas i bilaga"). Bilagorna mappar meddelandeformatet mot NPÖ RIV 2.2.0 och HL7 v3 CDA (via Green CDA). Indrag i strukturkolumnerna motsvarar nivån i originalets trädstruktur. Alla flikar återges; originalfilerna kan laddas ned via länkarna nedan.

### Mappningar GetCareDocumentation

Referens R3. Originalfil: [Bilaga_Mappningar_GetCareDocumentation.xlsx](Bilaga_Mappningar_GetCareDocumentation.xlsx).

#### GetCareDocumentation: flik ”SendReferralAnswer CDA”

Kolumngrupper i originalet: Vårddokumentation CDA, Transformering, Green CDA.

| | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| CDA Header för vård- och omsorgsdokument |   | Not: Fält med * indikerar att det är en variabel |   |   |   |   |   |   |   |   |
|   |   |   |   |   |   | careDocumentation | CareDocumentationType |   |   |   |
| ClinicalDocument |   |   |   |   |   |   careDocumentationHeader | patientSummaryHeaderType |   |   |   |
|   typeId | 1..1 |   |   |   |   |   |   |   |   |   |
|     extension | 1..1 | POCD_HD000040 | Fast värde: indikerar att detta är ett CDA-dokument |   |   |   |   |   |   |   |
|     root | 1..1 | 2.16.840.1.113883.1.3 |   |   |   |   |   |   |   |   |
|   id | 1..1 |   | Id på vård- och omsorgsdokument. | vård- och omsorgsdokument.dokument-id | ClinicalDocument.id.extension = PatientSummaryHeaderType.documentID / ClinicalDocument.id.root = 1.2.752.129.2.1.2.1 |     documentID |   | string | 1..1 | Dokumentets identitet som är unik inom källsystemet |
|     extension | 1..1 | * | Unik identifierare för aktuellt informationsobjekt. |   |   |   |   |   |   |   |
|     root | 1..1 | 1.2.752.129.2.1.2.1 | Exemplevis OID för Icke-nationell identifierare Org+lokalt unikt id |   |   |   |   |   |   |   |
|   code | 1..1 |   |   |   |   |   |   |   |   |   |
|     code | 1..1 | R-42BAC | Fast värde:sätts till "Kliniskt dokument" (R-42BAC) |   |   |   |   |   |   |   |
|     codeSystem | 1..1 | 2.16.840.1.113883.6.96 | Fast värde; Kodsystemet är SNOMED CT (2.16.840.1.113883.6.96) |   |   |   |   |   |   |   |
|   |   |   |   | informationsmängd.systemid |   |     sourceSystem | HSAidType |   | 1..1 | HSAid för det system som dokumentet är skapat i. |
|   title | 0..1 | * | Ttitel på dokumentet. | Vård- och omsorgsdokument.dokumentnamn | ClinicalDocument.title = PatientSummaryHeaderType.documentTitle |     documentTitle |   | string | 0..1 | Titel som beskriver den information som sänds i dokumentet. |
|   effectiveTime | 1..1 |   | Tidpunkt då dokument skapades |   |   |   |   |   |   |   |
|     value | 1..1 | * | Format YYYYMMDDHHMMSS | vård-och omsorgsdokument.händelsetidpunkt | ClinicalDocument.effektiveTime.value = PatientSummaryHeaderType.documentTime |     documentTime | TimeStampType | string | 0..1 | Händelsetidpunkt. Tidsangivelse för den händelse dokumentet gäller. |
|   confidentialityCode | 1..1 |   |   |   |   |   |   |   |   |   |
|     code | 1..1 | N | Fast värde, anger Normal sekretesshantering |   |   |   |   |   |   |   |
|     codeSystem | 1..1 | 2.16.840.1.113883.5.25 |   |   |   |   |   |   |   |   |
|   recordTarget | 1..1 |   | Information om patienten |   |   |   |   |   |   |   |
|     patientRole | 1..1 |   |   |   |   |   |   |   |   |   |
|       id | 1..1 |   |   |   | clinicalDocument.id.extention =PatientSummaryHeaderType.patientID.id / clinicalDocument.id.root = PatientSummaryHeaderType.patientID.type |     patientId | PatientIdType | id / type | 1.1 | Id för patienten. / id sätts till patientens identifierare. / Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) |
|         extension | 1..1 | * | Id på patienten. | vård- och omsorgstagare.person-id |   |   |   |   |   |   |
|         root | 1..1 | * | Typ av personidentifierare. Bland tillåtna typer finns: personnummer (1.2.752.129.2.1.3.1), samordningsnummer (1.2.752.129.2.1.3.3), reservnummer SLL (1.2.752.97.3.1.3) |   |   |   |   |   |   |   |
|   author | 1..1 |   | Person som skapat vård- och omsorgsdokumentet |   |   |     author | AuthorType |   | 1..1 | Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. |
|     time | 1..1 |   | Tidpunkt då dokumentet skapades |   |   |   |   |   |   |   |
|       value | 1..1 | * | Format YYYYMMDDHHMMSS | vård-och omsorgsdokument.registreringstidpunkt | clinicalDocument.author.time.value = PatientSummaryHeaderType.author.authorTime |       authorTime | TimeStampType | string | 1..1 | Tidpunkt då dokumentet skapades. .Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. |
|     assignedAuthor | 1..1 |   |   |   |   |   |   |   |   |   |
|       id | 1..1 |   | HSA för författare |   |   |   |   |   |   |   |
|         extension | 1..1 | * | HSA-id för författaren, RIV:vård- och omsorgspersonal.personal-id | vård-och omsorgsdokument.personal-id | clinicalDocument.author.assignedAuthor.id.extension = PatientSummaryHeaderType.authot.authorHSAID / clinicalDocument.author.assignedAuthor.id.root = 1.2.752.129.2.1.4.1 |       authorHSAid | HSAIdType | string | 1..1 | Författarens HSA-id |
|         root | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde, OID för HSA (1.2.752.129.2.1.4.1) |   |   |   |   |   |   |   |
|       code | 0..1 |   | Befattningskod | vård-och omsorgsdokument.befattning | clinicalDocument.author.assignedAuthor.code.code = PatientSummaryHeaderType.author.authorRoleCode / clinicalDocument.author.assignedAuthor.code.codeSystem = 1.2.752.129.2.2.1.4 / clinicalDocument.author.assignedAuthor.code.displayName sätts till klartext av authorRoleCode från KV befattning |       authorRoleCode |   | string | 0..1 | Kod för författarens befattning. Tillåtna värden från kodverk Befattning (OID 1.2.752.129.2.2.1.4) , se http://www.inera.se/Documents/Infrastrukturtjanster/Katalogtjanst_HSA/Innehll/hsa_innehall_befattning.pdf / I de fall inte KV Befattning kan användas kan authorOtherRole användas för att ange befattning enligt annat kodverk |
|         code | 1..1 | * | Kod för befattning, RIV: Vård- och omsorgspersonal.befattning. |   |   |       authorOtherRole |   |   | 0..1 | Information om författarens befattning om annat kodverk än KV Befattning används |
|         codeSystem | 1..1 | 1.2.752.129.2.2.1.4 | Fast värde OID för kodverk (KV) Befattning (1.2.752.129.2.2.1.4) |   |   |         authorOtherRoleCode |   | string | 1..1 | Kod för författarens befattning enligt annat kodverk |
|         displayName | 0..1 | * |   |   |   |         authorOtherRoleCodeOID |   | string | 1..1 | OID för det kodverk som används för författarens befattning |
|       assignedPerson | 0..1 |   |   |   |   |   |   |   |   |   |
|         name | 0..1 | * | Optional Namn på författare. | Vård- och omsorgspersonal.namn | clinicalDocument.author.assignedAuthor.assignedPerson.name = PatientSummaryHeader.author.authorName |       authorName |   | string | 0..1 | Författarens namn |
|   |   |   |   | enhet.enhets-id |   |       authorOrgUnitHSAid | HSAIdType | string | 1..1 | Den organisation som författaren är uppdragstagare på |
|   |   |   |   | enhet.enhetsnamn |   |       authorOrgUnitname |   | string | 1..1 | Namnet på den organisation som författaren är updragsgivare på |
|   |   |   |   | enhet.postadress |   |       authorOrgUnitAddress |   | string | 0..1 | Postadress för den organisation som författaren är uppdragsgivare på. |
|       representedOrganization | 1..1 |   |   |   |   |   |   |   |   |   |
|         id | 1..1 |   | Id för den enhet där den som är författare är uppdragstagare. | Informationsmängd.ägande vårdenhets-id | clinicalDocument.author.assignedAuthor.representedOrganization.id.extention = PatientSummaryHeader.author.careUnitHSAid / clinicalDocument.author.assignedAuthor.representedOrganization.id.root = 1.2.752.129.2.1.4.1 |       careUnitHSAid |   | string | 1..1 | HSA-id för PDL-enhet |
|           extension | 1..1 | * | HSA-id för organisation, |   |   |   |   |   |   |   |
|           root | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde OID för HSA (1.2.752.129.2.1.4.1) |   |   |   |   |   |   |   |
|         addr | 0..1 | * | Adress till enhet. |   |   |   |   |   |   |   |
|         asOrganizationPartOf | 1..1 |   | Information om vårdgivare |   |   |   |   |   |   |   |
|           wholeOrganization | 1..1 |   |   |   |   |   |   |   |   |   |
|             id | 1..1 |   | Id för vårdgivare |   |   |   |   |   |   |   |
|               extension | 1..1 | * | HSA-id för vårdgivare. | Informationsmängd.ägande vårdgivare-id | clinicalDocument.author.assignedAuthor.representedOrganization.asOrganizationPartOf.wholeOrganization.id.extention = PatientSummaryHeader.author.careGiverHSAid / clinicalDocument.author.assignedAuthor.representedOrganization.asOrganizationPartOf.wholeOrganization.id.root = 1.2.752.129.2.1.4.1 |       careGiverHSAid | HSAIdType | string | 1..1 | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för |
|               root | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde OID för HSA (1.2.752.129.2.1.4.1) |   |   |   |   |   |   |   |
|   custodian | 1..1 |   | Information om PDL-enhet som har ägandeskap över informationen |   |   |   |   |   |   |   |
|     assignedCustodian | 1..1 |   |   |   |   |   |   |   |   |   |
|       representedCustodianOrganization | 1..1 |   |   |   |   |   |   |   |   |   |
|         id | 1..1 |   | Ägande PDL-enhet |   |   |   |   |   |   |   |
|           extension | 1..1 | * | HSA-id för PDL-enhet. |   |   |   |   |   |   |   |
|           root | 1..1 | 1.2.752.129.2.1.4.1 | fast värde OID för HSA (1.2.752.129.2.1.4.1) |   |   |   |   |   |   |   |
|   legalAuthenticator | 0..1 |   | Information om signering |   |   |     legalAuthenticator | LegalAuthenticatorType |   | 0..1 | Information om vem som signerat informationen i dokumentet. |
|     time | 1..1 |   |   |   |   |   |   |   |   |   |
|       value | 1..1 | * | Tidpunkt för signering, format YYYYMMDDHHMMSS. | Vård- och omsorgsdokument.signeringstidpunkt | clinicalDocument.legalAuthenticator.time = PatientSummaryHeader.legalAuthenticator.signatureTime |       signatureTime | TimeStampType | string | 1..1 | Tidpunkt för signering. |
|     signatureCode | 1..1 |   |   |   |   |   |   |   |   |   |
|       code | 1..1 | S |   |   |   |   |   |   |   |   |
|     assignedEntity | 0..1 |   | Information om person som signerat dokument | ingen mappning | clinicalDocument.legalAuthenticator.assignedEntity.id.extension = PatientSummaryHeader.legalAuthenticator.legalAuthenticatorHSAid / clinicalDocument.legalAuthenticator.assignedEntity.id.root = 1.2.752.129.2.1.4.1 |       legalAuthenticatorHSAid | HSAIDType |   | 0..1 | HSA-id för person som signerat dokumentet |
|       id | 1..1 |   | HSA id för signerande person. Motsvarighet i RIV saknas |   |   |   |   |   |   |   |
|         extension | 1..1 | * | HSA-id för signerande person |   |   |   |   |   |   |   |
|         root | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde OID för HSA (1.2.752.129.2.1.4.1) |   |   |   |   |   |   |   |
|       representedOrganization | 1..1 |   |   |   |   |   |   |   |   |   |
|         id | 1..1 |   | Id för den enhet där den som är signerare är uppdragstagare. Motsvarighet i RIV saknas |   |   |   |   |   |   |   |
|           extension | 1..1 | * | HSA för organisation |   |   |   |   |   |   |   |
|           root | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde OID för HSA (1.2.752.129.2.1.4.1) |   |   |   |   |   |   |   |
|   authorization | 0..* |   | Information om tillgänglighet av information, exempelvis att information kan ges till patient. Motsvarighet finns ej i RIV | ingen mappning | Om approvedForPatient är true skapas clinicalDocument.authorization samt sätts clinicalDocument.authorization.consent.code till "P0.00790" samt .codeSystem till "2.16.840.1.113883.6.96" / Om approvedForPatient är false skapas ej clinicalDocument.authorization |     approvedForPatient |   | boolean | 1..1 | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. |
|     consent | 1..1 |   |   |   |   |   |   |   |   |   |
|       code | 1..1 |   | Kod som anger typ på menprövning. Motsvarighet i RIV saknas |   |   |   |   |   |   |   |
|         code | 1..1 | * | Kod som anger typ av tillgänglighet. Tillåtna värden är P0-00790 för Information till Patient (att information är tillgänglig till patient kan ha föregåtts av menprövning) |   |   |   |   |   |   |   |
|         codeSystem | 1..1 | 2.16.840.1.113883.6.96 | OID för Snomed CT |   |   |   |   |   |   |   |
|         statusCode | 1..1 |   |   |   |   |   |   |   |   |   |
|           code | 1..1 | completed |   |   |   |   |   |   |   |   |
|   componentOf | 0..1 |   | Information om Vård- och omsorgskontakt som föranlett vårddokumentation. <componentOf> utesluts helt om Vård- och omsorgskontakt saknas |   |   |   |   |   |   |   |
|     encompassingEncounter | 1..1 |   |   | Vård- och omsorgsdokument.skapas vid.Vård- och omsorgskontakt.kontakt-id. | clinicalDocument.componentOd.encompassingEncounter.id.extension = PatientSummaryHeader.careContactID / clinicalDocument.componentOd.encompassingEncounter.id.root = 1.2.752.129.2.1.2.1 |     careContactID |   | string | 0..1 | Identitet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet |
|       id | 1..1 |   | Id på vård- och omsorgskontakt |   |   |   |   |   |   |   |
|         extension | 1..1 | * | Unik identifierare för vård- och omsorgskontakt. |   |   |   |   |   |   |   |
|         root | 1..1 | 1.2.752.129.2.1.2.1 |   |   |   |   |   |   |   |   |
|       effectiveTime | 1..1 |   |   |   |   |   |   |   |   |   |
|         value | 1..1 | null | Sätts till null, nullflavor NA |   |   |   |   |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |
|   CDA Body |   |   |   |   |   |   careDocumentationBody | CareDocumentationBodyType |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |
|   component | 1..1 |   |   |   |   |   |   |   |   |   |
|     structuredBody | 1..1 |   |   |   |   |   |   |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |
|   Sektion för vårddokumentation |   |   |   |   |   |   |   |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |
|       component | 1..1 |   | I varje CDA skickas ett vård- och omsorgsdokument |   |   |     clinicalDocumentNote | ClinicalDocumentNoteType |   | 1..1 | Dokument/anteckning |
|         section | 1..1 |   |   |   |   |   |   |   |   |   |
|           code | 1..1 |   | Typ av vård- och omsorgsdokumentation | Vård- och omsorgsdokument.anteckningstyp | …section.code.code = careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteCode / …section.code.codeSystem = 1.2.752.97.3.1.11 |       clinicalDocumentNoteCode | ClinicalDocumentNoteCodeEnum | string | 1..1 | Typ av vård- och omsorgsdokument. Kod tas från KV Anteckningstyp (1.2.752.129.2.2.2.11). / Tillåtna värden är: / utr = Utredning, atb = åtgärd/Behandling, sam = Sammanfattning, sao = Samordning, ins = Inskrivning, slu = Slutanteckning, auf = Anteckning utan fysiskt möte, sva = Slutenvårdsanteckning, bes = Besöksanteckning. |
|             code | 1..1 | * | Kod för typ av anteckning. Tillåtna värden från kodverk Anteckningstyp: utr = Utredning, atb = åtgärd/Behandling, sam = Sammanfattning, sao = Samordning, ins = Inskrivning, slu = Slutanteckning, auf = Anteckning utan fysiskt möte, sva = Slutenvårdsanteckning, bes = Besöksanteckning. |   |   |   |   |   |   |   |
|             codeSystem | 1..1 | 1.2.752.97.3.1.11 | OID för KV Anteckningstyp (1.2.752.129.2.2.2.11). |   |   |   |   |   |   |   |
|           title | 0..1 | * | Titel på dokument. | Vård- och omsorgsdokument.dokumentnamn | …section.title = careDocumentBody.clinicalDocumementNote.cliniclaDocumentNoteTitle |       clinicalDocumentNoteTitle |   | string | 0..1 | Titel på dokument |
|           text | 1..1 | * | Själva anteckningen, här läggs texten | Vård- och omsorgsdokument.innehåll text | …section.text = careDocumentBody.clinicalDocumementNote.cliniclaDocumentNoteText |       clinicalDocumentNoteText |   | string | 0..1 | Dokumentets innehåll i text. . Något av clinicalDocumentNoteText eller multimediaEntry ska vara ifyllt. |
|             renderMultiMedia | 0..* |   | Platshållare för bifogad anteckning i mime-format. Används endast om mulitmedia skickas med i dokumentet. |   |   |   |   |   |   |   |
|               referencedObject | 1..1 | * | För varje multimediaobjekt i meddelandet skapas en <renderMultiMedia> med tillhörande <observationMedia>, där referencedObjekt har unik identitet (exempelvis MM1, MM2, MM3 osv |   |   |   |   |   |   |   |
|           entry | 0..* |   | Sektionen <entry> används endast om multimedia skickas med i dokumentet och <renderMultiMedia> ovan är angiven. Varje <renderMultiMedia> ovan motsvaras av en <entry> | Vård- och omsorgsdokument.innehåll multimedia | För varje careDocumentBody.multimediaEntry skapas en …section.entry |       multimediaEntry | MultimediaEntryType |   | 0..1 | Dokumentets innehåll i form av en multimediaobjekt, i form av antingen ett inbäddat objekt eller en länk till objektet. Något av clinicalDocumentNoteText eller multimediaEntry ska vara ifyllt. |
|             observationMedia | 1..1 |   |   |   |   |   |   |   |   |   |
|               classCode | 1..1 | OBS |   |   |   |   |   |   |   |   |
|               moodCode | 1..1 | EVN |   |   |   |   |   |   |   |   |
|               Id | 1..1 | * | ID sätts till samma ID som angivits i referencedObject i <renderMultimedia> ovan |   | …section.entry.observationMedia.id = careDocumentBody.multimediaEntry.id |         id |   | string | 1..1 | Varje multimediaobjekt ska ha en i dokumentet unik identitet. Denna identitet kan användas som referens i platshållare i clinicalDocumentText. / Använd identitet MM1, MM2, MM3 och så vidare. |
|               value | 1..1 | ED | Lämplig mime-typ |   | …section.entry.observationMedia.value.mediaType = careDocumentBody.multimediaEntry.mediatype |         mediaType | MediaTypeEnum | string | 1..1 | Typ av multimedia |
|                 xsi:type | 1..1 | ED |   |   | …section.entry.observationMedia.value = careDocumentBody.multimediaEntry.value |         value | base64Binary | string | 0..1 | Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges. |
|                 mediaType | 1..1 | * | Anger lämplig mime-typ, exempelvis "image/jpeg" |   | …section.entry.observationMedia.reference = careDocumentBody.multimediaEntry.reference |         reference |   | string | 0..1 | Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges |
|                 reference | 0..1 | * | Länk till dokumentets innehåll i form av en multimediafil. |   |   |   |   |   |   |   |
|   | 0..1 | * | Kodat multimediainnehåll |   |   |   |   |   |   |   |

#### GetCareDocumentation: flik ”Instruktion för greening”

| | | |
| :--- | :--- | :--- |
| clinicalDocument.code / extension sätts till "R-42BAC" / root sätts till 2.16.840.1.113883.6.95 | motsvarande fält finns ej i grön | Koden i CDA anger att det är ett kliniskt dokument |
| clinicalDocument.encompassningEncounter.id / extension sätts till systemid + lokalt unikt id / root sätts till 1.2.752.129.2.1.2.1 | encounterID sätts till lokalt unikt id | I grön CDA anges inte den OID som anges i CDA. Värdet i CDA är kombination av systemets id konkatenerat med lokalt unikt id som återfinns i encounterID i grönt CDA |

### Mappningar GetDiagnosis

Referens R4. Originalfil: [Bilaga_Mappningar_GetDiagnosis.xlsx](Bilaga_Mappningar_GetDiagnosis.xlsx).

#### GetDiagnosis: flik ”SendReferralAnswer CDA”

Kolumngrupper i originalet: Diagnos CDA, Transformering, Green CDA.

| | | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| CDA Header för Diagnos |   |   | Not: Fält med * indikerar att det är en variabel |   |   |   |   |   |   |   |   |
|   |   |   |   |   |   |   | diagnosis | DiagnosisType |   |   |   |
| ClinicalDocument |   |   |   |   |   |   |   diagnosisHeader | PatientSummaryHeaderType |   |   |   |
|   typeId | II | 1..1 |   |   |   |   |   |   |   |   |   |
|     extension |   | 1..1 | POCD_HD000040 | Fast värde: indikerar att detta är ett CDA-dokument |   | ClinicalDocument.typeId.extension = POCD_HD000040 |   |   |   |   |   |
|     root |   | 1..1 | 2.16.840.1.113883.1.3 |   |   | ClinicalDocument.typeId.root = 2.16.840.1.113883.1.3 |   |   |   |   |   |
|   id | II | 1..1 |   | Id på diagnosdokumentet |   |   |   |   |   |   |   |
|     extension |   | 1..1 | * | Unik identifierare för aktuellt informationsobjekt (diagnosdokument). / Globalt unik identitet, skapas genom konkatenering av Systemets HSA-id och ett lokalt unikt id. | diagnos.diagnos-id | ClinicalDocument.id.extension = diagnosisHeader.documentId |     documentId |   | string | 1..1 | Dokumentets identitet som är globalt unik. / I fall där dokumentets identitet som det anges i det lokala systemet inte är globalt unik, kan identiteten som anges i documentId bestå av en sträng bestående av källsystemets HSAId konkatenerat med dokumentets identitet. |
|     root |   | 1..1 | 1.2.752.129.2.1.2.1 | Föreslagen OID för för Icke-nationell identifierare Org+lokalt unikt id (1.2.752.129.2.1.2.1) |   | ClinicalDocument.id.root = 1.2.752.129.2.1.2.1 |   |   |   |   |   |
|   code |   | 1..1 |   |   |   |   |   |   |   |   |   |
|     code |   | 1..1 | 439401001 | Fast kod |   | ClinicalDocument.code.code = 439401001 |   |   |   |   |   |
|     displayName |   | 1..1 | Diagnos | Fast värde |   | ClinicalDocument.code.displayName = Diagnos |   |   |   |   |   |
|     codeSystem |   | 1..1 | 2.16.840.1.113883.6.96 | Fast värde; Kodsystemet är SNOMED CT (2.16.840.1.113883.6.96) |   | ClinicalDocument.code.codeSystem = 2.16.840.1.113883.6.96 |   |   |   |   |   |
|   |   |   |   |   |   |   |     sourceSystemHSAId | HSAIdType |   | 1..1 | HSAid för det system som dokumentet är skapat i. |
|   effectiveTime |   | 1..1 |   | Tidpunkt då informationen om diagnosen lagrades i källsystemet |   |   |   |   |   |   |   |
|     value |   | 1..1 | * | Format ÅÅÅÅMMDDttmmss | diagnos.registreringstidpunkt | ClinicalDocument.effektiveTime.value = diagnosisHeader.accountableHealthcareProfessional.authorTime |   |   |   |   |   |
|   confidentialityCode |   | 1..1 |   |   |   |   |   |   |   |   |   |
|     code |   | 1..1 | N | Fast värde, anger Normal sekretesshantering |   | ClinicalDocument.confidentialityCode.code = N |   |   |   |   |   |
|     codeSystem |   | 1..1 | 2.16.840.1.113883.5.25 |   |   | ClinicalDocument.confidentialityCode.codeSystem = 2.16.840.1.113883.5.25 |   |   |   |   |   |
|   recordTarget |   | 1..1 |   | Information om patienten |   |   |   |   |   |   |   |
|     patientRole |   | 1..1 |   |   |   |   |   |   |   |   |   |
|       id | II | 1..1 |   |   |   |   |     patientId | PersonIdType |   | 1..1 | Id för patienten. |
|         extension |   | 1..1 | * | Id på patienten. | vård- och omsorgstagare.person-id | clinicalDocument.recordTarget.PatientRole.id.extention = diagnosisHeader.patientId.id |       id |   | string | 1..1 | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. |
|         root |   | 1..1 | * | Typ av personidentifierare. Bland tillåtna typer finns: personnummer (1.2.752.129.2.1.3.1), samordningsnummer (1.2.752.129.2.1.3.3), reservnummer SLL (1.2.752.97.3.1.3), nationellt reservnummer (1.2.752.129.2.1.3.2) |   | clinicalDocument.recordTarget.PatientRole.id.root = diagnosisHeader.patientId.type |       type |   | string | 1..1 | Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) |
|   author |   | 1..1 |   | Person som skapat vård- och omsorgsdokumentet |   |   |     accountableHealthcareProfessional | HealthcareProfessionalType |   | 1..1 | Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallad författare. |
|     time |   | 1..1 |   | Tidpunkt då dokumentet skapades |   |   |   |   |   |   |   |
|       value |   | 1..1 | * | Format ÅÅÅÅMMDDttmmss | diagnos.registreringstidpunkt | clinicalDocument.author.time.value = diagnosisHeader.accountableHealthcareProfessional.authorTime |       authorTime | TimeStampType | string | 1..1 | Tidpunkt då dokumentet skapades |
|     assignedAuthor |   | 1..1 |   |   |   |   |   |   |   |   |   |
|       id | II | 1..1 |   | HSA för författare |   |   |   |   |   |   |   |
|         extension |   | 1..1 | * | HSA-id för författaren. Om HSAid saknas, anges nullvärde med nullflavor = UNK. | vård- och omsorgspersonal.personal-id | clinicalDocument.author.assignedAuthor.id.extension = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId |       healthcareProfessionalHSAId | HSAIdType | string | 0..1 | Författarens HSA-id |
|         root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde, OID för HSA (1.2.752.129.2.1.4.1) |   | clinicalDocument.author.assignedAuthor.id.root = 1.2.752.129.2.1.4.1 |       healthcareProfessionalName | string |   | 0..1 | Namn på vård- och omsorgspersonal. Om tillgängligt skall detta anges. |
|       code |   | 0..1 |   | Befattningskod |   |   |       healthcareProfessionalRoleCode | CVType |   | 0..1 | Information om personens befattning. Om möjligt skall KV Befattning (OID 1.2.752.129.2.2.1.4). |
|         code |   | 0..1 | * | Kod för befattning, | vård- och omsorgspersonal.befattning | clinicalDocument.author.assignedAuthor.code.code = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.code |         code |   | string | 0..1 | Befattningskod. Om code anges skall också codeSystem samt displayName anges. |
|         codeSystem |   | 0..1 | * | Kodverk för befattning. Om möjligt OID för kodverk (KV) Befattning (1.2.752.129.2.2.1.4) |   | clinicalDocument.author.assignedAuthor.code.codeSystem = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.codeSystem (om tillgängligt). / Annars: clinicalDocument.author.assignedAuthor.code.codeSystem = 1.2.752.129.2.2.1.4 |         codeSystem |   | string | 0..1 | Kodsystem för befattningskod. Om codeSystem anges skall också code samt displayName anges. |
|         displayName |   | 0..1 | * | Befattningen i klartext. |   | clinicalDocument.author.assignedAuthor.code.displayName = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.displayName |         codeSystemName |   | string | 0..1 | Namn på kodsystem för befattningskod. |
|         codeSystemName |   | 0..1 | * | Namn på kodsystem för befattningskod. |   | clinicalDocument.author.assignedAuthor.code.codeSystemName = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.codeSystemName |         codeSystemVersion |   | string | 0..1 | Version på kodsystem för befattningskod. |
|         codeSystemVersion |   | 0..1 | * | Version på kodsystem för befattningskod. |   | clinicalDocument.author.assignedAuthor.code.codeSystemVersion = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.codeSystemVersion |         displayName |   | string | 0..1 | Befattningskoden i klartext. Om separat displayName inte finns i producerande system skall samma värde som i code anges. |
|         originalText |   | 0..1 | * | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. |   | clinicalDocument.author.assignedAuthor.code.originalText = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.originalText |         originalText |   | string | 0..1 | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges skall inget annat värde i healthcareProfessionalRoleCode anges. |
|       assignedPerson |   | 0..1 |   |   |   |   |   |   |   |   |   |
|         name |   | 0..1 | * | Namn på författare. | vård- och omsorgspersonal.namn | clinicalDocument.author.assignedAuthor.assignedPerson.name = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName |   |   |   |   |   |
|       representedOrganization |   | 1..1 |   |   |   |   |       healthcareProfessionalOrgUnit | OrgUnitType |   | 0..1 | Den organisation som författaren är uppdragsgivare på |
|         id | II | 1..1 |   | Id för den enhet där den som är författare är uppdragstagare. |   |   |   |   |   |   |   |
|           extension |   | 1..1 | * | HSA-id för organisation | enhet.enhets-id | clinicalDocument.author.assignedAuthor.representedOrganization.id.extention = diagnosisHeader.accountableHealthcareProfessional.careUnitHSAid |         orgUnitHSAId | HSAIdType |   | 0..1 | HSA-id för organisationsenhet. |
|           root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde OID för HSA |   | clinicalDocument.author.assignedAuthor.representedOrganization.id.root = 1.2.752.129.2.1.4.1 |   |   |   |   |   |
|         name |   | 0..1 | * |   | enhet.enhetsnamn | clinicalDocument.author.assignedAuthor.representedOrganization.name = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName |         orgUnitName |   | string | 0..1 | Namnet på den organisation som författaren är uppdragstagare på |
|         telecom | SET<TEL> | 0..1 |   | Skapas bara om orgUnitTelecom har angivits. |   | Skapas bara om orgUnitTelecom har angivits. |   |   |   |   |   |
|           value |   | 1..1 | "tel:"+* | Strängen "tel:" konkatenerat med angivet orgUnitTelecom-värde. | enhet.telefonnummer | clinicalDocument.author.assignedAuthor.representedOrganization.telecom.value = "tel:" + diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom |         orgUnitTelecom |   | string | 0..1 | Telefon till organisationsenhet |
|         telecom | SET<TEL> | 0..1 |   | Skapas bara om orgUnitEmail har angivits. |   | Skapas bara om orgUnitEmail har angivits. |   |   |   |   |   |
|           value |   | 1..1 | "mailto:"+* | Strängen "mailto:" konkatenerat med angivet orgUnitEmail-värde. | enhet.epost-adress | clinicalDocument.author.assignedAuthor.representedOrganization.telecom.value = "mailto:" + diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail |         orgUnitEmail |   | string | 0..1 | Epost till enhet |
|         addr |   | 0..1 | * | Adress till enhet. | enhet.postadress | clinicalDocument.author.assignedAuthor.representedOrganization.addr = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress |         orgUnitAddress |   | string | 0..1 | Postadress för den organisation som författaren är uppdragstagare på |
|         asOrganizationPartOf |   | 1..1 |   | Information om vårdgivare |   |   |         orgUnitLocation |   | string | 0..1 | Text som anger namnet på plats eller ort för organisationens fysiska placering |
|           wholeOrganization |   | 1..1 |   |   |   |   |   |   |   |   |   |
|             id | II | 1..1 |   |   |   |   |       healthcareProfesssionalCareUnitHSAId | HSAIdType | string | 0..1 | HSA-id för PDL-enhet |
|               extension |   | 1..1 | * | HSA-id för vårdgivare. | informationsmängd.ägande vårdgivare-id | clinicalDocument.author.assignedAuthor.representedOrganization.asOrganizationPartOf.wholeOrganization.id.extention = diagnosisHeader.accountableHealthcareProfessional.careGiverHSAid |   |   |   |   |   |
|               root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde OID för HSA |   | clinicalDocument.author.assignedAuthor.representedOrganization.asOrganizationPartOf.wholeOrganization.id.root = 1.2.752.129.2.1.4.1 |   |   |   |   |   |
|   custodian |   | 1..1 |   | Information om PDL-enhet som har ägandeskap över informationen |   |   |       healthcareProfessionalCareGiverHSAId | HSAIdType | string | 0..1 | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för |
|     assignedCustodian |   | 1..1 |   |   |   |   |   |   |   |   |   |
|       representedCustodianOrganization |   | 1..1 |   |   |   |   |   |   |   |   |   |
|         id | II | 1..1 |   | Ägande PDL-enhet |   |   |   |   |   |   |   |
|           extension |   | 1..1 | * | HSA-id för PDL-enhet | informationsmängd.ägande vårdenhets-id | ClinicalDocument.custodian.assignedCustodian.representedCustodianOrganization.id.extension = diagnosisHeader.accountableHealthcareProfessional.careUnitHSAid |   |   |   |   |   |
|           root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde OID för HSA |   | ClinicalDocument.custodian.assignedCustodian.representedCustodianOrganization.id.root = 1.2.752.129.2.1.4.1 |   |   |   |   |   |
|   legalAuthenticator |   | 0..1 |   | Information om signering |   |   |   |   |   |   |   |
|     time | TS | 1..1 |   |   |   |   |   |   |   |   |   |
|       value |   | 1..1 | * | Tidpunkt för signering, format ÅÅÅÅMMDDttmmss. | diagnos.signeringstidpunkt | clinicalDocument.legalAuthenticator.time.value = diagnosisHeader.legalAuthenticator.signatureTime |     legalAuthenticator | LegalAuthenticatorType |   | 0..1 | Information om vem som signerat informationen i dokumentet. |
|     signatureCode |   | 1..1 |   |   |   |   |   |   |   |   |   |
|       code |   | 1..1 | S |   |   | clinicalDocument.legalAuthenticator.signatureCode.code = S |       signatureTime | TimeStampType | string | 1..1 | Tidpunkt för signering. |
|     assignedEntity |   | 0..1 |   |   |   |   |   |   |   |   |   |
|       id | II | 1..1 |   | HSA id för signerande person. Om HSAid saknas, anges nullvärde med nullflavor = UNK. | Motsvarighet i RIV saknas |   |   |   |   |   |   |
|         extension |   | 1..1 | * | HSA-id för signerande person |   | clinicalDocument.legalAuthenticator.assignedEntity.id.extension = diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId |       legalAuthenticatorHSAId | HSAIdType |   | 0..1 | HSA-id för person som signerat dokumentet |
|         root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde, OID för HSA |   | clinicalDocument.legalAuthenticator.assignedEntity.id.root = 1.2.752.129.2.1.4.1 |       legalAuthenticatorName | string |   | 0..1 | Namnen i klartext för den signerande personen |
|       representedOrganization |   | 0..1 |   |   |   |   |   |   |   |   |   |
|         id | II | 1..1 |   | Id för den enhet där den som är signerare är uppdragstagare. | Motsvarighet i RIV saknas |   |   |   |   |   |   |
|           extension |   | 1..1 | * | HSA för organisation |   | clinicalDocument.legalAuthenticator.assignedEntity.representedOrganization.id.extention = diagnosisHeader.author.careUnitHSAid |   |   |   |   |   |
|           root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde, OID för HSA |   | clinicalDocument.legalAuthenticator.assignedEntity.representedOrganization.id.root = 1.2.752.129.2.1.4.1 |   |   |   |   |   |
|       assignedPerson |   | 0..1 |   | assignedPerson skapas enbart om diagnosisHeader.legalAuthenticator.legalAuthenticatorName är angivet. |   | Om legalAuthenticatorName är angivet skapas assignedPerson, annars inte. |   |   |   |   |   |
|         name | PN | 1..1 | * |   |   | clinicalDocument.legalAuthenticator.assignedEntity.assignedPerson.name = diagnosisHeader.legalAuthenticator.legalAuthenticatorName |   |   |   |   |   |
|   authorization |   | 0..1 |   | Information om tillgänglighet av information, exempelvis att information kan ges till patient. | Motsvarighet i RIV saknas | Om approvedForPatient är true skapas clinicalDocument.authorization. Om approvedForPatient är false skapas ej clinicalDocument.authorization |   |   |   |   |   |
|     consent |   | 1..1 |   |   |   |   |   |   |   |   |   |
|       code |   | 1..1 |   | Kod som anger typ på menprövning. | Motsvarighet i RIV saknas |   |   |   |   |   |   |
|         code |   | 1..1 | 310866003 | Kod som anger typ av tillgänglighet. Tillåtet värde är 310866003 för Information till Patient (att information är tillgänglig till patient kan ha föregåtts av menprövning) |   | clinicalDocument.authorization.consent.code = 310866003 |     approvedForPatient |   | boolean | 1..1 | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. |
|         codeSystem |   | 1..1 | 2.16.840.1.113883.6.96 | OID för Snomed CT |   | clinicalDocument.authorization.consent.codeSystem = 2.16.840.1.113883.6.96 |   |   |   |   |   |
|       statusCode |   | 1..1 |   |   |   |   |   |   |   |   |   |
|         code |   | 1..1 | completed |   |   | clinicalDocument.authorization.consent.statusCode.code = completed |   |   |   |   |   |
|   componentOf |   | 0..1 |   | Information om Vård- och omsorgskontakt som föranlett vårddokumentation. <componentOf> utesluts helt om Vård- och omsorgskontakt saknas |   |   |   |   |   |   |   |
|     encompassingEncounter |   | 1..1 |   |   |   |   |   |   |   |   |   |
|       id |   | 1..1 |   | Id på vård- och omsorgskontakt |   |   |   |   |   |   |   |
|         extension |   | 1..1 | * | Unik identifierare för vård- och omsorgskontakt. | diagnos.bedöms vid.vård- och omsorgskontakt.kontakt-id | clinicalDocument.componentOf.encompassingEncounter.id.extension = diagnosisHeader.careContactId |     careContactId |   | string | 0..1 | Identitet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet |
|         root |   | 1..1 | 1.2.752.129.2.1.2.1 | Föreslagen OID för för Icke-nationell identifierare Org+lokalt unikt id (1.2.752.129.2.1.2.1) |   | clinicalDocument.componentOf.encompassingEncounter.id.root = 1.2.752.129.2.1.2.1 |   |   |   |   |   |
|       effectiveTime |   | 1..1 |   |   |   |   |   |   |   |   |   |
|         value |   | 1..1 | null | Sätts till null, nullflavor NA |   |   |   |   |   |   |   |
|   participant |   | 1..1 |   |   | informationsmängd.system-id |   |   |   |   |   |   |
|     typeCode |   | 1..1 | CST |   |   |   |   |   |   |   |   |
|     id |   | 1..1 |   |   |   |   |   |   |   |   |   |
|       root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde, OID för HSA |   | clinicalDocument.participant.id.root = 1.2.752.129.2.1.4.1 |   |   |   |   |   |
|       extension |   | 1..1 | * | källsystemets HSA-id. |   | clinicalDocument.participant.id.extension = diagnosisHeader.sourceSystemHSAId |   |   |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |   |
|   CDA Body |   |   |   |   |   |   |   diagnosisBody | DiagnosisBodyType |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |   |
|   component |   | 1..1 |   |   |   |   |   |   |   |   |   |
|     structuredBody |   | 1..1 |   |   |   |   |   |   |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |   |
|   Sektion för diagnos |   |   |   |   |   |   |   |   |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |   |
|       component |   |   |   |   |   |   |   |   |   |   |   |
|         section |   |   |   |   |   |   |   |   |   |   |   |
|           code |   | 1..1 |   | Anger att svaret innehåller en diagnos |   |   |   |   |   |   |   |
|             code |   | 1..1 | 439401001 | Fast värde |   | …section.code.code = 439401001 |   |   |   |   |   |
|             displayName |   | 1..1 | Diagnos |   |   | …section.code.displayName = Diagnos |   |   |   |   |   |
|             codeSystem |   | 1..1 | 2.16.840.1.113883.6.96 |   |   | …section.code.codeSystem = 2.16.840.1.113883.6.96 |   |   |   |   |   |
|             codeSystemName |   | 1..1 | SNOMED CT |   |   | …section.code.codeSystemName = SNOMED CT |   |   |   |   |   |
|           text | ED | 0..1 |   | <den utläsbara texten> |   |   |   |   |   |   |   |
|           entry |   | 1..1 |   |   |   |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   |   |   |   |   |   |   |
|               code | CD | 1..1 |   |   |   |   |   |   |   |   |   |
|                 code |   | 1..1 | * | Koden (inom parenteser) för motsvarande diagnosisType: huvuddiagnos (8319008), bidiagnos (85097005). |   | Värdet för …section.entry.observation.code.code beror på vilken typ av diagnos som anges (se regel i regelfältet) |   |   |   |   |   |
|                 displayName |   | 1..1 | * |   | diagnos.diagnostyp (i de fall diagnostyp = huvuddiagnos eller bidiagnos) | …section.entry.observation.code.displayName = diagnosisBody.diagnosisType |     typeOfDiagnosis | TypeOfDiagnosisEnum | string | 1..1 | Anges som "Huvuddiagnos" eller "Bidiagnos". |
|                 codeSystem |   | 1..1 | 2.16.840.1.113883.6.96 | Fast värde |   | …section.entry.observation.code.codeSystem = 2.16.840.1.113883.6.96 |     chronicDiagnosis |   | boolean | 0..1 | Sätts till true om diagnosen är kronisk, false om diagnosen inte är kronisk, och används inte om okänt. |
|                 codeSystemName |   | 1..1 | SNOMED CT | Fast värde |   | …section.entry.observation.code.codeSystemName = SNOMED CT |   |   |   |   |   |
|               effectiveTime | TS | 0..1 |   |   | diagnos.händelsetidpunkt | …section.entry.observation.effectiveTime = diagnosisBody.diagnosisTime |     diagnosisTime | TimeStampType | string | 0..1 | Tidpunkt då bedömningen gjordes. |
|               value | CD | 0..1 |   |   |   |   |     diagnosisCode | CVType |   | 0..1 | Diagnoskod |
|                 code |   | 0..1 | * | Diagnoskod i kodformat | diagnos.diagnoskod(kod) ELLER diagnos.diagnosbeskrivning-kod |   |       code |   | string | 0..1 | Kod för den aktuella diagnosen (för NPÖ-kompatibilitet bör kod vara angiven enligt ICD-10-SE eller KSH97). |
|                 displayName |   | 0..1 | * | Diagnoskod i textformat | diagnos.diagnoskod(klartext) ELLER diagnos.diagnosbeskrivning-text | …section.entry.observation.value.code.code = diagnosisBody.diagnosisCode.code ELLER …section.entry.observation.value.code.code = diagnosisBody.diagnosisDescription.code |       displayName |   | string | 0..1 | Klartext för kod som angivits i attributet diagnosisCode. |
|                 codeSystem |   | 0..1 | * | OID för kodsystem. ICD-10-SE (1.2.752.116.1.1.1.1.3), KSH97 (1.2.752.116.1.1.1.1.1) eller SNOMED (2.16.840.1.113883.6.96) |   | …section.entry.observation.value.code.displayName = diagnosisBody.diagnosisCode.displayName ELLER …section.entry.observation.value.code.displayName = diagnosisBody.diagnosisDescription.description |       codeSystem |   | string | 0..1 | OID för kodsystem. |
|                 codeSystemName |   | 0..1 | * | Kodsystem i klartext |   | Värdet på …section.entry.observation.value.code.codeSystem beror på vilket kodsystem som används (se regel i regelfältet) |       codeSystemName |   | string | 0..1 | Namn på kodsystem (för NPÖ-kompatibilitet bör kodsystemet vara ICD-10-SE eller KSH97). |
|                 codeSystemVersion |   | 0..1 | * | Versionsangivelse av kodsystemet |   | …section.entry.observation.value.code.codeSystemName = diagnosisBody.diagnosisCode.codeSystem |       codeSystemVersion |   | string | 0..1 | Om tillämpbart, versionsangivelse som definierats av det givna kodsystemet. |
|                 originalText |   | 0..1 | * |   |   |   |       originalText |   | string | 0..1 | originalText ska användas vid överföring av värden som kommer från lokala kodverk som ej är identifierade med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. / / Om originalText anges kan inget av de övriga elementen anges. För NPÖ-kompabilitet bör inte detta fält användas. |
|               entryRelationsship |   | 0..1 |   |   |   | Denna …section.entry.observation.entryRelationship skapas bara om chronicDiagnosis är angiven |   |   |   |   |   |
|                 typeCode |   | 1..1 | REFR | Fast värde |   | …section.entry.observation.entryRelationship.typeCode = REFR |   |   |   |   |   |
|                 observation |   | 1..1 |   |   |   |   |   |   |   |   |   |
|                   code |   | 1..1 |   |   |   |   |   |   |   |   |   |
|                     code |   | 1..1 | 90734009 | Fast värde |   | …section.entry.observation.entryRelationship.observation.code.code = 90734009 |   |   |   |   |   |
|                     displayName |   | 1..1 | Kronisk | Fast värde |   | …section.entry.observation.entryRelationship.observation.code.displayName = Kronisk |   |   |   |   |   |
|                     codeSystem |   | 1..1 | 2.16.840.1.113883.6.96 | Fast värde |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 2.16.840.1.113883.6.96 |   |   |   |   |   |
|                     codeSystemName |   | 1..1 | SNOMED CT | Fast värde |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = SNOMED CT |   |   |   |   |   |
|                   value | BL | 1..1 | * |   | diagnos.diagnostyp (i de fall diagnostyp = kronisk diagnos) | …section.entry.observation.entryRelationship.observation.value = diagnosisBody.chronicDiagnosis |   |   |   |   |   |
|               entryRelationsship |   | 0..* |   | Relaterar till andra diagnoser | diagnos.relaterar till | För varje diagnosisBody.relatedDiagnosis skapas en …section.entry.observation.entryRelationship |     relatedDiagnosis | RelatedDiagnosisType |   | 0..* | Relaterad diagnos |
|                 typeCode |   | 1..1 | REFR | Fast värde |   | …section.entry.observation.entryRelationship.typeCode = REFR |   |   |   |   |   |
|                 observation |   | 1..1 |   |   |   |   |   |   |   |   |   |
|                   classCode |   | 1..1 | OBS |   |   |   |   |   |   |   |   |
|                   moodCode |   | 1..1 | EVN |   |   |   |   |   |   |   |   |
|                   id |   | 1..1 |   |   |   |   |   |   |   |   |   |
|                     extension |   | 1..1 | * | Unikt diagnos-id | diagnos.relaterar till.diagnos.diagnos-id | …section.entry.observation.entryRelationship.observation.id.extension = diagnosisBody.relatedDiagnosis.diagnosisId |       documentId |   | string | 1..1 | Unik identitet för diagnosen. |
|                     root |   | 1..1 | 1.2.752.129.2.1.2.1 | Föreslagen OID för för Icke-nationell identifierare Org+lokalt unikt id (1.2.752.129.2.1.2.1) |   | …section.entry.observation.entryRelationship.observation.id.root = 1.2.752.129.2.1.2.1 |   |   |   |   |   |
|                   code |   | 1..1 |   |   |   |   |   |   |   |   |   |
|                     nullflavor |   | 1..1 | NA | Fast värde |   | …section.entry.observation.entryRelationship.observation.code.nullflavor = NA |   |   |   |   |   |

#### GetDiagnosis: flik ”Blad1”

| |
| :--- |
| classCode |
| id |
| code |
| addr |
| telecom |
| assignedPerson |
| representedOrganization |

### Mappningar GetAlertInformation

Referens R5. Originalfil: [Bilaga_Mappningar_GetAlertInformation.xlsx](Bilaga_Mappningar_GetAlertInformation.xlsx).

#### GetAlertInformation: flik ”SendReferralAnswer CDA”

Kolumngrupper i originalet: Uppmärksamhetssignal CDA, Transformering, Green CDA.

| | | | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| CDA Header för Uppmärksamhetssignal |   |   | Not: Fält med * indikerar att det är en variabel |   |   |   |   |   |   |   |   |   |
|   |   |   |   |   |   |   | alertInformation | AlertInformationType |   |   |   |   |
| ClinicalDocument |   |   |   |   |   |   |   alertInformationHeader | PatientSummaryHeaderType |   |   |   |   |
|   typeId | II | 1..1 |   |   |   |   |   |   |   |   |   |   |
|     extension |   | 1..1 | POCD_HD000040 | Fast värde: indikerar att detta är ett CDA-dokument |   | ClinicalDocument.typeId.extension = POCD_HD000040 |   |   |   |   |   |   |
|     root |   | 1..1 | 2.16.840.1.113883.1.3 |   |   | ClinicalDocument.typeId.root = 2.16.840.1.113883.1.3 |   |   |   |   |   |   |
|   id | II | 1..1 |   | Id på diagnosdokumentet |   |   |   |   |   |   |   |   |
|     extension |   | 1..1 | * | Unik identifierare för aktuellt informationsobjekt (uppmärksamhetssignaldokument). / Globalt unik identitet, skapas genom konkatenering av Systemets HSA-id och ett lokalt unikt id. | uppmärksamhetssignal.uppmärksamhetssignal-id | ClinicalDocument.id.extension = diagnosisHeader.sourceSystemHSAId+diagnosisHeader.documentId |     documentId |   | string | 1..1 | Dokumentets identitet som är unik i källsystemet. |   |
|     root |   | 1..1 | 1.2.752.129.2.1.2.1 | Föreslagen OID för för Icke-nationell identifierare Org+lokalt unikt id (1.2.752.129.2.1.2.1) |   | ClinicalDocument.id.root = 1.2.752.129.2.1.2.1 |   |   |   |   |   |   |
|   code | CE | 1..1 |   |   |   |   |   |   |   |   |   |   |
|     code |   | 1..1 | upp | Fast kod |   | ClinicalDocument.code.code = upp |   |   |   |   |   |   |
|     displayName |   | 1..1 | Informationsmängd uppmärksamhetssignal | Fast värde |   | ClinicalDocument.code.displayName = Informationsmängd uppmärksamhetssignal |   |   |   |   |   |   |
|     codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 | Fast värde; Kodsystemet är KV Informationstyp (1.2.752.129.2.2.2.1) |   | ClinicalDocument.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|   |   |   |   |   |   |   |     sourceSystemHSAId | HSAIdType |   | 1..1 | HSAid för det system som dokumentet är skapat i. |   |
|   effectiveTime | TS | 1..1 |   | Tidpunkt då informationen om diagnosen lagrades i källsystemet |   |   |   |   |   |   |   |   |
|     value |   | 1..1 | * | Format ÅÅÅÅMMDDttmmss | uppmärksamhetssignal.registreringstidpunkt | ClinicalDocument.effektiveTime.value = diagnosisHeader.accountableHealthcareProfessional.authorTime |   |   |   |   |   |   |
|   confidentialityCode | CE | 1..1 |   |   |   |   |   |   |   |   |   |   |
|     code |   | 1..1 | N | Fast värde, anger Normal sekretesshantering |   | ClinicalDocument.confidentialityCode.code = N |   |   |   |   |   |   |
|     codeSystem |   | 1..1 | 2.16.840.1.113883.5.25 |   |   | ClinicalDocument.confidentialityCode.codeSystem = 2.16.840.1.113883.5.25 |   |   |   |   |   |   |
|   recordTarget |   | 1..1 |   | Information om patienten |   |   |   |   |   |   |   |   |
|     patientRole |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|       id | II | 1..1 |   |   |   |   |     patientId | PersonIdType |   | 1..1 | Id för patienten. |   |
|         extension |   | 1..1 | * | Id på patienten. | vård- och omsorgstagare.person-id | clinicalDocument.recordTarget.PatientRole.id.extention = diagnosisHeader.patientId.id |       id |   | string | 1..1 | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. |   |
|         root |   | 1..1 | * | Typ av personidentifierare. Bland tillåtna typer finns: personnummer (1.2.752.129.2.1.3.1), samordningsnummer (1.2.752.129.2.1.3.3), reservnummer SLL (1.2.752.97.3.1.3), nationellt reservnummer (1.2.752.129.2.1.3.2) |   | clinicalDocument.recordTarget.PatientRole.id.root = diagnosisHeader.patientId.type |       type |   | string | 1..1 | Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) |   |
|   author |   | 1..1 |   | Person som skapat vård- och omsorgsdokumentet |   |   |     accountableHealthcareProfessional | HealthcareProfessionalType |   | 1..1 | Information om den hälso- och sjukvårdsperson som verifierat informationen i dokumentet. |   |
|     time |   | 1..1 |   | Tidpunkt då dokumentet skapades |   |   |   |   |   |   |   |   |
|       value |   | 1..1 | * | Format ÅÅÅÅMMDDttmmss | uppmärksamhetssignal.registreringstidpunkt | clinicalDocument.author.time.value = diagnosisHeader.accountableHealthcareProfessional.authorTime |       authorTime | TimeStampType | string | 1..1 | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. |   |
|     assignedAuthor |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|       id | II | 1..1 |   | HSA för författare |   |   |   |   |   |   |   |   |
|         extension |   | 1..1 | * | HSA-id för författaren. Om HSAid saknas, anges nullvärde med nullflavor = UNK. | vård- och omsorgspersonal.personal-id | clinicalDocument.author.assignedAuthor.id.extension = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId |       healthcareProfessionalHSAid | HSAIdType | string | 0..1 | Vård- och omsorgspersonalens HSA-id. Krav enligt NPÖ RIV 2.2.0. |   |
|         root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde, OID för HSA (1.2.752.129.2.1.4.1) |   | clinicalDocument.author.assignedAuthor.id.root = 1.2.752.129.2.1.4.1 |       healthcareProfessionalName | string |   | 0..1 | Namn på vård- och omsorgspersonal. Om tillgängligt skall detta anges. Krav enligt NPÖ RIV 2.2.0. |   |
|       code |   | 0..1 |   | Befattningskod |   |   |       healthcareProfessionalRoleCode | CVType |   | 0..1 | Information om personens befattning. Om möjligt skall KV Befattning (OID 1.2.752.129.2.2.1.4) användas. |   |
|         code |   | 0..1 | * | Kod för befattning, | vård- och omsorgspersonal.befattning | clinicalDocument.author.assignedAuthor.code.code = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.code |         code |   | string | 0..1 | Befattningskod. Om code anges skall också codeSystem samt displayName anges. |   |
|         codeSystem |   | 0..1 | * | Kodverk för befattning. Om möjligt OID för kodverk (KV) Befattning (1.2.752.129.2.2.1.4) |   | clinicalDocument.author.assignedAuthor.code.codeSystem = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.codeSystem (om tillgängligt). / Annars: clinicalDocument.author.assignedAuthor.code.codeSystem = 1.2.752.129.2.2.1.4 |         codeSystem |   | string | 0..1 | Kodsystem för befattningskod. Om codeSystem anges skall också code samt displayName anges. |   |
|         displayName |   | 0..1 | * | Befattningen i klartext. |   | clinicalDocument.author.assignedAuthor.code.displayName = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.displayName |         codeSystemName |   | string | 0..1 | Namn på kodsystem för befattningskod. |   |
|         codeSystemName |   | 0..1 | * | Namn på kodsystem för befattningskod. |   | clinicalDocument.author.assignedAuthor.code.codeSystemName = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.codeSystemName |         codeSystemVersion |   | string | 0..1 | Version på kodsystem för befattningskod. |   |
|         codeSystemVersion |   | 0..1 | * | Version på kodsystem för befattningskod. |   | clinicalDocument.author.assignedAuthor.code.codeSystemVersion = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.codeSystemVersion |         displayName |   | string | 0..1 | Befattningskoden i klartext. Om separat displayName inte finns i producerande system skall samma värde som i code anges. |   |
|         originalText |   | 0..1 | * | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. |   | clinicalDocument.author.assignedAuthor.code.originalText = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode.originalText |         originalText |   | string | 0..1 | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges skall inget annat värde i healthcareProfessionalRoleCode anges. |   |
|       assignedPerson |   | 0..1 |   |   |   |   |   |   |   |   |   |   |
|         name |   | 0..1 | * | Namn på författare. | vård- och omsorgspersonal.namn | clinicalDocument.author.assignedAuthor.assignedPerson.name = diagnosisHeader.author.authorName |   |   |   |   |   |   |
|       representedOrganization |   | 0..1 |   |   |   |   |       healthcareProfessionalOrgUnit | OrgUnitType |   | 0..1 | Den organisation som vård- och omsorgspersonalen är uppdragstagare på. HSA-id och namn är krav enligt NPÖ RIV 2.2.0. |   |
|         id | II | 0..1 |   | Id för den enhet där den som är författare är uppdragstagare. |   |   |   |   |   |   |   |   |
|           extension |   | 1..1 | * | HSA-id för organisation | enhet.enhets-id | clinicalDocument.author.assignedAuthor.representedOrganization.id.extention = diagnosisHeader.author.careUnitHSAid |         orgUnitHSAId | HSAIdType |   | 0..1 | HSA-id för organisationsenhet. Krav enligt NPÖ RIV 2.2.0. |   |
|           root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde OID för HSA |   | clinicalDocument.author.assignedAuthor.representedOrganization.id.root = 1.2.752.129.2.1.4.1 |   |   |   |   |   |   |
|         name |   | 0..1 | * |   | enhet.enhetsnamn | clinicalDocument.author.assignedAuthor.representedOrganization.name = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName |         orgUnitName |   | string | 0..1 | Namnet på den organisation som vård- och omsorgspersonalen är uppdragstagare på. Krav enligt NPÖ RIV 2.2.0. |   |
|         telecom | SET<TEL> | 0..1 |   | Skapas bara om orgUnitTelecom har angivits. |   |   |   |   |   |   |   |   |
|           value |   | 0..1 | "tel:"+* | Strängen "tel:" konkatenerat med angivet orgUnitTelecom-värde. | enhet.telefonnummer | clinicalDocument.author.assignedAuthor.representedOrganization.telecom.value = "tel:" + diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom |         orgUnitTelecom |   | string | 0..1 | Telefon till organisationsenhet |   |
|           value |   | 0..1 | "mailto:"+* | Strängen "mailto:" konkatenerat med angivet orgUnitEmail-värde. | enhet.epost-adress | clinicalDocument.author.assignedAuthor.representedOrganization.telecom.value = "mailto:" + diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail |         orgUnitEmail |   | string | 0..1 | Epost till enhet |   |
|         addr |   | 0..1 | * | Adress till enhet. | enhet.postadress | clinicalDocument.author.assignedAuthor.representedOrganization.addr = diagnosisHeader.author.careUnitHSAddress |         orgUnitAddress |   | string | 0..1 | Postadress för den organisation som författaren är uppdragstagare på |   |
|   |   |   |   |   |   |   |         orgUnitLocation |   | string | 0..1 | Text som anger namnet på plats eller ort för organisationens fysiska placering |   |
|         asOrganizationPartOf |   | 0..1 |   | Information om vårdgivare. Skapas bara om healthcareProfessionalCareGiverHSAId är angiven. |   |   |   |   |   |   |   |   |
|           wholeOrganization |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|             id | II | 1..1 |   |   |   |   |       healthcareProfesssionalCareUnitHSAid | HSAIdType | string | 0..1 | HSA-id för PDL-enhet. Krav enligt NPÖ RIV 2.2.0. |   |
|               extension |   | 1..1 | * | HSA-id för vårdgivare. | informationsmängd.ägande vårdgivare-id | clinicalDocument.author.assignedAuthor.representedOrganization.asOrganizationPartOf.wholeOrganization.id.extention = diagnosisHeader.author.careGiverHSAid |   |   |   |   |   |   |
|               root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde OID för HSA |   | clinicalDocument.author.assignedAuthor.representedOrganization.asOrganizationPartOf.wholeOrganization.id.root = 1.2.752.129.2.1.4.1 |   |   |   |   |   |   |
|   custodian |   | 1..1 |   | Information om PDL-enhet som har ägandeskap över informationen |   |   |       healthcareProfessionalCareGiverHSAid | HSAIdType | string | 0..1 | HSA-id för vårdgivaren, som är vårdgivare för den enhet som vård- och omsorgspersonalen är uppdragstagare för. Krav enligt NPÖ RIV 2.2.0. |   |
|     assignedCustodian |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|       representedCustodianOrganization |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|         id | II | 1..1 |   | Ägande PDL-enhet. Om healthcareProfessionalCareGiverHSAId inte är angivet sätts id nulllavor = UNK |   |   |   |   |   |   |   |   |
|           extension |   | 1..1 | * | HSA-id för PDL-enhet | informationsmängd.ägande vårdenhets-id | ClinicalDocument.custodian.assignedCustodian.representedCustodianOrganization.id.extension = diagnosisHeader.author.careGiverHSAid |   |   |   |   |   |   |
|           root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde OID för HSA |   | ClinicalDocument.custodian.assignedCustodian.representedCustodianOrganization.id.root = 1.2.752.129.2.1.4.1 |   |   |   |   |   |   |
|   legalAuthenticator |   | 0..1 |   | Information om signering |   |   |   |   |   |   |   |   |
|     time | TS | 1..1 |   |   |   |   |   |   |   |   |   |   |
|       value |   | 1..1 | * | Tidpunkt för signering, format ÅÅÅÅMMDDttmmss. | uppmärksamhetssignal.signeringstidpunkt | clinicalDocument.legalAuthenticator.time.value = diagnosisHeader.legalAuthenticator.signatureTime |     legalAuthenticator | LegalAuthenticatorType |   | 0..1 | Information om vem som signerat informationen i dokumentet. |   |
|     signatureCode |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|       code |   | 1..1 | S |   |   | clinicalDocument.legalAuthenticator.signatureCode.code = S |       signatureTime | TimeStampType | string | 1..1 | Tidpunkt för signering. |   |
|     assignedEntity |   | 0..1 |   |   |   |   |   |   |   |   |   |   |
|       id | II | 1..1 |   | HSA id för signerande person. Om HSAid saknas, anges nullvärde med nullflavor = UNK. | Motsvarighet i RIV saknas |   |   |   |   |   |   |   |
|         extension |   | 1..1 | * | HSA-id för signerande person |   | clinicalDocument.legalAuthenticator.assignedEntity.id.extension = diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId |       legalAuthenticatorHSAId | HSAIdType |   | 0..1 | HSA-id för person som signerat dokumentet |   |
|         root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde, OID för HSA |   | clinicalDocument.legalAuthenticator.assignedEntity.id.root = 1.2.752.129.2.1.4.1 |   |   |   |   |   |   |
|       representedOrganization |   | 0..1 |   |   |   |   |   |   |   |   |   |   |
|         id | II | 1..1 |   | Id för den enhet där den som är signerare är uppdragstagare. | Motsvarighet i RIV saknas |   |   |   |   |   |   |   |
|           extension |   | 1..1 | * | HSA för organisation |   | clinicalDocument.legalAuthenticator.assignedEntity.representedOrganization.id.extention = diagnosisHeader.accountableHealthcareProfessional.healthcareProfessional.careUnitHSAid |   |   |   |   |   |   |
|           root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde, OID för HSA |   | clinicalDocument.legalAuthenticator.assignedEntity.representedOrganization.id.root = 1.2.752.129.2.1.4.1 |   |   |   |   |   |   |
|       assignedPerson |   | 0..1 |   | assignedPerson skapas enbart om diagnosisHeader.legalAuthenticator.legalAuthenticatorName är angivet. |   | Om legalAuthenticatorName är angivet skapas assignedPerson, annars inte. |   |   |   |   |   |   |
|         name | PN | 1..1 | * |   |   | clinicalDocument.legalAuthenticator.assignedEntity.assignedPerson.name = diagnosisHeader.legalAuthenticator.legalAuthenticatorName |       legalAuthenticatorName | string |   | 0..1 | Namnen i klartext för den signerande personen |   |
|   authorization |   | 0..1 |   | Information om tillgänglighet av information, exempelvis att information kan ges till patient. | Motsvarighet i RIV saknas | Om approvedForPatient är true skapas clinicalDocument.authorization. Om approvedForPatient är false skapas ej clinicalDocument.authorization |   |   |   |   |   |   |
|     consent |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|       code |   | 1..1 |   | Kod som anger typ på menprövning. |   |   |   |   |   |   |   |   |
|         code |   | 1..1 | 310866003 | Kod som anger typ av tillgänglighet. Tillåtet värde är 310866003 för Information till Patient (att information är tillgänglig till patient kan ha föregåtts av menprövning) |   | clinicalDocument.authorization.consent.code = 310866003 |     approvedForPatient |   | boolean | 1..1 | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. |   |
|         codeSystem |   | 1..1 | 2.16.840.1.113883.6.96 | OID för Snomed CT |   | clinicalDocument.authorization.consent.codeSystem = 2.16.840.1.113883.6.96 |   |   |   |   |   |   |
|       statusCode |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|         code |   | 1..1 | completed |   |   | clinicalDocument.authorization.consent.statusCode.code = completed |   |   |   |   |   |   |
|   componentOf |   | 0..1 |   | Information om Vård- och omsorgskontakt som föranlett vårddokumentation. <componentOf> utesluts helt om Vård- och omsorgskontakt saknas |   |   |   |   |   |   |   |   |
|     encompassingEncounter |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|       id |   | 1..1 |   | Id på vård- och omsorgskontakt |   |   |   |   |   |   |   |   |
|         extension |   | 1..1 | * | Unik identifierare för vård- och omsorgskontakt. | diagnos.bedöms vid.vård- och omsorgskontakt.kontakt-id | clinicalDocument.componentOf.encompassingEncounter.id.extension = diagnosisHeader.careContactId |     careContactId |   | string | 0..1 | Identitet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet |   |
|         root |   | 1..1 | 1.2.752.129.2.1.2.1 | Föreslagen OID för för Icke-nationell identifierare Org+lokalt unikt id (1.2.752.129.2.1.2.1) |   | clinicalDocument.componentOf.encompassingEncounter.id.root = 1.2.752.129.2.1.2.1 |   |   |   |   |   |   |
|       effectiveTime |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|         value |   | 1..1 | null | Sätts till null, nullflavor NA |   |   |   |   |   |   |   |   |
|   participant |   | 1..1 |   |   | informationsmängd.system-id |   |   |   |   |   |   |   |
|     typeCode |   | 1..1 | CST |   |   |   |   |   |   |   |   |   |
|     id |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|       root |   | 1..1 | 1.2.752.129.2.1.4.1 | Fast värde, OID för HSA |   | clinicalDocument.participant.id.root = 1.2.752.129.2.1.4.1 |   |   |   |   |   |   |
|       extension |   | 1..1 | * | källsystemets HSA-id. |   | clinicalDocument.participant.id.extension = diagnosisHeader.sourceSystemHSAId |   |   |   |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |   |   |
|   CDA Body |   |   |   |   |   |   |   alertInformationBody | AlertInformationBodyType |   |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |   |   |
|   component |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|     structuredBody |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |   |   |
|   Sektion för uppmärksamhetssignal |   |   |   |   |   |   |   |   |   |   |   |   |
|    |   |   |   |   |   |   |   |   |   |   |   |   |
|       component |   |   |   |   |   |   |   |   |   |   |   |   |
|         section |   |   |   |   |   |   |   |   |   |   |   |   |
|           code | CE | 1..1 |   | Kod som anger typ av uppmärksamhetssignal. | uppmärksamhetssignal.typ av uppmärksammat förhållande kod ELLER uppmärksamhetssignal.typ av uppmärksammat förhållande text |   |     typeOfAlertInformation | CVType |   | 1..1 | Kod som anger vilken typ av uppmärksamhetssignal som avses. Om möjligt ska KV Uppmärksamhetstyp användas. Den har tyvärr ingen OID, men KV Uppmärksamhetstyp verkar i nuvarande format vara ett subset av KV Informationstyp, så KV Informationstyp går bra att ange här. |   |
|             code |   | 0..1 |   |   |   | …section.code.code = alertInformationBody.alertInformationTypeCode.alertInformationTypeCodeCode |       code |   |   | 0..1 | Kod som anger typ av uppmärksamhetssignal. Bör tas från KV Uppmärksamhetstyp. |   |
|             displayName |   | 0..1 |   |   |   | …section.code.displayName = alertInformationBody.alertInformationTypeCode.alertInformationTypeCodeDisplayName |       displayName |   |   | 0..1 | Koden i klartext. |   |
|             codeSystem |   | 0..1 |   |   |   |   |       codeSystem |   |   | 0..1 | OID för kodsystem. Bör vara OID till KV Uppmärksamhetstyp, om sådan finns tillgänglig. Backup, så länge KV Uppmärksamhetstyp är en delmängd av KV Informationstyp går det bra att ange OID för KV Informationstyp istället (1.2.752.129.2.2.2.1). |   |
|             codeSystemName |   | 0..1 |   |   |   |   |       codeSystemName |   |   | 0..1 | Klartext för kodsystemet angivet i codeSystem. |   |
|             codeSystemVersion |   | 0..1 |   |   |   |   |       codeSystemVersion |   |   | 0..1 | Version på kodsystem, om tillgängligt. |   |
|             originalText |   | 0..1 |   |   |   |   |       originalText |   |   | 0..1 | Om typ av uppmärksamhetssignal är beskriven i ett lokalt kodsystem, eller ett kodsystem utan OID ska typ av uppmärksamhetssignal anges här. |   |
|           text |   | 0..1 |   | <den utläsbara texten> |   |   |   |   |   |   |   |   |
|           entry |   | 0..1 |   |   |   |   |   |   |   |   |   |   |
|             observation | CD | 1..1 |   |   |   |   |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   |   |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   | …section.entry.observation.moodCode = EVN |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-upp-kdt |   |   |   |   |   |   |   |   |   |
|                 displayName |   | 1..1 | konstaterat datum |   |   |   |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |   |   |   |   |   |   |
|               effectiveTime |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|                 value | ? | 1..1 | * | Format ÅÅÅÅMMDD | uppmärksamhetssignal.konstaterat datum | …section.entry.observation.code.codeSystem = ??? |     ascertainedDate | DateType | string | 0..1 | Datum då förhållandet som föranledde uppmärksamhetssignalen konstaterades. Om inget specifikt datum för detta finns i källsystemet används / samma tid som starttiden i attributet giltighetstid. |   |
|           entry |   | 0..1 |   |   |   | …section.entry.observation.code.codeSystemName = KV Uppmärksamhetstyp |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   | …section.entry.observation.code.originalText = alertInformationBody.alertInformationTypeText |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   |   |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   |   |   |   |   |   |   |   |
|               code | CD | 1..1 |   |   |   | …section.entry.observation.effectiveTime.low.value = alertInformationBody.validityTimePeriod.start |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-upp-vtp |   |   |   |   |   |   |   |   |   |
|                 displayName |   | 1..1 | verifierad tidpunkt |   |   | …section.entry.observation.effectiveTime.high.value = alertInformationBody.validityTimePeriod.end ELLER …section.entry.observation.effectiveTime.high.value = alertInformationBody.obsoleteTime |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |   |   |   |   |   |   |
|               effectiveTime |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|                 value |   | 1..1 | * | Format ÅÅÅÅMMDDttmmss | uppmärksamhetssignal.verifierad tidpunkt |   |     verifiedTime | TimeStampType |   | 0..1 | Den tidpunkt då uppmärksamhetssignalen verifierades i det lokala systemet |   |
|           entry |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   |   |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   | Om alertInformationBody.ascertainedDate är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|               code | CD | 1..1 |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-upp-vtp |   |   |   |   |   |   |   |   |   |
|                 displayName |   | 1..1 | verifierad tidpunkt |   |   |   |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|               effectiveTime |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|                 low |   | 1..1 |   |   | uppmärksamhetssignal.giltighetstid | …section.entry.observation.entryRelationship.observation.code.code = upp-upp-kdt |     validityTimePeriod | TimePeriodType |   | 1..1 | Tidsintervallet inom vilket uppmärksamhetssignalen är giltig. Sluttidpunkt kan vara aktuellt att ange då man i förväg bedömer att uppmärksamhetssignalen har en sluttidpunkt (t.ex. för behandlingar). |   |
|                   value |   | 1..1 | * | Format ÅÅÅÅMMDDttmmss |   | …section.entry.observation.entryRelationship.observation.code.displayName = konstaterat datum |       start | TimeStampType |   | 1..1 | Format ÅÅÅÅMMDD. |   |
|                 high |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   | Format ÅÅÅÅMMDD. |   |
|                   value |   | 1..1 | * | Format ÅÅÅÅMMDDttmmss |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |       end | TimeStampType |   | 1..1 |   |   |
|           entry |   | 0..1 |   |   |   |   |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.effectiveTime.value = alertInformationBody.ascertainedDate |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   | Om alertInformationBody.verifiedTime är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-upp-kom |   |   |   |   |   |   |   |   |   |
|                 displayName |   | 1..1 | kommentar till uppmärksamhet |   |   |   |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   | 1 = Besök |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |   |   |   |   |   |   |
|               value | ST | 1..1 |   |   | uppmärksamhetssignal.kommentar till uppmärksamhet | …section.entry.observation.entryRelationship.observation.code.code = upp-upp-vtp |     alertInformationComment |   | string | 0..1 | Text som innehåller en kommentar av den ansvarige vård- och omsorgspersonalen angående uppmärksamhetssignalen. Vid läkemedelsöverkänslighet kan kommentaren avse en anamnes, / en beskrivning av den observerade reaktionen, en beskrivning av möjliga agens, föreliggande undersökningsresultat. |   |
|           entry |   | 0..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = verifierad tidpunkt |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   |   |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.effectiveTime.value = alertInformationBody.verifiedTime |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-upp-itp |   |   |   |   |   |   |   |   |   |
|                 displayName |   | 1..1 | inaktuell tidpunkt |   |   |   |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |   |   |   |   |   |   |
|               effectiveTime |   | 1..1 |   |   |   | Om alertInformationBody.alertInformationComment är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|                 value | TS | 1..1 |   | Format ÅÅÅÅMMDDttmmss | uppmärksamhetssignal.inaktuell tidpunkt | …section.entry.observation.entryRelationship.typeCode = COMP |     obsoleteTime | TimeStampType |   | 0..1 | Tidpunkt då uppmärksamhetssignalen registrerades som inaktuell i det lokala systemet. Används exempelvis om det uppmärksammade förhållandet bedöms som inte längre aktuellt trots att tidigare angiven gilitighetstid ej gått ut. |   |
|               entryRelationship |   | 0..1 |   |   |   |   |   |   |   |   |   |   |
|                 typeCode |   | 1..1 | COMP |   |   |   |   |   |   |   |   |   |
|                 contextConductionInd |   | 1..1 | true |   |   |   |   |   |   |   |   |   |
|                 observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|                   classCode |   | 1..1 | OBS |   |   |   |   |   |   |   |   |   |
|                   moodCode |   | 1..1 | EVN |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-upp-kom |   |   |   |   |   |   |
|                   code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = kommentar till uppmärksamhet |   |   |   |   |   |   |
|                     code |   | 1..1 | upp-upp-kin |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|                     displayName |   | 1..1 | kommentar om inaktuell |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|                     codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                     codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |   |   |   |   |   |   |
|                   value | ST | 1..1 |   |   | uppmärksamhetssignal.kommentar om inaktuell | …section.entry.observation.entryRelationship.observation.value = alertInformationBody.alertInformationComment |     obsoleteComment |   | string | 0..1 | Text som innehåller information om varför uppmärksamhetssignalen gjorts inaktuell. |   |
|           entry |   | 0..1 |   |   |   | Om alertInformationBody.obsoleteTime är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   |   |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   |   |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-okh-typ |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|                 displayName |   | 1..1 | typ av överkänslighet |   |   |   |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-upp-itp |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = inaktuell tidpunkt |     hypersensitivity |   |   | 0..1 | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). |   |
|               value | ST | 1..1 | * |   | uppmärksamhetssignal.typ av överkänslighet | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |       typeOfHypersensitivity | CVType | string | 1 | Kod som anger en precisering av vilken typ av överkänslighet som uppmärksamhetssignalen avser. Koden bör hämtas ur ICD10/SNOMED. / Exempel: / Läkemedelsöverkänslighet / Överkänslighet avs. födoämne / Överkänslighet avs. djur / Överkänslighet avs. växt / Överkänslighet av kemikalie |   |
|           entry |   | 0..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |         code |   | string | 0..1 |   |   |
|             observation |   | 1..1 |   |   |   |   |         displayName |   | string | 0..1 |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.effectiveTime.value = alertInformationBody.obsoleteTime |         codeSystem |   | string | 0..1 |   |   |
|               moodCode |   | 1..1 | EVN |   |   | Om alertInformationBody.obsoleteComment är angiven skapas denna …section.entry.observation.entryRelationship |         codeSystemName |   | string | 0..1 |   |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |         codeSystemVersion |   | string | 0..1 |   |   |
|                 code |   | 1..1 | upp-okh-avg |   |   |   |         originalText |   | string | 0..1 |   |   |
|                 displayName |   | 1..1 | allvarlighetsgrad |   |   |   |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|               value | ST | 1..1 |   | KV Allvarlighetsgrad ska användas | uppmärksamhetssignal.allvarlighetsgrad |   |       degreeOfSeverity | CVType |   | 0..1 | Kod som anger bedömning av överkänslighetens allvarlighet. För kompatibilitet med NPÖ RIV 2.2.0 ska KV Allvarlighetsgrad (1.2.752.129.2.2.3.3) följas. / / Bör anges. |   |
|           entry |   | 0..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-upp-kin |         code |   | string | 0..1 | Kod. Om code anges måste också codeSystem och displayName också anges. |   |
|             observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = inaktuell tidpunkt |         displayName |   | string | 0..1 | Klartext. Om displayName anges måste också code och codeSystem anges. |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |         codeSystem |   | string | 0..1 | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. |   |
|               moodCode |   | 1..1 | EVN |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |         codeSystemName |   | string | 0..1 | Klartext för kodsystem. |   |
|               code |   | 1..1 |   |   |   |   |         codeSystemVersion |   | string | 0..1 | Kodsystemsversion |   |
|                 code |   | 1..1 | upp-okh-vhg |   |   |   |         originalText |   | string | 0..1 | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. |   |
|                 displayName |   | 1..1 | visshetsgrad |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.obsoleteComment |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | Om alertInformationBody.typeOfHypersensitivity är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|               value | ST | 1..1 |   | KV Visshetsgrad ska användas | uppmärksamhetssignal.visshetsgrad |   |       degreeOfCertainty |   | string | 0..1 | Kod som innehåller en uppgift om med vilken visshet överkänsligheten är precis så som den har angivits. För kompatibilitet med NPÖ RIV 2.2.0 skall KV Visshetsgrad (1.2.752.129.2.2.3.11) följas. |   |
|           entry |   | 0..1 |   |   |   |   |         code |   | string | 0..1 | Kod. Om code anges måste också codeSystem och displayName också anges. |   |
|             observation |   | 1..1 |   |   |   |   |         displayName |   | string | 0..1 | Klartext. Om displayName anges måste också code och codeSystem anges. |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |         codeSystem |   | string | 0..1 | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. |   |
|               moodCode |   | 1..1 | EVN |   |   |   |         codeSystemName |   | string | 0..1 | Klartext för kodsystem. |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |         codeSystemVersion |   | string | 0..1 | Kodsystemsversion |   |
|                 code |   | 1..1 | upp-okh-lmo-sub |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |         originalText |   | string | 0..1 | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. |   |
|                 displayName |   | 1..1 | substans |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |       pharmaceuticalHypersensitivity |   |   | 0..1 | Mer detaljerad information om läkemedelsöverkänslighet. |   |
|               value | CV | 1..1 |   |   |   |   |         atcSubstance | CVType |   | 0..1 | Kod och klartext som anger den substans, eller grupp av substanser, som kan förorsaka en överkänslighetsreaktion. ATC-kod på minst treställig nivå ska anges för en läkemedelsöverkänslighet med en allvarlighetsgrad livshotande eller skadande. Om en ATC-kod ej kan anges ska attributen / - substans ej enligt ATC / och / - ej ATC-kod kommentar / användas |   |
|                 code |   | 1..1 | * |   | uppmärksamhetssignal.substans | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.typeOfHypersensitivity |           code |   |   | 1..1 | Substansens ATC-kod. |   |
|                 displayName |   | 1..1 | * |   |   | Om alertInformationBody.degreeOfSeverity är angiven skapas denna …section.entry.observation.entryRelationship |           displayName |   |   | 1..1 | Klartext för substans (substansnamn) |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.3.1.1 |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |           codeSystem |   |   | 1..1 | 1.2.752.129.2.2.3.1.1 |   |
|                 codeSystemName |   | 1..1 | ATC |   |   |   |   |   |   |   |   |   |
|           entry |   | 0..1 |   |   |   |   |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   |   |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-okh-lmo-sea |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |   |   |   |   |   |   |
|                 displayName |   | 1..1 | substans ej enligt ATC |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |   |   |   |   |   |   |
|               value | ST | 1..1 | * |   | uppmärksamhetssignal.substans ej enligt ATC |   |         nonATCSubstance |   | string | 0..1 | Text som anger benämning på aktiv substans som kan förorsaka en överkänslighetsreaktion |   |
|               entryRelationship |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.degreeOfSeverity |   |   |   |   |   |   |
|                 typeCode |   | 1..1 | COMP |   |   | Om alertInformationBody.degreeOfCertainty är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|                 contextConductionInd |   | 1..1 | true |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|                 observation |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|                   classCode |   | 1..1 | OBS |   |   |   |   |   |   |   |   |   |
|                   moodCode |   | 1..1 | EVN |   |   |   |   |   |   |   |   |   |
|                   code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|                     code |   | 1..1 | upp-okh-lmo-eak |   |   |   |   |   |   |   |   |   |
|                     displayName |   | 1..1 | ej ATC kommentar |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|                     codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |   |   |   |   |   |   |
|                     codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|                   value | ST | 1..1 |   |   | uppmärksamhetssignal.ej ATC kommentar | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |         nonATCSubstanceComment |   | string | 0..1 | Text som innehåller en förklaing till varför ej ATC-kod används. |   |
|           entry |   | 0..* |   | En entry skapas för varje alertInformationBody.pharmaceuticalProductId |   |   |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.degreeOfCertainty |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   | Om alertInformationBody.atcSubstanceCode är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-okh-lmo-lmp |   |   |   |   |   |   |   |   |   |
|                 displayName |   | 1..1 | Läkemedelsprodukt |   |   |   |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|               value | II | 1..1 |   |   |   |   |   |   |   |   |   |   |
|                 root |   | 1..1 | 1.2.752.129.2.1.5.1 | OID för NPL |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|                 extension |   | 1..1 | * |   | uppmärksamhetssignal.läkemedelsprodukt | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |         pharmaceuticalProductId | CVType |   | 0..* | Identifierare för aktuell läkemedelsprodukt som kan orsaka överkänslighet. För kompatibilitet med NPÖ 2.2.0 skall detta anges med NPL-id (1.2.752.129.2.1.5.1). |   |
|           entry |   | 0..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |           code |   | string | 0..1 | Kod. Om code anges måste också codeSystem och displayName också anges. |   |
|             observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |           displayName |   | string | 0..1 | Klartext. Om displayName anges måste också code och codeSystem anges. |   |
|               classCode |   | 1..1 | OBS |   |   |   |           codeSystem |   | string | 0..1 | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. |   |
|               moodCode |   | 1..1 | EVN |   |   |   |           codeSystemName |   | string | 0..1 | Klartext för kodsystem. |   |
|               code |   | 1..1 |   |   |   |   |           codeSystemVersion |   | string | 0..1 | Kodsystemsversion |   |
|                 code |   | 1..1 | upp-okh-aok-age |   |   | …section.entry.observation.entryRelationship.observation.value.code.code = alertInformationBody.atcSubstanceCode.atcSubstanceCodeCode |           originalText |   | string | 0..1 | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. |   |
|                 displayName |   | 1..1 | agens överkänslighet |   |   | …section.entry.observation.entryRelationship.observation.value.code.displayName = alertInformationBody.atcSubstanceCode.atcSubstanceCodeDisplayName |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | …section.entry.observation.entryRelationship.observation.value.code.codeSystem = 1.2.752.129.2.2.3.1.1 |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.observation.value.code.codeSystemName = ATC |       otherHypersensitivity |   |   | 0..1 | Mer detaljerad information om överkänsligheten är av annan typ än läkemedelsöverkänslighet. |   |
|               value | ST | 1..1 |   |   | uppmärksamhetssignal.agens överkänslighet | Om alertInformationBody.nonATCSubstance är angiven skapas denna …section.entry.observation.entryRelationship |         hypersensitivityAgent |   | string | 0..1 | Text som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion. Kan användas för annan överkänslighet än läkemedelsöverkänslighet. / / Bör anges. |   |
|           entry |   | 0..1 |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   |   |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   |   |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-okh-aok-agk |   |   |   |   |   |   |   |   |   |
|                 displayName |   | 1..1 | agens överkänslighet kod |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|               value | CV | 1..1 |   |   | uppmärksamhetssignal.agens överkänslighet kod | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |         hypersensitivityAgentCode | CVType |   | 0..1 | Text som anger den kod som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion. Exempelvis kan LMK-kod för överkänslighet födoämne eller CAS-kod för överkänslighet kemikalie användas. Kan användas för annan överkänslighet än läkemedelsöverkänslighet. |   |
|                   code |   | 0..1 |   |   |   |   |           code |   | string | 0..1 | Kod. Om code anges måste också codeSystem och displayName också anges. |   |
|                   displayName |   | 0..1 |   |   |   |   |           displayName |   | string | 0..1 | Klartext. Om displayName anges måste också code och codeSystem anges. |   |
|                   codeSystem |   | 0..1 |   |   |   |   |           codeSystem |   | string | 0..1 | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. |   |
|                   codeSystenName |   | 0..1 |   |   |   |   |           codeSystemName |   | string | 0..1 | Klartext för kodsystem. |   |
|                   codeSystemVersion |   | 0..1 |   |   |   |   |           codeSystemVersion |   | string | 0..1 | Kodsystemsversion |   |
|                   originalText |   | 0..1 |   |   |   |   |           originalText |   | string | 0..1 | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. |   |
|           entry |   | 0..1 |   |   |   |   |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.nonATCSubstance |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   | Om alertInformationBody.nonATCSubstanceComment är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-uas-sjd |   |   |   |   |   |   |   |   |   |
|                 displayName |   | 1..1 | sjukdom |   |   |   |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |     seriousDisease |   |   | 0..1 | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). |   |
|               value | ST | 1..1 | * |   | uppmärksamhetssignal.sjukdom |   |       disease | CVType |   | 1..1 | Kod som beskriver en allvarlig sjukdom som vård- och omsorgstagaren har och som en vård- och omsorgspersonal vill göra andra uppmärksammade på (avsaknad av kunskap om att vård- och omsorgstagaren har denna sjukdom skulle kunna innebära ett allvarligt hot för liv eller hälsa för vård- och omsorgstagaren). Bör anges enligt ICD10/SNOMED. |   |
|           entry |   | 0..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |         code |   | string | 0..1 |   |   |
|             observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |         displayName |   | string | 0..1 |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |         codeSystem |   | string | 0..1 |   |   |
|               moodCode |   | 1..1 | EVN |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |         codeSystemName |   | string | 0..1 |   |   |
|               code |   | 1..1 |   |   |   |   |         codeSystemVersion |   | string | 0..1 |   |   |
|                 code |   | 1..1 | upp-ube-beh |   |   |   |         originalText |   | string | 0..1 |   |   |
|                 displayName |   | 1..1 | behandling |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.nonATCSubstanceComment |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | Om minst en alertInformationBody.pharmaceuticalProductId är angiven skapas denna …section.entry.observation.entryRelationship (endast en skapas) |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |     treatment |   |   | 0..1 | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). |   |
|               value | ST | 1..1 | * |   | uppmärksamhetssignal.behandling |   |       treatment |   | string | 1..1 | Text som beskriver en allvarlig behandling som vård- och omsorgstagaren genomgår och som en vård- och omsorgspersonal vill göra andra uppmärksammade på (avsaknad av kunskap om att vård- och omsorgstagaren har denna behandling skulle kunna innebära ett allvarligt hot för liv eller hälsa för vård- och omsorgstagaren). |   |
|           entry |   | 0..1 |   |   |   |   |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   |   |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-ube-kod |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |   |   |   |   |   |   |
|                 displayName |   | 1..1 | behandlingskod |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |   |   |   |   |   |   |
|               value | ST | 1..1 | * |   | uppmärksamhetssignal.behandlingskod |   |       treatmentCode |   | string | 0..1 | En preciserad uppgift om behandlingen. Bör anges med KVÅ-kod (1.2.752.116.1.3.2.1.4) |   |
|           entry |   | 0..* |   | en entry skapas för varje alertInformationBody.pharmaceuticalTreatment |   | För varje alertInformationBody.pharmaceuticalProductId skapas en …section.entry.observation.entryRelationship.observation.value.id |         code |   | string | 0..1 |   |   |
|             observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.value.id.root = 1.2.752.129.2.1.5.1 |         displayName |   | string | 0..1 |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.value.id.extension = alertInformationBody.pharmaceuticalProductId.pharmaceuticalProductIdExtension |         codeSystem |   | string | 0..1 |   |   |
|               moodCode |   | 1..1 | EVN |   |   | Om alertInformationBody.hypersensitivityAgent är angiven skapas denna …section.entry.observation.entryRelationship |         codeSystemName |   | string | 0..1 |   |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |         codeSystemVersion |   | string | 0..1 |   |   |
|                 code |   | 1..1 | upp-ube-lbe |   |   |   |         originalText |   | string | 0..1 |   |   |
|                 displayName |   | 1..1 | läkemedelsbehandling |   |   |   |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|               value | CV | 1..1 |   |   | uppmärksamhetssignal.läkemedelsbehandling |   |       pharmaceuticalTreatment | CVType |   | 0..* | Kod och klartext som anger uppgift om den eller de läkemedel som används vid en uppmärksammad behandling. / NPÖ RIV 2.2.0 kräver att ATC-kod (1.2.752.129.2.2.3.1.1) används. |   |
|                 code |   | 1..1 | * |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |         code |   | string | 0..1 | Läkemedlets (ATC-)kod. Om code anges måste också codeSystem och displayName anges. |   |
|                 displayName |   | 1..1 | * |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |         displayName |   | string | 0..1 | Klartext för läkemedel (namn på läkemedel). Om displayName anges måste också code och codeSystem anges. |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.3.1.1 |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |         codeSystem |   | string | 0..1 | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. |   |
|                 codeSystemName |   | 1..1 | ATC |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |         codeSystemName |   | string | 0..1 | Klartext för kodsystem. |   |
|           entry |   | 0..1 |   |   |   |   |         codeSystemVersion |   | string | 0..1 | Kodsystemsversion. |   |
|             observation |   | 1..1 |   |   |   |   |         originaltext |   | string | 0..1 | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.hypersensitivityAgent |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   | Om alertInformationBody.hypersensitivityAgentCode är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-arb-smf-sjd |   |   |   |   |   |   |   |   |   |
|                 displayName |   | 1..1 | smittsam sjukdom |   |   |   |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |     communicableDisease |   |   | 0..1 | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). |   |
|               value | ST | 1..1 | * |   | uppmärksamhetssignal.smittsam sjukdom |   |       communicableDisease | CVType |   | 1..1 | Kod som anger en precisering av vilken smittsam sjukdom som vård- och omsorgstagaren har. Bör anges som ICD10-kod. |   |
|           entry |   | 0..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |         code |   | string | 0..1 |   |   |
|             observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |         displayName |   | string | 0..1 |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |         codeSystem |   | string | 0..1 |   |   |
|               moodCode |   | 1..1 | EVN |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |         codeSystemName |   | string | 0..1 |   |   |
|               code |   | 1..1 |   |   |   |   |         codeSystemVersion |   | string | 0..1 |   |   |
|                 code |   | 1..1 | upp-arb-smf-vag |   |   |   |         originalText |   | string | 0..1 |   |   |
|                 displayName |   | 1..1 | smittväg |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.hypersensitivityAgentCode |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | Om alertInformationBody.disease är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|               value | ST | 1..1 | * |   | uppmärksamhetssignal.smittväg |   |       routeOfTransmission | CVType |   | 0..1 | Kod som anger hur den uppmärksammade sjukdomen smittar. Obligatorisk uppgift om det styrs av författning. För kompatibilitet med NPÖ RIV 2.2.0 ska detta anges. Kan följa KV Smittväg. |   |
|           entry |   | 0..1 |   |   |   |   |         code |   | string | 0..1 |   |   |
|             observation |   | 1..1 |   |   |   |   |         displayName |   | string | 0..1 |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |         codeSystem |   | string | 0..1 |   |   |
|               moodCode |   | 1..1 | EVN |   |   |   |         codeSystemName |   | string | 0..1 |   |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |         codeSystemVersion |   | string | 0..1 |   |   |
|                 code |   | 1..1 | upp-vbe-vbe |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |         originalText |   | string | 0..1 |   |   |
|                 displayName |   | 1..1 | vårdbegränsning |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |     restrictionOfCare |   |   | 0..1 | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). Denna klass skiljer sig sig något från motsvarigheten i Varning2-infospec. |   |
|               value | ST | 1..1 | * |   | uppmärksamhetssignal.vårdbegränsning |   |       restrictionOfCare |   | string | 1..1 | Text som innehåller information om ett uppmärskammat förhållande som inte avser överkänslighet, annat medicinskt tillstånd, behandling eller arbetsmiljörisk. |   |
|           entry |   | 0..1 |   |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.disease |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   | Om alertInformationBody.treatment är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   |   |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-est-rub |   |   |   |   |   |   |   |   |   |
|                 displayName |   | 1..1 | ej strukturanpassad rubrik |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |     unstructuredAlertInformation |   |   | 0..1 | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). |   |
|               value | ST | 1..1 | * |   | uppmärksamhetssignal.ej strukturanpassad rubrik | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |       unstructuredAlertInformationHeading |   | string | 1..1 | Text som innehåller en beskrivande rubrik för en tidigare utfärdad varning. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen. |   |
|           entry |   | 0..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   |   |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN |   |   |   |   |   |   |   |   |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.treatment |   |   |   |   |   |   |
|                 code |   | 1..1 | upp-set-inh |   |   | Om alertInformationBody.treatmentCode är angiven skapas denna …section.entry.observation.entryRelationship.observation.entryRelationship |   |   |   |   |   |   |
|                 displayName |   | 1..1 | ej strukturanpassat innehåll |   |   | …section.entry.observation.entryRelationship.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|                 codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |   |   |   |
|                 codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |   |   |   |   |   |   |
|               value | ST | 1..1 | * |   | uppmärksamhetssignal.ej strukturanpassat innehåll |   |       unstructuredAlertInformationContent |   | string | 1..1 | Text som beskriver vad varningen gäller, samt viss administrativ information. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen. |   |
|           entry |   | 0..* |   |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|             observation |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|               classCode |   | 1..1 | OBS |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|               moodCode |   | 1..1 | EVN/DEF |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |     relatedAlertInformation | RelatedAlertInformationType |   | 0..* | Information om samband uppmärksamhetssignal |   |
|               code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |       typeOfAlertInformationRelationship | CVType |   | 1..1 | Text som anger vilken typ av samband som avses. NPÖ RIV 2.2.0 kräver att KV Sambandstyp (1.2.752.129.2.2.2.4) används. |   |
|                 code |   | 0..1 |   |   | samband uppmärksamhetssignal.typ av samband | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |         code |   | string | 0..1 | Kod för samband uppmärksamhetssignal. Om code anges måste också displayName och codeSystem anges. |   |
|                 displayName |   | 0..1 |   |   |   |   |         displayName |   | string | 0..1 | Klartext för samband uppmärksamhetssignal. Om displayName anges måste också code och codeSystem anges |   |
|                 codeSystem |   | 0..1 |   | (1.2.752.129.2.2.2.4) |   |   |         codeSystem |   | string | 0..1 | Kodsystem för samband uppmärksamhetssignal. Om codeSystem anges måste också code och displayName anges. |   |
|                 codeSystemName |   | 0..1 |   | (KV Sambandstyp) |   | …section.entry.observation.entryRelationship.observation.entryRelationship.observation.value.????? = alertInformationBody.treatmentCode |         codeSystemName |   | string | 0..1 | Klartext för kodsystem för samband uppmärksamhetssignal. |   |
|                 codeSystemVersion |   | 0..1 |   |   |   | Om alertInformationBody.pharmaceuticalTreatmentCode är angiven skapas denna …section.entry.observation.entryRelationship.observation.entryRelationship |         codeSystemVersion |   | string | 0..1 | Version för kodsystem för samband uppmärksamhetssignal. |   |
|                 originalText |   | 0..1 |   |   |   | …section.entry.observation.entryRelationship.observation.entryRelationship.typeCode = COMP |         originalText |   | string | 0..1 | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall skall en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. |   |
|               entryRelationship |   | 0..1 |   |   |   |   |   |   |   |   |   |   |
|                 typeCode |   | 1..1 | REFR |   |   |   |   |   |   |   |   |   |
|                 contextConductionInd |   | 1..1 | true |   |   |   |   |   |   |   |   |   |
|                 observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|                   classCode |   | 1..1 | OBS |   |   |   |   |   |   |   |   |   |
|                   moodCode |   | 1..1 | EVN |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|                   code |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |   |   |   |   |   |   |
|                     code |   | 1..1 | upp-upp-ksb |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|                     displayName |   | 1..1 | Kommentar samband |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|                     codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   | samband uppmärksamhetssignal.kommentar samband |   |       relationComment |   | string | 0..1 | Text som innehåller en kommentar till det aktuella sambandet |   |
|                     codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |   |   |   |   |   |   |
|                   value | ST | 1..1 |   |   |   |   |       documentId |   | string | 1..* | Unik identitet för relaterad uppmärksamhetssignal |   |
|               entryRelationship |   | 1..* |   |   |   | …section.entry.observation.entryRelationship.observation.entryRelationship.observation.value.code.code = alertInformationBody.pharmaceuticalTreatmentCode.pharmaceuticalTreatmentCodeCode |   |   |   |   |   |   |
|                 typeCode |   | 1..1 | REFR |   |   | …section.entry.observation.entryRelationship.observation.entryRelationship.observation.value.code.displayName = alertInformationBody.pharmaceuticalTreatmentCode.pharmaceuticalTreatmentCodeDisplayName |   |   |   |   |   |   |
|                 contextConductionInd |   | 1..1 | true |   |   | …section.entry.observation.entryRelationship.observation.entryRelationship.observation.value.code.codeSystem = 1.2.752.129.2.2.3.1.1 |   |   |   |   |   |   |
|                 observation |   | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.entryRelationship.observation.value.code.codeSystemName = ATC |   |   |   |   |   |   |
|                   classCode |   | 1..1 | OBS |   |   | Om alertInformationBody.communicableDisease är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|                   moodCode |   | 1..1 | EVN |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|                   code |   | 1..1 |   |   |   |   |   |   |   |   |   |   |
|                     code |   | 1..1 | upp |   |   |   |   |   |   |   |   |   |
|                     displayName |   | 1..1 | Informationsmängd uppmärksamhetssignal |   |   |   |   |   |   |   |   |   |
|                     codeSystem |   | 1..1 | 1.2.752.129.2.2.2.1 |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|                     codeSystemName |   | 1..1 | KV Informationstyp |   |   |   |   |   |   |   |   |   |
|                   value | ST | 1..1 |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|                     extension |   | 1..1 | * | Unik identifierare för aktuellt informationsobjekt (diagnosdokument). / Globalt unik identitet, skapas genom konkatenering av Systemets HSA-id och ett lokalt unikt id. | uppmärksamhetssignal.samband uppmärksamhetssignal.uppmärksamhetssignal.uppmärksamhetssignal-id | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |   |   |   |   |   |   |
|                     root |   | 1..1 | 1.2.752.129.2.1.2.1 | Föreslagen OID för för Icke-nationell identifierare Org+lokalt unikt id (1.2.752.129.2.1.2.1) |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.communicableDisease |   |   |   |   |   |   |
|   |   |   |   |   |   | Om alertInformationBody.routeOfTransmission är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.routeOfTransmission |   |   |   |   |   |   |
|   |   |   |   |   |   | Om alertInformationBody.restrictionOfCare är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.restrictionofCare |   |   |   |   |   |   |
|   |   |   |   |   |   | Om alertInformationBody.nonStructurallyAdaptedInformationHeadline är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.nonStructurallyAdaptedInformationHeadline |   |   |   |   |   |   |
|   |   |   |   |   |   | Om alertInformationBody.nonStructurallyAdaptedInformationContent är angiven skapas denna …section.entry.observation.entryRelationship |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.typeCode = COMP |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.moodCode = EVN |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.code = upp-okh-typ |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.displayName = typ av överkänslighet |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystem = 1.2.752.129.2.2.2.1 |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.code.codeSystemName = KV Informationstyp |   |   |   |   |   |   |
|   |   |   |   |   |   | …section.entry.observation.entryRelationship.observation.value.????? = alertInformationBody.nonStructurallyAdaptedInformationContent |   |   |   |   |   |   |
|   |   |   |   |   |   | För varje typeOfAlertInformationRelationCode skapas en …section.entry.observation.entryRelationship |   |   |   |   |   |   |

#### GetAlertInformation: flik ”Blad1”

| |
| :--- |
| classCode |
| id |
| code |
| addr |
| telecom |
| assignedPerson |
| representedOrganization |


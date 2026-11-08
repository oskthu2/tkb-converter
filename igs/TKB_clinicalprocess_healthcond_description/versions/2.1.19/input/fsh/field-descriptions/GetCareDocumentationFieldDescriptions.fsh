// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareDocumentationFieldDescriptions
* careDocumentation ^definition = "De hälso- och sjukvårdsdokument som matchar begäran."
* careDocumentation ^comment = "TKB-fält: `careDocumentation` (`CareDocumentationType`, kardinalitet 0..*)."
* careDocumentation.careDocumentationHeader ^definition = "Innehåller basinformation om dokumentet"
* careDocumentation.careDocumentationHeader ^comment = "TKB-fält: `../careDocumentationHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.documentId ^definition = "Dokumentets identitet som är unik inom källsystemet.

Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* careDocumentation.careDocumentationHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.sourceSystemHSAid ^definition = "HSA-id för det system som dokumentet är skapat i.

Notera att elementnamnet i de andra kontrakten är sourceSystemHSAId (med ett versalt I). Skälet till avvikelsen här är p.g.a. behovet av detta kontrakts bakåtkompatibilitet med kontraktet i version 2.0."
* careDocumentation.careDocumentationHeader.sourceSystemHSAid ^comment = "TKB-fält: `../../sourceSystemHSAid` (`HSAIdType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.documentTitle ^definition = "Titel som beskriver den information som sänds i dokumentet."
* careDocumentation.careDocumentationHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.documentTime ^definition = "Händelsetidpunkt. Tidsangivelse för den händelse dokumentet gäller."
* careDocumentation.careDocumentationHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.patientId ^definition = "Identifierare för patient."
* careDocumentation.careDocumentationHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet."
* careDocumentation.careDocumentationHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering"
* careDocumentation.careDocumentationHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet"
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* careDocumentation.careDocumentationHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.careContactId ^definition = "Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet"
* careDocumentation.careDocumentationHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.nullified ^definition = "N/A"
* careDocumentation.careDocumentationHeader.nullified ^comment = "TKB-fält: `../../nullified` (kardinalitet 0..0)."
* careDocumentation.careDocumentationHeader.nullifiedReason ^definition = "N/A"
* careDocumentation.careDocumentationHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0)."
* careDocumentation.careDocumentationBody ^comment = "TKB-fält: `../careDocumentationBody` (`CareDocumentationBodyType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote ^definition = "Dokument/anteckning."
* careDocumentation.careDocumentationBody.clinicalDocumentNote ^comment = "TKB-fält: `../../clinicalDocumentNote` (`ClinicalDocumentNoteType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteCode ^definition = "Obligatoriskt om clinicalDocumentTypeCode saknas. Får annars inte anges samtidigt med clinicalDocumentTypeCode.

Typ av hälso- och sjukvårdsdokument. Kod tas från KV Anteckningstyp (1.2.752.129.2.2.2.11).

Tillåtna värden är:

utr = Utredning,

atb = åtgärd/Behandling,

sam = Sammanfattning,

sao = Samordning,

ins = Inskrivning,

slu = Slutanteckning,

auf = Anteckning utan fysiskt möte,

sva = Slutenvårdsanteckning,

bes = Besöksanteckning."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteCode ^comment = "TKB-fält: `../../../clinicalDocumentNoteCode` (`ClinicalDocumentNoteCodeEnum`, kardinalitet 0..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentTypeCode ^definition = "Obligatoriskt om clinicalDocumentNoteCode saknas. Får annars inte anges samtidigt med clinicalDocumentNoteCode.

Epikris = epi

Intagninganteckning = int

Daganteckning = dag

Öppenvårdsanteckning = ova Öppenvårdssammanfattning = ovs

Övrigt document = ovr"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentTypeCode ^comment = "TKB-fält: `../../../clinicalDocumentTypeCode` (`ClinicalDocumentTypeCodeEnum`, kardinalitet 0..0).

**Modellanteckning:** clinicalDocumentTypeCode Tillåtna värden: epi, int, dag, ova, ovs, ovr."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteTitle ^definition = "Titel på dokument"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteTitle ^comment = "TKB-fält: `../../../clinicalDocumentNoteTitle` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteText ^definition = "Dokumentets innehåll i text.

Texten kan antingen skickas som vanlig text eller formaterat enligt DocBook-standarden, se 7.1.3.

Obs Man kan välja att skicka dokumentets innehåll i elementet clinicalDocumentNoteText eller i multimediaEntry enligt respektive elements regler, man får inte skicka med båda elementen. Regeln finns med i constraints.xml (schematron) under katalogen test-suites och kan valideras med testsviten."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteText ^comment = "TKB-fält: `../../../clinicalDocumentNoteText` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry ^definition = "Dokumentets innehåll i form av en multimediaobjekt, i form av antingen ett inbäddat objekt eller en länk till objektet.

Obs Man kan välja att skicka dokumentets innehåll i elementet clinicalDocumentNoteText eller i multimediaEntry enligt respektive elements regler, man får inte skicka med båda elementen. Regeln finns med i constraints.xml(schematron) under katalogen test-suites och kan valideras med testsviten."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry ^comment = "TKB-fält: `../../../multimediaEntry` (`MultimediaType`, kardinalitet 0..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.mediaType ^definition = "Typ av multimedia (enligt HL7)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.mediaType ^comment = "TKB-fält: `../../../../ mediaType` (`MediaTypeEnum`, kardinalitet 1..1).

**Modellanteckning:** mediaType Tillåtna värden: application/dicom, application/msword, application/pdf, audio/basic, audio/k32adpcm, audio/mpeg, image/g3fax, image/gif, image/jpeg, image/png, image/tiff, model/vrml, multipart/x-hl7-cda-level1, text/html, text/plain, text/rtf, text/sgml, text/x-hl7-ft, text/xml, video/mpeg, video/x-avi."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.value ^definition = "Value är binärdata som representerar objektet. Ett och endast ett av attributen value och reference ska anges."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.value ^comment = "TKB-fält: `../../../../value` (`base64Binary`, kardinalitet 0..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.reference ^definition = "Referens till extern bild i form av en URL. Ett och endast ett av attributen value och reference ska anges."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.reference ^comment = "TKB-fält: `../../../../reference` (`anyURI`, kardinalitet 0..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** errorCode Tillåtna värden: INVALID_REQUEST."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.subCode ^definition = "Inga subkoder är specificerade."
* result.subCode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."

# 7 Tjänstekontrakt - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

## Tjänstekontrakt

### GetReferralOutcome

GetReferralOutcome returnerar svar på en konsultationsremiss för en patient.

#### Version

3.1

#### Gemensamma informationskomponenter

De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_4.pdf”. Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careUnitHSAid | HSAIdType | Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfessional. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. / 1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime och signatureTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / Om signatureTime inte är angiven ersätts den med dagens datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till remissvar som är skapat i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..* |
| Svar |   |   |   |
| referralOutcome | ReferralOutcomeType | Returnerar en patients konsultationsremissvar. | 0..* |
| ../referralOutcomeHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSAid för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| ../../documentTime | TimeStampType | Tidpunkten då remissvaret inkom till remittentens vårdinformationssystem. | 1..1 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Identiteten enligt den identitetstyp (type) som angivits. Anges med 12 tecken utan bindestreck. | 1..1 |
| ../../../type | string | OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt vid vilken remissvaret skapades eller senast uppdaterades i remissmottagarens vårdinformationssystem. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitname | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för Vårdenhet som hälso-och sjukvårdsperson är uppdragstagare för. Ska anges om tillgänglig. [Regel 2] | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. [Regel 2] | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. Signering = signering av remissvar. Information om vidimering sker i attributet attested i bodyn. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering | 1..1 |
| ../../../legalAuthenticatorHSAid | HSAIdType | HSA-id för person som signerat dokumentet. | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person | 0..1 |
| ../../../legalAuthenticatorRoleCode |   | Ska ej anges. | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..1 |
| ../../nullified |   | Ska ej anges. | 0..0 |
| ../../nullifiedReason |   | Ska ej anges. | 0..0 |
| ../referralOutcomeBody | ReferralOutcomeBodyType |   | 1..1 |
| ../../referralOutcomeTypeCode | referralOutcomeTypeCodeEnum | Anger typ av svar. / Giltiga koder: / SR, svar på remissfråga / SS, slutsvar på remissfråga | 1..1 |
| ../../referralOutcomeTitle | string | Text som beskriver vilken specialitet som utlåtandet gäller. Typen av specialitet som anlitats anges i text. / Exempel: / Patologi / Klinisk fysik / Logopedi | 1..1 |
| ../../referralOutcomeText | string | Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet. | 1..1 |
| ../../clinicalInformation | ClinicalInformationType | Klinisk information för remissvaret. Dessa kliniska data är direkt kopplat till svaret. | 0..* |
| ../../../clinicalInformationCode | ClinicalInformationCodeType | Kod för åtgärd. / Koden anges i code. / Kodverkets OID i codeSystem. | 1..1 |
| ../../../../code | string | Kod. | 1..1 |
| ../../../../codeSystem | string | Kod kan komma från kodverket ICD-10 (1.2.752.116.1.1.1.1.3) men andra kodverk kan förekomma. | 1..1 |
| ../../../clinicalInformationText | string | Beskrivning av klinisk information | 1..1 |
| ../../act | ActType | Utförd åtgärd | 0..* |
| ../../../actId | string | Åtgärdens identitet som är unik inom det lokala avsändande systemet | 0..1 |
| ../../../actCode | ActCodeType | Kod för åtgärd. / Koden anges i code. / Kodverkets OID anges i codeSystem. | 0..1 |
| ../../../../code | string | Nullvärde är tillåtet om kod ej är tillgänglig, och åtgärdskodstext ska då skrivas i`<actText>`. | 1..1 |
| ../../../../codeSystem | string | Lämpliga kodverk kan vara: KVÅ (1.2.752.116.1.3.2.1.4) men andra kodverk kan förekomma. | 1..1 |
| ../../../actText | string | Text som anger namnet på den kod som anges i attributet åtgärdskod. Beskrivning av åtgärd anges här om ingen kod har angetts i attributet åtgärdskod. | 1..1 |
| ../../../actTime | TimeStampType | Tidpunkt då åtgärd genomfördes | 0..1 |
| ../../../actResult | MultimediaType | Resultat av åtgärd. Data i form av bifogade bilder eller liknande | 0..* |
| ../../../../id |   | Ska ej anges. | 0..0 |
| ../../../../mediaType | MediaTypeEnum | Typ av multimedia | 1..1 |
| ../../../../value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges. | 0..1 |
| ../../../../reference | anyURI | Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. | 0..1 |
| ../../attested | AttestedType | Information om vidimering av enskild utförd åtgärd med tillhörande resultat. Finns attester är åtgärden vidimerad. Med vidimerat menas att information om åtgärden har lästs och den som läst har tagit ansvar. | 0..1 |
| ../../../attestedTime | TimeStampType | Tidpunkten för vidimering | 1..1 |
| ../../../attesterHSAId | HSAIdType | HSA-id för person som vidimerat | 0..1 |
| ../../../attesterName | string | Namn på person som vidimerat | 0..1 |
| ../../referral | ReferralType | Information om den vårdbegäran som ligger till grund för svaret | 1..1 |
| ../../../referralId | string | Remissens identitet som är unik inom det lokala avsändade systemet | 1..1 |
| ../../../referralReason | string | Text som anger aktuell frågeställning. | 1..1 |
| ../../../referralTime | TimeStampType | Tid då vårdbegäran framställdes. | 0..1 |
| ../../../referralAuthor | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallas författare. | 1..1 |
| ../../../../authorTime | TimeStampType | Tidpunkt då vårdbegäran registrerades i systemet. | 1..1 |
| ../../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitname | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../../orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby” | 0..1 |
| ../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId |   | Ska ej anges. | 0..0 |
| ../../../../healthcareProfessionalCareGiverHSAId |   | Ska ej anges. | 0..0 |
| ../../../careContactId | string | Identitet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. Detta ID kan användas för att genom tjänstekontaktet GetCareContacts (annan tjänstedomän) hämta kompletterandekontaktinformation. | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| | | | |
| :--- | :--- | :--- | :--- |
| Regel 1 | Producenter av GetReferralOutcome måste följa de generella riktlinjer för binära bilagor, se referens R12. Inbäddade bilagor får inte överstiga 100KB |   |   |
| Regel 2 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |

##### Icke funktionella krav

Inga övriga icke funktionella krav.

###### SLA-krav

Inga avvikande SLA-krav.

#### Annan information om kontraktet

Ingen annan information om kontraktet finns.

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetReferralOutcomeInteraction_3.1_RIVTABP21.wsdl](GetReferralOutcomeInteraction_3.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetReferralOutcomeResponder_3.1.xsd](GetReferralOutcomeResponder_3.1.xsd) | Tjänstespecifikt schema |
| [clinicalprocess_healthcond_actoutcome_3.1.xsd](clinicalprocess_healthcond_actoutcome_3.1.xsd) | Domänschema (delat) |
| [clinicalprocess_healthcond_actoutcome_3.1_ext.xsd](clinicalprocess_healthcond_actoutcome_3.1_ext.xsd) | Domänschema, extensions |
| [clinicalprocess_healthcond_actoutcome_enum_3.1.xsd](clinicalprocess_healthcond_actoutcome_enum_3.1.xsd) | Domänschema, enumerationer |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |
| [SjD_TK_GetReferralOutcome_3.1.docx](SjD_TK_GetReferralOutcome_3.1.docx) | Självdeklaration, tjänstekonsument |
| [SjD_TP_GetReferralOutcome_3.1.docx](SjD_TP_GetReferralOutcome_3.1.docx) | Självdeklaration, tjänsteproducent |
| [AB_clinicalprocess_healthcond_actoutcome.docx](AB_clinicalprocess_healthcond_actoutcome.docx) | Arkitekturella beslut |
| [Bilaga_Gemensamma_typer_4.pdf](Bilaga_Gemensamma_typer_4.pdf) | Bilaga: gemensamma typer |
| [Bilaga_MIM_Mappningar_GetReferralOutcome.xlsx](Bilaga_MIM_Mappningar_GetReferralOutcome.xlsx) | Bilaga: CDA-mappning |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (svar):** [StructureDefinition/getreferraloutcome](StructureDefinition-getreferraloutcome.md)
* **Logisk modell (begäran):** [StructureDefinition/getreferraloutcome-request](StructureDefinition-getreferraloutcome-request.md)
* **Kodsystem:** [CodeSystem/referraloutcometypecode-cs](CodeSystem-referraloutcometypecode-cs.md)
* **ValueSet:** [ValueSet/referraloutcometypecode-vs](ValueSet-referraloutcometypecode-vs.md)
* **Kodsystem:** [CodeSystem/mediatype-cs](CodeSystem-mediatype-cs.md)
* **ValueSet:** [ValueSet/mediatype-vs](ValueSet-mediatype-vs.md)
* **Kodsystem:** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.md)
* **ValueSet:** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.md)
* **Kodsystem:** [CodeSystem/errorcode-cs](CodeSystem-errorcode-cs.md)
* **ValueSet:** [ValueSet/errorcode-vs](ValueSet-errorcode-vs.md)

### GetMaternityMedicalHistory

GetMaternityMedicalHistory returnerar mödravårdsjournal för en patient.

#### Version

2.0

#### Gemensamma informationskomponenter

De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_4.pdf”.

Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careUnitHSAid | HSAIdType | Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfessional. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. / 1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna documentTime, authorTime och signatureTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatumet / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / Obs I schemat är elementet felaktigt döpt till timePeriod, men är av rätt typ dvs DatePeriodType. / Elementnamnet ändras i nästa majorversion. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till mödravårdsjournal som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..* |
| Svar |   |   |   |
| maternityMedicalRecord | MaternityMedicalRecordType | En moders mödravårdsjournal. | 0..* |
| ../maternityMedicalRecordHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet. | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSAid för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| ../../documentTime | TimeStampType | Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten. | 1..1 |
| ../../patientId | PersonIdType | Id för modern. / id sätts till patientens identifierare, anges med 12 siffror utan avskiljare. / Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| …/../../id | string | Sätts till moderns identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3). | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten. I de fall då journalinformationen skapats i ett annat informationssystem (t.ex. laboratoriesystem eller annan remittents journalsystem) är det tidpunkten då journalinformationen ursprungligen skapades som ska anges. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Författarens HSA-id. | 1..1 |
| ../../../healthcareProfessionalName | string | Författarens namn. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om författarens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare på. |   |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för den organisation som författaren är uppdragstagare på. | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare på. | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till enhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för Vårdenhet. [Regel 1] | 1..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. [Regel 1] | 1..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIDType | HSA-id för person som signerat dokumentet. | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../../legalAuthenticatorRoleCode |   | Ska ej anges. | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..1 |
| ../../nullified | string | Ska ej anges | 0..0 |
| ../../nullifiedReason | string | Ska ej anges | 0..0 |
| ../maternityMedicalRecordBody | MaternityMedicalRecordBodyType | Kan bestå av antingen en registrationRecord, en pregnancyCheckupRecord eller en postDeliveryRecord. | 1..1 |
| ../../registrationRecord | RegistrationRecordType | Information som registreras vid inskrivningsbesöket. | 0..1 |
| ../../../lastMenstrualPeriod | DateType | Datum för senaste menstruation | 0..1 |
| ../../../indicationPregnancy | DateType | Datum för graviditetsindikation | 0..1 |
| ../../../contraceptiveDiscontinued | DateType | Datum för när moder upphört med preventivtablett | 0..1 |
| ../../../expectedDayOfDeliveryFromLastMenstrualPeriod | DateType | Beräknad förlossning enligt sista menstruation | 0..1 |
| ../../../expectedDayOfDeliveryFromUltrasoundScan | DateType | Beräknad förlossning enligt ultraljud | 0..1 |
| ../../../expectedDayOfDeliveryFromEmbryonicTransfer | DateType | Beräknad förlossning enligt embryonik transfer | 0..1 |
| ../../../length | PQType | Längd vid inskrivning | 0..1 |
| ../../../weight | PQType | Vikt vid inskrivning [massa] | 0..1 |
| ../../../bodyMassIndex | PQType | BMI vid inskrivning [massa/yta] | 0..1 |
| ../../../infertility | decimal | Antal år med ofrivillig barnlöshet (decimaltal) | 0..1 |
| ../../../previousGravidityAndParity | PreviousGravidityAndParityType | Tidigare graviditeter och förlossningar | 0..* |
| ../../../../year | int | År för tidigare graviditet eller förlossning | 1..1 |
| ../../../../month | int | Månad för tidigare graviditet eller förlossning | 1..1 |
| ../../../../delivery | DeliveryCodeEnum | Graviditet förlossning enligt kodverk: | 0..1 |
| ../../../../healthcareFacility | string | Sjukhus | 0..1 |
| ../../../../progress | string | Förlopp | 0..1 |
| ../../../../sex | SexCodeEnum | Kön, giltiga värden 0,1,2 och 9 enligt kodverk med OID 1.2.752.129.2.2.1.1: / 0 = okänt, / 1 = man, / 2 = kvinna, / 9 = ej tillämpligt | 0..1 |
| ../../../../weightOfChild | PQType | Barnets vikt [massa] | 0..1 |
| ../../../../gestation | int | Graviditetsvecka. | 0..1 |
| ../../../diseasesThrombosis | bool | Trombos (true/false) | 0..1 |
| ../../../diseasesEndocineDiseases | bool | Endokrina sjukdomar (true/false) | 0..1 |
| ../../../diseasesRecurrentUrinaryTractInfections | bool | Upprepade urinvägsinfektioner (true/false) | 0..1 |
| ../../../diseasesDiabetesMellitus | bool | Diabetes mellitus (true/false) | 0..1 |
| ../../../medicationDuringPregnacy | MedicationType | Före inskrivning under graviditet: medicinering | 0..* |
| ../../../../medicament | string | Preparat | 1..1 |
| ../../../../dosage | string | Dosering i beskrivande text | 0..1 |
| ../../../assessmentAtFirstContactStandardCare | bool | Bedömning vid 1:a besök: basprogram (true/false) | 0..1 |
| ../../pregnancyCheckupRecord | PregnancyCheckupRecordType | Graviditetskontroll | 0..1 |
| ../../../completeWeeksOfGestation | int | Fullgångna graviditetsveckor | 0..1 |
| ../../../weight | PQType | Moderns vikt [massa] | 0..1 |
| ../../../symphysisFundalHeight | PQType | Symfys-fundus mått [längd] | 0..1 |
| ../../../haemoglobin | PQType | Hb (Hemoglobin) [massa / volym] | 0..1 |
| ../../../bloodPressureSystolic | PQType | Systoliskt blodtryck [tryck] | 0..1 |
| ../../../bloodPressureDiastolic | PQType | Diastoliskt blodtryck [tryck] | 0..1 |
| ../../../proteinuria | PQType | Proteinuri - Protein i urinet [massa / volym] / Mängden protein ska alltså anges i g/l eller motsvarande. Använd INTE mätstickans kodning (0, 1+, 2+…) | 0..1 |
| ../../../glycosuria | PQType | Glucosuri - Glucos i urinet [antal / volym] / Förväntad enhet är mmol/l. Använd INTE mätstickans kodning (0, 1+, 2+…) / OBS! U på svenska men y på engelska (ICD10). | 0..1 |
| ../../../fetalPosition | FetalPositionCodeEnum | Fosterläge enligt kodverk: / 0 = head (huvud ) / 1 = breech (säte) / 2 = oblique (snedläge) / 3 = transverse (tvärläge) | 0..* |
| ../../../fetalPresentation | FetalPresentationCodeEnum | Föregående fosterdel enligt kodverk: / 0= mobile (rörligt), / 1 = movable (ruckbart), / 2 = fixed (fix) | 0..* |
| ../../../fetalHeartRate | PQType | Fosterljud, hjärtslag, ex. bpm [frekvens] | 0..* |
| ../../../typeOfLeave | TypeOfLeaveCodeEnum | Typ av ledighet enligt kodverk / 0 = Sjukskrivning, / 1 = Havandekapsledighet, / 2 = Föräldrarledighet | 0..* |
| ../../../medicationSinceRegistration | MedicationType | Läkemedel (även kostpreparat) som administrerats sedan registreringen / föregående ”checkup”. | 0..* |
| ../../../../medicament | string | Preparat | 1..1 |
| ../../../../dosage | string | Dosering i beskrivande text | 0..1 |
| ../../postDeliveryRecord | PostDeliveryRecordType | Efterskötning | 0..1 |
| ../../../motherPostDeliveryRecord | MotherPostDeliveryRecordType | Efterskötningsjournal, moder | 1..1 |
| ../../../../breastfeeding | boolean | Ammar (true/false) | 0..1 |
| ../../../../bloodPressureSystolic | PQType | Systoliskt blodtryck [tryck] | 0..1 |
| ../../../../bloodPressureDiastolic | PQType | Diastoliskt blodtryck [tryck] | 0..1 |
| ../../../../haemoglobin | PQType | Haemoglobin, t.ex. g/L [massa / volym] | 0..1 |
| ../../../../bodyTemperature | decimal | Kroppstemperatur | 0..1 |
| ../../../../scarsOK | boolean | Sår/bristningar/klipp utan anmärkning (true/false) | 0..1 |
| ../../../../sutureRemoved | boolean | Suturer borttagna (true/false) | 0..1 |
| ../../../../perineumComfortable | boolean | Bäckenbotten utan anmärkning (true/false) | 0..1 |
| ../../../../vulvaVaginaPortioOK | boolean | vulvaVaginaPortio utan anmärkning (true/false) | 0..1 |
| ../../../../uterusContracted | boolean | Uterus utan anmärkning (true/false) | 0..1 |
| ../../../../uterusNote | string | Kommentar till uterus med anmärkning. Kan endast anges då uterusContracted = false | 0..1 |
| ../../../childPostDeliveryRecord | ChildPostDeliveryRecordTypeType | Efterskötningsjournal, för barn ur samma graviditet | 1..* |
| ../../../../ordinalNumber | integer | Ordningstal för barnet, med start på 1. Ju äldre barn desto lägre siffra. | 1..1 |
| ../../../../weight | PQType | Barnets vikt [massa] | 0..1 |
| ../../../../apgarScore1 | int | Apgar (0..10) efter 1 minut | 0..1 |
| ../../../../apgarScore5 | int | Apgar (0..10) efter 5 minuter | 0..1 |
| ../../../../apgarScore10 | int | Apgar (0..10) efter 10 minuter | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring | | :— | :— | :— | :— |

##### Icke funktionella krav

Inga övriga icke funktionella krav.

###### SLA-krav

Inga avvikande SLA-krav.

#### Annan information om kontraktet

Ingen annan information om kontraktet finns.

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetMaternityMedicalHistoryInteraction_2.0_RIVTABP21.wsdl](GetMaternityMedicalHistoryInteraction_2.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetMaternityMedicalHistoryResponder_2.0.xsd](GetMaternityMedicalHistoryResponder_2.0.xsd) | Tjänstespecifikt schema |
| [clinicalprocess_healthcond_actoutcome_2.0.xsd](clinicalprocess_healthcond_actoutcome_2.0.xsd) | Domänschema (delat) |
| [clinicalprocess_healthcond_actoutcome_enum_2.0.xsd](clinicalprocess_healthcond_actoutcome_enum_2.0.xsd) | Domänschema, enumerationer |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |
| [SjD_TP_GetMaternityMedicalHistory_2.0.docx](SjD_TP_GetMaternityMedicalHistory_2.0.docx) | Självdeklaration, tjänsteproducent |
| [AB_clinicalprocess_healthcond_actoutcome.docx](AB_clinicalprocess_healthcond_actoutcome.docx) | Arkitekturella beslut |
| [Bilaga_Gemensamma_typer_4.pdf](Bilaga_Gemensamma_typer_4.pdf) | Bilaga: gemensamma typer |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (svar):** [StructureDefinition/getmaternitymedicalhistory](StructureDefinition-getmaternitymedicalhistory.md)
* **Logisk modell (begäran):** [StructureDefinition/getmaternitymedicalhistory-request](StructureDefinition-getmaternitymedicalhistory-request.md)
* **Kodsystem:** [CodeSystem/deliverycode-cs](CodeSystem-deliverycode-cs.md)
* **ValueSet:** [ValueSet/deliverycode-vs](ValueSet-deliverycode-vs.md)
* **Kodsystem:** [CodeSystem/fetalpositioncode-cs](CodeSystem-fetalpositioncode-cs.md)
* **ValueSet:** [ValueSet/fetalpositioncode-vs](ValueSet-fetalpositioncode-vs.md)
* **Kodsystem:** [CodeSystem/fetalpresentationcode-cs](CodeSystem-fetalpresentationcode-cs.md)
* **ValueSet:** [ValueSet/fetalpresentationcode-vs](ValueSet-fetalpresentationcode-vs.md)
* **Kodsystem:** [CodeSystem/sexcode-cs](CodeSystem-sexcode-cs.md)
* **ValueSet:** [ValueSet/sexcode-vs](ValueSet-sexcode-vs.md)
* **Kodsystem:** [CodeSystem/typeofleavecode-cs](CodeSystem-typeofleavecode-cs.md)
* **ValueSet:** [ValueSet/typeofleavecode-vs](ValueSet-typeofleavecode-vs.md)
* **Kodsystem:** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.md)
* **ValueSet:** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.md)
* **Kodsystem:** [CodeSystem/errorcode-cs](CodeSystem-errorcode-cs.md)
* **ValueSet:** [ValueSet/errorcode-vs](ValueSet-errorcode-vs.md)

### GetLaboratoryOrderOutcome

GetLaboratoryOrderOutcome returnerar kemilaboratoriesvar för en patient. Notera att denna version av GetLaboratoryOrderOutcome endast returnerar kemilaboratoriesvar, och inte svar från exempelvis mikrobiologi.

GetLaboratoryOrderOutcome returnerar laboratoriesvar lagrade i beställande enhets journal, och ska ej implementeras för att returnera laboratoriesvar från laboratoriets journal.

#### Version

3.1

#### Gemensamma informationskomponenter

De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_4.pdf”.

Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careUnitHSAId | HSAIdType | Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfessional. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. / 1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidsattributen analysisTime ligger inom sökintervallets start- och slutdatumet. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / Om svaret omfattar analyser på flera prover tagna vid olika tidpunkter räcker det om någon av dessa ligger inom sökintervallet. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till laboratoriesvar som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till hälso-och sjukvårdskontakt där den vårdbegäran som låg till grund för laboratoriesvaret skapades. | 0..* |
| Svar |   |   |   |
| laboratoryOrderOutcome | LaboratoryOrderOutcomeType | Returnerar en patients laboratoriesvar. | 0..* |
| ../laboratoryOrderOutcomeHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Unik identifierare för undersökningsresultatet. Identitet ska vara unik inom källsystemet / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSAid för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle |   | Ska ej anges. | 0..0 |
| ../../documentTime | TimeStampType | Tidpunkten då laboratoriesvaret inkom till beställarens vårdinformationssystem | 1..1 |
| ../../patientId | PersonIdType | Id för patienten. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallad författare. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt vid vilken laboratoriesvaret skapades eller senast uppdaterades i laboratoriesystemet. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Författarens HSA-id | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare på | 1..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. | 1..1 |
| ../../../../orgUnitname | string | Namnet på den organisation som författaren är uppdragstagare på | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../orgUnitEmail | string | Epost till enhet | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet påplats eller ort för organisationens fysiska placering | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för Vårdenhet. Ska anges om tillgänglig. [Regel 1] | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. [Regel 1] | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. Det är normalt laboratorieläkeren som signerar laboratoriesvar. / Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering av svaret. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../../legalAuthenticatorRoleCode |   | Ska ej anges. | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..1 |
| ../../nullified |   | Ska ej anges. | 0..0 |
| ../../nullifiedReason |   | Ska ej anges. | 0..0 |
| ../laboratoryOrderOutcomeBody | LaboratoryOrderOutcomeBodyType |   | 1..1 |
| ../../resultType | string | Text som anger vilken typ av svar som avses. / DEF = Definitivsvar / TILL = Tilläggssvar / Den senaste statusen är den som ska skickas med. | 1..1 |
| ../../registrationTime | TimeStampType | Tidpunkt då informationen om undersökningsresultatet lagrades i källsystemet.Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. | 1..1 |
| ../../discipline | string | Text som anger vilken typ av labenhet som undersökningsresultatet härrör från. / Tillåtet värde är "Klinisk kemi" | 1..1 |
| ../../resultReport | string | Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet | 0..1 |
| ../../resultComment | string | Text som innehåller en kommentar avseende hela det lämnade svaret | 0..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso-och sjukvårdspersonal som är ansvarig (”ansvarig labbläkare”) för undersökningsresultatet (svaret). | 0..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då svaret skickas från laboratoriesystemet. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | hälso-och sjukvårdspersonens HSA-id | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på ansvarig hälso-och sjukvårdsperson. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. Om displayName anges ska även code samt codeSystem anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den enhet som hälso-och sjukvårdspersonen är uppdragstagare på | 1..1 |
| ../../../../orgUnitHSAId | HDAIdType | HSA-id för organisationsenhet. | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare på | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../orgUnitEmail | string | Epost till enhet | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId |   | Ska ej anges. | 0..0 |
| ../../../healthcareProfessionalCareGiverHSAId |   | Ska ej anges. | 0..0 |
| ../../analysis | AnalysisType | Information om analystjänster som ligger till grund för ett undersökningsresultat | 0..* |
| ../../../analysisId | IIType | Unik identifierare för analystjänsten | 1..1 |
| ../../../../root | string | En unik identifierare i form av en UID som garanterar global unikhet för instansidentifieraren. Root kan enskilt utgöra hela den unika identifieraren. | 1..1 |
| ../../../../extension | string | En textsträng som tillsammans med root bildar en unik identifierare. | 0..1 |
| ../../../analysisTime | TimePeriodType | Tidsangivelse för åtgärdens utförande. Här anges tiden för provtagningen. / Om start eller end saknas, ska det vid tidsurval tolkas som att båda är satta till samma tidpunkt. | 0..1 |
| ../../../../start | TimeStampType | Periodens starttid. Minst ett av start och end ska anges. | 0..1 |
| ../../../../end | TimeStampType | Periodens sluttid. Minst ett av start och end ska anges. | 0..1 |
| ../../../analysisCode | CVType | Kod och klartext som anger vilken åtgärd som avses, enligt kodverket NPU. Ett av attributen analysisCode och analysisText ska anges. | 0..1 |
| ../../../../code | string | Kod från kodsystemet NPU. | 1..1 |
| ../../../../codeSystem | string | OID för NPU-kodsystemet (1.2.752.108.1). | 1..1 |
| ../../../../displayName | string | Kodens klartext. | 1..1 |
| ../../../analysisText | string | Text som anger vilken åtgärd som avses, om analysen ej finns kodad enligt NPU. Attributet åtgärdskod text används endast för svar som ej kan kodas enligt NPU. I åtgärdskod text anges endast analysens namn i klartext, dvs inga lokala koder. Ett av attributen analysisCode och analysisText ska anges. | 0..1 |
| ../../../analysisStatus | string | Text som anger åtgärdens status. Då det är möjligt ska KV åtgärdsstatus följas. Exempel från KV åtgärdsstatus: / Planerad, Pågående, Avklarad | 0..1 |
| ../../../analysisComment | string | Text som innehåller en kommentar som avser den utförda analysen. | 0..1 |
| ../../../specimen | string | Text som beskriver vilket typ av material som användes vid analysen. Ange provmaterial i klartext. Exempel: Plasma / Både provmaterial och lokalisation bör anges i klartext när så är lämpligt för aktuell undersökning. Exempel: Var höger fot". | 0..1 |
| ../../../method | string | Text som beskriver den metod som använts i analystjänsten. | 0..1 |
| ../../../relationToAnalysis | RelationToAnalysisType | Anger samband med annan utförd analystjänst. | 0..* |
| ../../../../analysisId | IIType | Unik identifierare för analystjänsten. | 1..1 |
| ../../../../../root | string | En unik identifierare i form av en UID som garanterar global unikhet för instansidentifieraren. Root kan enskilt utgöra hela den unika identifieraren. | 1..1 |
| ../../../../../extension | string | En textsträng som tillsammans med root bildar en unik identifierare. | 0..1 |
| ../../../analysisOutcome | AnalysisOutcomeType | Information om ett resultatet/utfallet av en analystjänst. | 0..1 |
| ../../../../outcomeValue | string | Det specifika värdet för resultatet/utfallet. | 1..1 |
| ../../../../outcomeUnit | string | Text som anger i förekommande fall enheten för det angivna värdet | 0..1 |
| ../../../../observationTime | TimeStampType | Tidpunkt då iakttagelsen av resultatet gjordes | 0..1 |
| ../../../../pathologicalFlag | boolean | Kod som anger om resultatet ligger utanför referensintervall. Sant = Ja, resultatet ligger utanför referens-intervall / Falskt = Nej, resultatet ligger inte utanför referens-intervall. | 1..1 |
| ../../../../outcomeDescription | string | Text som innehåller en kommentar avseende resultatet/utfallet. | 0..1 |
| ../../../../referenceInterval | string | Text som innehåller det referensintervall som använts i analysen. | 0..1 |
| ../../../../referencePopulation | string | Text som beskriver den population som referensintervallet gäller för. | 0..1 |
| ../../../attested | AttestedType | Information om vidimering av enskild analys med tillhörande resultat. Finns attested är analysen vidimerad. Med vidimerad menas att information om analysen har lästs och den som läst har tagit ansvar. | 0..1 |
| ../../../../attestedTime | TimeStampType | Tidpunkten för vidimering | 1..1 |
| ../../../../attesterHSAId | HSAIdType | HSA-id för person som vidimerat | 0..1 |
| ../../../../attesterName | string | Namn på person som vidimerat | 0..1 |
| ../../order | OrderType | Information om en vårdbegäran som ligger till grund för svaret | 1..1 |
| ../../../orderId | string | Unik identifierare för laboratorieremiss. Om laboratorieremiss (och således även unik identifierare) saknas, exempelvis då analys utförts på vårdavdelning anges en tom sträng. | 1..1 |
| ../../../orderReason | string | Text som anger aktuell frågeställning. | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring | | :— | :— | :— | :— |

##### Icke funktionella krav

Inga övriga icke funktionella krav.

###### SLA-krav

Inga avvikande SLA-krav.

#### Annan information om kontraktet

Ingen annan information om kontraktet finns.

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetLaboratoryOrderOutcomeInteraction_3.1_RIVTABP21.wsdl](GetLaboratoryOrderOutcomeInteraction_3.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetLaboratoryOrderOutcomeResponder_3.1.xsd](GetLaboratoryOrderOutcomeResponder_3.1.xsd) | Tjänstespecifikt schema |
| [clinicalprocess_healthcond_actoutcome_3.1.xsd](clinicalprocess_healthcond_actoutcome_3.1.xsd) | Domänschema (delat) |
| [clinicalprocess_healthcond_actoutcome_3.1_ext.xsd](clinicalprocess_healthcond_actoutcome_3.1_ext.xsd) | Domänschema, extensions |
| [clinicalprocess_healthcond_actoutcome_enum_3.1.xsd](clinicalprocess_healthcond_actoutcome_enum_3.1.xsd) | Domänschema, enumerationer |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |
| [SjD_TK_GetLaboratoryOrderOutcome_3.1.docx](SjD_TK_GetLaboratoryOrderOutcome_3.1.docx) | Självdeklaration, tjänstekonsument |
| [SjD_TP_GetLaboratoryOrderOutcome_3.1.docx](SjD_TP_GetLaboratoryOrderOutcome_3.1.docx) | Självdeklaration, tjänsteproducent |
| [AB_clinicalprocess_healthcond_actoutcome.docx](AB_clinicalprocess_healthcond_actoutcome.docx) | Arkitekturella beslut |
| [Bilaga_Gemensamma_typer_4.pdf](Bilaga_Gemensamma_typer_4.pdf) | Bilaga: gemensamma typer |
| [Bilaga_MIM_Mappningar_GetLaboratoryOrderOutcome.xlsx](Bilaga_MIM_Mappningar_GetLaboratoryOrderOutcome.xlsx) | Bilaga: CDA-mappning |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (svar):** [StructureDefinition/getlaboratoryorderoutcome](StructureDefinition-getlaboratoryorderoutcome.md)
* **Logisk modell (begäran):** [StructureDefinition/getlaboratoryorderoutcome-request](StructureDefinition-getlaboratoryorderoutcome-request.md)
* **Kodsystem:** [CodeSystem/typeofresultcode-cs](CodeSystem-typeofresultcode-cs.md)
* **ValueSet:** [ValueSet/typeofresultcode-vs](ValueSet-typeofresultcode-vs.md)
* **Kodsystem:** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.md)
* **ValueSet:** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.md)
* **Kodsystem:** [CodeSystem/errorcode-cs](CodeSystem-errorcode-cs.md)
* **ValueSet:** [ValueSet/errorcode-vs](ValueSet-errorcode-vs.md)

### GetImagingOutcome

Tjänstekontraktet GetImagingOutcome returnerar bilddiagnostiska resultat för en patient.

Tjänstekontraktet baseras på existerande informationsmodell från NPÖ RIV 2.2.0-specifikation och ger information om resultatet av bild-undersökning i form av det sammanfattande utlåtandet kring undersökningsresultatet med i förekommande fall text och bild via länk el. motsvarande (se fältreglerna nedan). Informationsinnehållet har vidare utvidgats till att möjliggöra att ge både mer strukturerad bild-mätdata, dels stödja de standards som finns för att ge tillgång till bild-data på olika sätt, dels via DICOM för renderbar visning hos konsumenten eller som statisk bild.

I utformningen av tjänstekontraktet har hänsyn tagits till standarder på bildområdet. Som alternativ till DICOM ges möjlighet att skicka en bild/bildlänk (i något av de tillåtna formaten enligt HL7 MediaType) ihop med viss strukturerad data som komplement.

Som en frivillig del av tjänstekontraktet kan stråldoser som härrör till undersökningen bifogas. Tanken med detta är att möjliggöra för framtida ”appar” som samlar stråldos för uppföljning eller inför nya röntgenundersökningar.

#### Version

1.0

#### Gemensamma informationskomponenter

De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga_Gemensamma_typer_4.pdf”. Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careUnitHSAId | HSAIdType | Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten. / id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, resultTime samt remissens authorTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till dokument som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..* |
| Svar |   |   |   |
| imagingOutcome | ImagingOutcomeType | De Bild-resultat(dokument) som matchar begäran. | 0..* |
| ../imagingOutcomeHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| ../../documentTime | TimeStampType | Händelsetidpunkt, om sådan finns. Tidpunkten bör vara då undersökningen gjordes inte när bilden skapades (t.ex. skannad bild). | 0..1 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Identiteten enligt den identitetstyp (type) som angivits. Anges med 12 tecken utan bindestreck. | 1..1 |
| ../../../type | string | OID för typ av identifierare. För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). För reservnummer används lokalt definierade reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Ansvarig hälso- och sjukvårdsperson. Ansvarig för undersökningsresultatet. Avser person som är ansvarig för det samlade dokumentet. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. Registreringstidpunkt i NPÖ riv-spec 2.2.0 avsnitt 5.3 | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på hälso-och sjukvårdspersonal. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om ansvarige personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 0..1 |
| ../../../../orgUnitName | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för informationsägande vårdenhet (pdl-ansvar). Ska anges om tillgänglig. [Regel 2] | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för informationsägande vårdgivare (pdl-ansvar). Ska anges om tillgänglig. [Regel 2] | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. Det är normalt radiologen som signerar bilddiagnostiska svar. Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../../legalAuthenticatorRoleCode |   | Ska ej anges | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| ../../nullified | boolean | Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten. | 0..1 |
| ../../nullifiedReason | string | Anger orsak till makulering | 0..1 |
| ../imagingOutcomeBody | ImagingOutcomeBodyType |   | 1..1 |
| ../../examinationSpeciality | CVType | Undersökningstyp. Bör anges med kod enligt SNOMED. / Text som beskriver vilken specialitet som utlåtandet gäller.Exempel: / Typen av specialitet som anlitats anges i text Exempel: Patologi, Klinisk fysiologi, Logopedi | 0..1 |
| ../../typeOfResult | TypeOfResultCodeEnum | Svarstyp. / PREL = Preliminärsvar, denna typ är ny och finns ej i NPÖ:s riv-specifikation. / DEF = Definitivsvar, ett svar som har kommit tillbaka till beställaren från utföraren. / TILL = Tilläggssvar, kan avse två typer av svar: / Det fynd som gjorts enligt beställd undersökning, och som beskrivs i definitivsvaret, var så intressant att ytterligare undersökningar gjorts och svaret således behöver kompletteras. / Slutsvaret behöver av någon anledning korrigeras, och skickas således i ett tilläggssvar. / DEF sätts som förvalt värde. Den senaste statusen är den som ska skickas med. | 1..1 |
| ../../resultTime | TimeStampType | Svarstidpunkt. Tidpunkt då svar skickas till framställaren av vårdbegäran. | 1..1 |
| ../../resultReport | string | Text som beskriver det sammanfattade utlåtandet kring undersökningsresultatet | 1..1 |
| ../../resultComment | string | Kommentar till det sammanfattande utlåtandet | 0..1 |
| ../../radiationDose | PQType | Ett dosvärde som härrör till undersökningen. / Dosen kan anges på flera olika sätt (t.ex. som effektiv dos i Sv) eller som KAP. Den totala dosen som härrör till underökningen är summan av alla redovisade radiationDose. Enheten ska vara SI-enhet (eller kombination av sådana). (För KAP ska värdet räknas om till Gy**m² istället för Gy**cm².) | 0..* |
| ../../patientData | PatientDataType | Ytterligare information om patienten med relevans för bedömningen. Kan typiskt anges i samband med givande av strukturerad bild-information enligt nedan | 0..1 |
| ../../../patientWeight | PQType | Patientens vikt i kgvid undersökningstillfället. | 0..1 |
| ../../../patientLength | PQType | Patientens längd i cm vid undersökningstillfället. | 0..1 |
| ../../imageRecording | ImageRecordingType | Beskrivning av bild-tagning(ar). Bild(er) tas som en eller flera tagningar (noll tillåts i fall då tillgång till bild saknas, utan endast (remiss och) sammanfattande utlåtande finns). / En bildtagning kan i sin tur ha flera bilder | 0..* |
| ../../../recordingId | IIType | Id för Bild-tagningen som är unikt inom källsystemet. | 0..1 |
| ../../../examinationActivity | CVType | Åtgärdskod för utförd typ av Bild. KRÅ91-kod eller i förekommande fall annat kodverk. Om inget gemensamt kodverk används, anges åtgärdsbeskrivning i originalText. (not. I npö rivspec saknas angivande av typ av övrig bilddiagnostik vilket är en brist eftersom uppföljning av olika slags bilder görs) | 1..1 |
| ../../../examinationTimePeriod | TimePeriodType | Tidpunkt då Bild-insamlingen startar och slutar | 1..1 |
| ../../../examinationStatus | ExaminationStatusCodeEnum | Text som anger åtgärdens status. Kommer från KV åtgärdsstatus i V-TIM 1.0. Tillåtna värden är: Initierad, Planerad (bevakad), Tidbokad, Uppskjuten, Annullerad, Pågående, Avvakta, Avbruten, Avklarad, Inaktuell, Makulerad. | 0..1 |
| ../../../examinationUnit | string | Text som anger vilken typ av labenhet som undersökningsresultatet härrör från. T ex MR-lab, CT inom bild. (not. Generaliserad från npö riv-spec för b&f undersökningar) | 0..1 |
| ../../../accountableHealthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdsperson som är ansvarig för informationen som härstammar från insamlingstillfället. Den person som har den fysiska kontakten med patienten vid insamlandet av data. | 0..1 |
| ../../../../authorTime | TimeStampType | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. Registreringstidpunkt i NPÖ riv-spec 2.2.0 avsnitt 5.3 / Attributet sätts till detsamma som examinationTimePeriod.end, eller .start i de fall som inget .end finns | 1..1 |
| ../../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../../healthcareProfessionalName | string | Namn på hälso-och sjukvårdspersonal. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../healthcareProfessionalRoleCode | CVType | Information om ansvarige personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. / Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 0..1 |
| ../../../../../orgUnitName | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../../orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby” | 0..1 |
| ../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId |   | Ska ej anges | 0..0 |
| ../../../../healthcareProfessionalCareGiverHSAId |   | Ska ej anges | 0..0 |
| ../../../numberOfImages | int | Det totala antalet bilder i bildtagningen | 0..1 |
| ../../../modalityData | ModalityDataType | Information om bild-utrustningen som använts | 0..1 |
| ../../../../typeOfModality | string | Modalitetstyp för bildfångande utrustning. | 0..1 |
| ../../../../manufacturer | string | Producerande utrustnings tillverkare. | 0..1 |
| ../../../../modelName | string | Producerande utrustnings modellnamn. | 0..1 |
| ../../../../equipmentId | string | Identifierare för utrustningen. Kan tex vara serienummer eller inventarienummer. | 0..1 |
| ../../../../softwareVersion | string | Text som anger tillverkarens version av den bildproducerande mjukvaran | 0..1 |
| ../../../../lineFilter |   | Ska ej anges. | 0..0 |
| ../../../imageDicomData | DicomDataType | DICOM-objekt. För att ge renderbar data som kan visas på det sätt som användaren önskar (med hjälp av en viewer/renderare) ges möjligheten att skicka med binärdata eller en URI till ett DICOM-objekt i någon av SOP-klasserna för Bild. / Både imageDicomData och ImageStaticData kan, och om möjligt bör anges för att underlätta för konsument. | 0..* |
| ../../../../dicomSOP | IIType | SOP UID för DICOM-objektet. Beskriver vilken information som kan förväntas i datan (jmf. mediaType nedan för statisk bild). / T.ex. 1.2.840.10008.5.1.4.1.1.1.1 för digital x-ray for presentation | 1..1 |
| ../../../../dicomValue | base64Binary | Binärdata som representerar objektet. Ett och endast ett av DicomValue och DicomReference ska anges. | 0..1 |
| ../../../../dicomReference | anyURI | Referens till externt DICOM-objekt med åtkomst enligt WADO. En tillverkarspecifik länk som är möjlig att via en säker anslutning visa i en webklient | 0..1 |
| ../../../imageStructuredData | ImageStructuredDataType | Strukturerad mätdata för bild-tagningen med statiskt bildobjekt eller referens till bildfil. | 0..* |
| ../../../../aperture | PQType | Anges som f/(enhetslöst). | 0..1 |
| ../../../../exposureTime | PQType | I sekunder | 0..1 |
| ../../../../imageCreationTime | TimeStampType | Tid då bilden skapats. | 0..1 |
| ../../../../bodyPartExamined | CVType | Kroppsdel. Bör anges med kod ur SNOMED CT (OID: 1.2.752.116.2.1.1). Om kodverk saknas kan kroppsdel anges i originalText. | 0..1 |
| ../../../../contrastAgentUsed | string | Kontrast som använts vid bildtagningen. | 0..1 |
| ../../../../magneticFieldStrength | PQType | Magnetisk fältsyrka i T. | 0..1 |
| ../../../../copyright | string | Copyright-ägare av bilden | 0..1 |
| ../../../../imageData | ImageDataType | Möjlighet att svara med en bild i något av de tillåtna formaten enligt HL7 multimediatyper (inkl. PDF). | 1..1 |
| ../../../../../mediaType | MediaTypeEnum | Mediatyper enligt HL7 MediaType. | 1..1 |
| ../../../../../value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges. | 0..1 |
| ../../../../../reference | anyURI | Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. En tillverkarspecifik länk som är möjlig att via en säker anslutning visa i en webklient | 0..1 |
| ../../../../../burnedInAnnotations | boolean | True om patientdata finns i pixelinformationen. | 0..1 |
| ../../referral | ReferralType | Information om den vårdbegäran(remiss) som ligger till grund för undersökningen och dess svar. Måste vara valfri eftersom tagning av Bild inte alltid remitteras | 0..1 |
| ../../../referralId | string | Remissens identitet som är unik inom det lokala avsändande systemet. Motsvarar vårdbegäran-id | 1..1 |
| ../../../referralReason | string | Text som anger frågeställningen | 0..1 |
| ../../../anamnesis | string | Text som anger bakgrund till frågeställningen | 0..1 |
| ../../../careContactId | string | Identitet för den hälso-och sjukvårdskontakt som föranlett vårdbegäran. Identiteten är unik inom producernade system. | 0..1 |
| ../../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso-och sjukvårdspersonal som framställt vårdbegäran, nedan kallad remittent. | 1..1 |
| ../../../../authorTime | TimeStampType | Tid då vårdbegäran framställdes | 1..1 |
| ../../../../healthcareProfessionalHSAid | HSAIdType | Remittentens HSA-id. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../../healthcareProfessionalName | string | Namn på remittenten. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../healthcareProfessionalRoleCode | CVType | Information om remittentens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. | 0..1 |
| ../../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som remittenten är uppdragstagare på | 1..1 |
| ../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.) | 1..1 |
| ../../../../../orgUnitName | string | Namnet på den organisation som remittenten är uppdragstagare på | 1..1 |
| ../../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../../orgUnitEmail | string | Epost till enhet | 0..1 |
| ../../../../../orgUnitAddress | string | Postadress för den organisation som remittenten är uppdragstagare på | 0..1 |
| ../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId |   | Ska ej anges. | 0..0 |
| ../../../../healthcareProfessionalCareGiverHSAId |   | Ska ej anges. | 0..0 |
| ../../../attested | LegalAuthenticatorType | Information om den som vidimerat mottaget svar på vårdbegäran | 0..1 |
| ../../../../signatureTime | TimeStampType | Tidpunkt för vidimering. | 1..1 |
| ../../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som vidimerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../../legalAuthenticatorName | string | Namnen i klartext för vidimerande person. | 0..1 |
| ../../../../legalAuthenticatorRoleCode |   | Ska ej anges | 0..0 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| | | | |
| :--- | :--- | :--- | :--- |
| Regel 1 | Producenter av GetImagingOutcome måste följa de generella riktlinjer för binära bilagor, se referens R12. Inbäddade bilagor får inte överstiga 100KB. |   |   |
| Regel 2 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |

##### Icke funktionella krav

Inga övriga icke funktionella krav. Se generella SLA-krav för tjänstedomänen.

###### SLA-krav

Inga avvikande SLA-krav.

#### Annan information om kontraktet

Ingen annan information om kontraktet finns.

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetImagingOutcomeInteraction_1.0_RIVTABP21.wsdl](GetImagingOutcomeInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetImagingOutcomeResponder_1.0.xsd](GetImagingOutcomeResponder_1.0.xsd) | Tjänstespecifikt schema |
| [clinicalprocess_healthcond_actoutcome_3.1.xsd](clinicalprocess_healthcond_actoutcome_3.1.xsd) | Domänschema (delat) |
| [clinicalprocess_healthcond_actoutcome_3.1_ext.xsd](clinicalprocess_healthcond_actoutcome_3.1_ext.xsd) | Domänschema, extensions |
| [clinicalprocess_healthcond_actoutcome_enum_3.1.xsd](clinicalprocess_healthcond_actoutcome_enum_3.1.xsd) | Domänschema, enumerationer |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Registry-schema (delat) |
| [SjD_TK_GetImagingOutcome_1.0.docx](SjD_TK_GetImagingOutcome_1.0.docx) | Självdeklaration, tjänstekonsument |
| [SjD_TP_GetImagingOutcome_1.0.docx](SjD_TP_GetImagingOutcome_1.0.docx) | Självdeklaration, tjänsteproducent |
| [AB_clinicalprocess_healthcond_actoutcome.docx](AB_clinicalprocess_healthcond_actoutcome.docx) | Arkitekturella beslut |
| [Bilaga_Gemensamma_typer_4.pdf](Bilaga_Gemensamma_typer_4.pdf) | Bilaga: gemensamma typer |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (svar):** [StructureDefinition/getimagingoutcome](StructureDefinition-getimagingoutcome.md)
* **Logisk modell (begäran):** [StructureDefinition/getimagingoutcome-request](StructureDefinition-getimagingoutcome-request.md)
* **Kodsystem:** [CodeSystem/examinationstatuscode-cs](CodeSystem-examinationstatuscode-cs.md)
* **ValueSet:** [ValueSet/examinationstatuscode-vs](ValueSet-examinationstatuscode-vs.md)
* **Kodsystem:** [CodeSystem/typeofresultcode-cs](CodeSystem-typeofresultcode-cs.md)
* **ValueSet:** [ValueSet/typeofresultcode-vs](ValueSet-typeofresultcode-vs.md)
* **Kodsystem:** [CodeSystem/mediatype-cs](CodeSystem-mediatype-cs.md)
* **ValueSet:** [ValueSet/mediatype-vs](ValueSet-mediatype-vs.md)
* **Kodsystem:** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.md)
* **ValueSet:** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.md)
* **Kodsystem:** [CodeSystem/errorcode-cs](CodeSystem-errorcode-cs.md)
* **ValueSet:** [ValueSet/errorcode-vs](ValueSet-errorcode-vs.md)


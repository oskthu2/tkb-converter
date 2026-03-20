## Tjänstekontrakt

### GetLaboratoryOrderOutcome
GetLaboratoryOrderOutcome returnerar multidisciplinära laboratoriesvar för en patient.

#### Version
4.2

#### Gemensamma informationskomponenter
Nedan listas de gemensamma datatyper som används i GetLaboratoryOrderOurcome. Användning av datatyperna sker i enlighet med hur de är definierade, dvs. regler som anges för respektive datatyp och kardinalitet för de olika attributen ska följas.
Datatyperna nedan är hämtade från version 9 av de gemensamma datatyperna [R8].

##### OrgUnitType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType | Id för organisationsenheten där vårdpersonen verkat på uppdrag av. Om tillgängligt skall HSAid anges. Notera att det är den verksamhet där utrustningen använts som avses, inte utrustningens ägare. I de fall HSAid saknas kan ett för källsystemet unikt id användas varvid fältet root sätts till källsystemets HSAid och fältet extions sätts till lokalt id i källsystemet. Om HSAid används sätts fältet root till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSAid. Om organisationsnummer används skall fältet root sättas till OID för Skatteverkets organisationsnummer (2.5.4.97) och fältet extension sättas till organisationsnumret. | 0..1 |
| name | string | Namn på organisationsenhet. Om tillgängligt skall detta anges. | 1..1 |

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| //*:careUnitHSAId | IIType | Filtrering på vårdenhet vilket motsvarar accountableCareUnit i svaret. / root sätts till OID (1.2.752.129.2.1.4.1) för HSA / extension sätts till HSA-id på vårdenhet | 0..* |
| //*:careGiverHSAId | IIType | Filtrering på vårdgivare vilket motsvarar accountableCareGiver i svaret. / root sätts till OID (1.2.752.129.2.1.4.1) för HSA / extension sätts till HSA-id på vårdgivare | 0..* |
| //*:patientId / Regel 1.1 | IIType | Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare. / root sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts root till aktuell OID. / extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / OBS lokal reservidentitet kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för lokal reservidentitet. / En tjänstekonsument som vill begära mha. lokal reservidentitet måste därmed använda sig av systemadressering och ha vetskap om vilken OID för den specifika lokala reservidentitet som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| //*:datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där provtagningstidpunkten (//*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:timestamp) i svaret ligger inom sökintervallets start- och slutdatumet. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse med tidpunkter ska hela det dygn som anges i slutdatum betraktas som en del av sökintervallet. / Om svaret omfattar analyser på flera prover tagna vid olika tidpunkter räcker det om någon av dessa ligger inom sökintervallet. | 0..1 |
| //*:sourceSystemHSAId / Regel 1.2 | IIType | Begränsar sökningen till anteckningar som är skapade i angivet system. / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) / extension sätts till källsystemets HSA-id. | 0..1 |
| //*:specimenIdentifier | IIType | Begränsar sökningen till angivna prov-identiteter. | 0..* |
| //*:referralIdentifier | IIType | Begränsar sökningen till angivna remiss-identiteter | 0..* |
| Svar |  |  |  |
| //*:laboratoryOrderOutcome | LaboratoryOrderOutcomeType | Ett eller flera laboratoriesvar som matchar begäran. | 0..* |
| //*:header | HeaderType | Innehåller information som är gemensam för uppgifter i patientjournalen som tillgängliggörs, exempelvis information om vilken hälso- och sjukvårdspersonal som är angiven som författare av en uppgift samt information om signering. | 1..1 |
| //*:header/*:accessControlHeader | AccessControlHeaderType | Information som används för kontroll av åtkomst. Tjänstekonsumenten får enbart ta del av uppgifterna i AccessControlHeaderType innan övrig information om uppgift i patientjournal kan bearbetas. | 1..1 |
| //*:header/*:accessControlHeader/*:accountableCareGiver / Regel 2.1 | IIType | Id för uppgiftsägande vårdgivare [R15]. / I första hand HSA-id, i andra hand organisationsnummer. / Om HSA-id används: / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) / extension sätts till HSA-id / Om organisationsnummer används: / root sätts till OID för organisationsnummer (1.2.752.29.4.3) / extension sätts till organisationsnumret. Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer. | 1..1 |
| //*:header/*:accessControlHeader/*:accountableCareUnit / Regel 2.1 | IIType | HSA-id för vårdenheten [R15] där uppgiften är dokumenterad. / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) / extension sätts till HSA-id | 1..1 |
| //*:header/*:accessControlHeader/*:patientId | IIType | Personidentifierare för patienten. / root sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts root till aktuell OID. / extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Obligatorisk vid nyanslutning | 0..1 |
| //*:header/*:accessControlHeader/*:originalPatientId | IIType | Personidentifieraren som den tillgängliggjorda uppgiften lagrades under då den skapades. Detta fält anges endast då det skiljer sig från patientId, exempelvis då patienten tidigare erhållit vård som dokumenterats under ett samordningsnummer för att sedan bli folkbokförd i Sverige och få ett personnummer. / root sätts till OID för typ av personidentifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / För andra typer av personidentifierare sätts root till aktuell OID. / extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 0..1 |
| //*:header/*:accessControlHeader/*:careProcessId | UUIDType | Id för den individanpassade vårdprocess som uppgiften journalförts inom ramen för. Består av ett lokalt genererat UUID. | 0..1 |
| .//*:header/*:accessControlHeader/*:lockTime / Regel 2.2 | TimeStampType |  | 0..0 |
| //*:header/*:accessControlHeader/*:blockComparisonTime | TimeStampType | Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring. Gäller både yttre (mellan vårdgivare) och inre (mellan vårdenheter) spärr. / I detta fält anges provtagningstidpunkt. Om ett svar innehåller analyser utförda på olika prov anges tidpunkt för det senast tagna provet. | 1..1 |
| //*:header/*:accessControlHeader/*:approvedForPatient | boolean | Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida uppgiften får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst). / Om uppgiften beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient. / Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex. | 1..1 |
| //*:header/*:sourceSystemId | IIType | Det källsystem som uppgiften lagras i. / root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) / extension sätts till källsystemets HSA-id | 1..1 |
| //*:header/*:record | RecordType | Information avseende uppgiften som tillgängliggörs. | 1..1 |
| //*:header/*:record/*:id | IIType | Identifierare för uppgift i patientjournal. / Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. / Motsvarar Laboratoriesvar.id i informationsspecifikationen [R6] | 1..1 |
| //*:header/*:record/*:timestamp | TimeStampType | Den tidpunkt då uppgiften skapades i tjänsteproducentens källsystem. Denna information ska vara beständig även om tjänsteproducenten migrerat uppgiften från ett källsystem till en annat. / Motsvarar Laboratoriesvar.svarstidpunkt i informationsspecifikationen [R6] | 1..1 |
| //*:header/*:author | AuthorType | Information avseende dokumentation av uppgiften som tillgängliggörs. / Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses. | 0..1 |
| //*:header/*:author/*:id | IIType | HSA-id för hälso- och sjukvårdspersonal som dokumenterat uppgiften som tillgängliggörs. / root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) / extension sätts till HSA-id | 0..1 |
| //*:header/*:author/*:name | string | Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn. | 0..1 |
| //*:header/*:author/*:timestamp | TimeStampType | Tidpunkt då uppgiften dokumenterades eller senast uppdaterades. / I de fall då uppgiften ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där uppgiften ursprungligen dokumenterades. | 1..1 |
| //*:header/*:author/*:byRole | CVType | Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. / Anges med HSAs kodverk Befattning  (OID: 1.2.752.129.2.2.1.4). / Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText. | 0..1 |
| //*:header/*:author/*:orgUnit | OrgUnitType | Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. | 0..1 |
| //*:header/*:signature | AuthorType | Information avseende signering av laboratoriesvaret. / Laboratoriesvaret signeras av en medicinskt ansvarig hälso- och sjukvårdspersonal på den ansvariga enheten. / Den ansvariga enheten kan vara den remissmottagande enheten eller den utförande enheten (exempelvis vid patientnära analyser). | 0..1 |
| //*:header/*:signature/*:id | IIType | HSA-id för hälso- och sjukvårdspersonal som signerat uppgiften som tillgängliggörs. / root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) / extension sätts till HSA-id | 0..1 |
| //*:header/*:signature/*:name | string | Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn. | 0..1 |
| //*:header/*:signature/*:timestamp | TimeStampType | Tidpunkt då uppgiften signerades. | 1..1 |
| //*:header/*:signature/*:byRole | CVType | Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid signeringstidpunkten. / Anges med HSAs kodverk Befattning  (OID: 1.2.752.129.2.2.1.4). / Om kod inte är tillgänglig anges befattning i klartext i datatypens attribut originalText. | 0..1 |
| //*:header/*:signature/*:orgUnit | OrgUnitType | Anges ej för Signature | 0..0 |
| //*:body | LaboratoryOrderOutcomeBodyType | Information om laboratoriesvaret. | 1..1 |
| //*:body/*:identifier | IIType | Angivelse av identitetsbeteckning för laboratoriesvaret. | 1..1 |
| //*:body/*:laboratoryIdentifier | IIType | Angivelse av identitetsbeteckning för laboratoriets arbetsorder. / Benämns även som LID. | 0..1 |
| //*:body/*:type | CVType | Kod för status av laboratoriesvar. Använd FHIR value set Diagnostic Report Status. Giltiga koder är final, partial eller preliminary. Se kodverket för beskrivning av respektive kod. / code:  En av koderna final, partial eller preliminary / codeSystem:  2.16.840.1.113883.4.642.3.235 / displayName: Klartext motsvarande den använda koden. | 1..1 |
| //*:body/*:text | string | Angivelse av utlåtande eller kommentar som gäller hela laboratoriesvaret. | 0..1 |
| //*:body/*:referral | ReferralType | Den remiss som ligger till grund för svaret. | 0..1 |
| //*:body/*:referral/*:identifier | IIType | Angivelse av identitetsbeteckning för remissen. / root: logisk adress / extension: remissens id, även kallad RID | 1..1 |
| //*:body/*:referral/*:timestamp | TimeStampType | Tidsangivelse för när remiss skapats. | 1..1 |
| //*:body/*:referral/*:version | int | Version av remiss. | 0..1 |
| //*:body/*:referral/*:question | string | Remissens frågeställning. | 0..1 |
| //*:body/*:referral/*:requestedCareService | CVType | Kod för efterfrågad tjänst från utbudskatalog. / Det finns inget kodverk eller urval utpekat för detta attribut. Regel 3.4 / Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation. | 0..* |
| //*:body/*:referral/*:requester | ActorType | Hälso- och sjukvårdspersonal som skrivit remiss. | 0..1 |
| //*:body/*:referral/*:requester/*:id | IIType | HSA-id för hälso- och sjukvårdspersonal. / root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) / extension sätts till HSA-id | 0..1 |
| //*:body/*:referral/*:requester/*:name | string | Namn på hälso- och sjukvårdspersonal | 0..1 |
| //*:body/*:referral/*:requester/*:byRole | CVType | Information om hälso- och sjukvårdspersonalens befattning. Om möjligt skall kod från HSA:s kodverk Befattning (OID: 1.2.752.129.2.2.1.4) [R3] användas för att ange personens befattning så som den var angiven i HSA-katalogen vid tidpunkten. Om kod inte är tillgänglig anges befattning i klartext i CV-typens attribut originalText. | 0..1 |
| //*:body/*:referral/*:requester/*:orgUnit | OrgUnitType | Den organisation som remittenten är uppdragstagare på. För detta fält är det obligatoriskt att ange både orgUnitType.id samt orgUnitType.name. | 0..1 |
| //*:body/*:referral/*:referralInformation | ReferralInformationType | Ytterligare information från beställaren. | 0..1 |
| //*:body/*:referral/*:referralInformation/*:referralComment | String | Kommentar på beställningen av laboratorieundersökningen. | 0..1 |
| //*:body/*:referral/*:referralInformation/*referralMedicalInformation | String | Medicinsk information som angetts i beställningen relaterad till laboratorieundersökningen. | 0..1 |
| //*:body/*:groupOfAnalyses / Regel 3.1 | GroupOfAnalysesType | Grupperar ett antal analyser som utförs på ett eller flera prov från samma provgivare och som man väljer att betrakta som en enhet. Detta är en möjlighet för ett laboratorium att för ett givet svar kommentera en egen vald mängd analyser med en gemensam gruppkommentar. En grupp som endast innehåller en enda analys utan angivelse av name eller code ska tolkas som att analysen inte är grupperad. Det är inte tillåtet att ha en grupp med flera analyser utan att ange attributet name eller code. | 0..* |
| //*:body/*:groupOfAnalyses /*:name | string | Namn eller benämning för hela analysgruppen. / Obligatorisk om attributet comment anges. | 0..1 |
| //*:body/*:groupOfAnalyses /*:comment | string | Kommentar för hela analysgruppen. Om en kommentar anges ska även attributet name anges. | 0..1 |
| //*:body/*:groupOfAnalyses /*:code | CVType | Listkoder (NPU) som fungerar som en rubrik-kod för de ingående analyserna. / code.code: Kod från “Urval analyskoder laboratoriemedicin” (se [R16]) / code.codeSystem: 1.2.752.108.1 / Regel 3.5 / Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation. | 0..1 |
| //*:body/*:groupOfAnalyses /*:analysis | AnalysisType | Utförd analys. | 1..* |
| //*:body/*:groupOfAnalyses /*:analysis/*:identifier | IIType | Id för utförd analys. | 0..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:timestamp | TimeStampType | Den tidpunkt då analysen utfördes. | 0..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:code | CVType | Kod (NPU) för den analys som utförts. / code.code: Kod från “Urval analyskoder laboratoriemedicin” (se [R16]) / code.codeSystem: 1.2.752.108.1 / Regel 3.5 / Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation. | 1..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:method | CVType | Kod (SNOMED-CT-SE) för den typ av tillvägagångssätt för utförandet av analysen som avses. / code.code: Kod från Urval analysmetod laboratoriemedicin (OID 1.2.752.129.5.1.18) (se [R10]) / code.codeSystem:  1.2.752.116.2.1.1 / Regel 3.5 / Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation. | 0..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:status | CVType | Kod (SNOMED-CT-SE) för analysens status. / code.code: Kod från Urval analysstatus laboratoriemedicin (OID 1.2.752.129.5.1.6) (se [R10]) / code.codeSystem:  1.2.752.116.2.1.1 / Regel 3.5 / Om status utelämnas ska detta tolkas som att analysen är slutförd. Fritextalternativ kan ej anges i datatypens attribut originalText. | 0..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:comment | string | Kommentar för enskild analys, exempelvis att svaret inte får användas för biobanksinfo. | 0..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:accredited | boolean | Om analysen är ackrediterad sätts fältet till true. / Om analysen inte är ackrediterad sätts fältet till false. / Om analysens ackrediteringsstatus är okänd utelämnas elementet. | 0..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:specimen / Regel 3.2 | SpecimenType | Information om ett prov. | 0..* |
| //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:identifier | IIType | Identitetsbeteckning för ett prov. | 0..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:material | CVType | Kod (SNOMED-CT-SE) för typ av provmaterial. / Koden för provmaterial kan även innefatta information om provtagningsmetod. / code: Kod från Urval provtyp laboratoriemedicin (OID 1.2.752.129.5.1.13) (se [R10]) / codeSystem: 1.2.752.116.2.1.1 / Regel 3.5 / Om kodad representation av provmaterialtyp från nationellt urval saknas kan datatypens attribut originalText användas för en fritextrepresentation. | 0..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:timestamp | TimeStampType | Angivelse av den tidpunkt då provet är taget. | 1..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:anatomicalLocation | CVType | Kod (SNOMED-CT-SE) som anger var provet är taget. / Exempel: höger arm, vänster njure. / code: Kod från Urval anatomisk lokalisation laboratoriemedicin (OID 1.2.752.129.5.1.7) (se [R10]) / codeSystem: 1.2.752.116.2.1.1 / Regel 3.5 / Om kodad representation av lokalisation från nationellt urval saknas används endast CV-attributet originalText för att ange textuellt alternativ. | 0..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:comment | string | Angivelse av kommentar om enskilt prov. | 0..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:activity | SpecimenRelatedActivityType | Håller information om aktiviteter relaterade till hantering av provet. / Inkluderar även t.ex. aktiviteter i samband med transport, frysning, förvaring, bearbetning och delning i sekundärprov. | 0..* |
| //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:activity/*:code | CVType | Kod (SNOMED-CT-SE) för provrelaterad aktivitet. / code: Kod från  SNOMED-CT-SE / codeSystem: 1.2.752.116.2.1.1 / Det finns inget urval utpekat för detta attribut. Regel 3.4 | 1..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:activity/*:time | TimePeriodType | Angivelse av tidpunkt eller tidsintervall då den provrelaterade aktiviteten utfördes. / Om tidpunkt anges sätts start- och sluttid till samma tidpunkt. | 1..1 |
| //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:activity/*:method | CVType | Kod (SNOMED-CT-SE) för metod för provrelaterad aktivitet. / code:  Kod från  SNOMED-CT-SE / codeSystem: 1.2.752.116.2.1.1 / Det finns inget urval utpekat för detta attribut. Regel 3.4 | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:container | SpecimenContainerType | Information om den eller de provbehållare som provet förvaras i. | 0..* |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:container/*:identifier | IIType | Identitetsbeteckning för en provbehållare. | 0..* |
| //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:container/*:type | CVType | Kod (SNOMED-CT-SE) för typ av provbehållare. / code: Kod från Urval provbehållare laboratoriemedicin (OID 1.2.752.129.5.1.12) (se [R10]) / codeSystem: 1.2.752.116.2.1.1 / Regel 3.5 / Om kod saknas anges typ av provbehållare i orginalText / Om typ av provbehållartyp är okänd anges ”ospecificerad” i attributet originalText | 1..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:device | DeviceType | Information om den utrustning som använts för att utföra analysen. | 0..* |
| //*:body/*:groupOfAnalyses/*:analysis/*:device/*:identifier | IIType | Identitetsbeteckningen för en analysutrustning. | 1..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result | LaboratoryAnalysisResultType | Klassen LaboratoryAnalysisResultType håller information om resultat av den utförda analysen. / Detta resultat kan exempelvis bestå av ett mätvärde inom laboratoriedisciplinen kemi, ett fynd av en viss bakterieart eller en textuell beskrivning av analysresultatet. Utöver detta kan en kommentar avseende analysresultatet anges separat. | 0..* |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:type | CVType | Kod för typ av laboratorieanalysresultat. / code: Enligt urval från tillämpningsanvisning / codeSystem: 1.2.752.108.1 (om NPU-kod) eller 1.2.752.116.2.1.1 (om Snomed CT) | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:value / Regel 3.3 | AnyValueType | Angivelse av utfall av den utförda analysen angiven med en och endast en av datatyperna (se kapitel 5 för beskrivning av respektive datatyp): / PQType – mätbart värde / PQIntervalType - intervall av mätbart värde / String – textuellt svar / CVType – kodat värde | 1..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:comment | string | Angivelse av kommentar som rör laboratorieanalysresultatet. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:interpretation | CVType | Kod (SNOMED-CT-SE) för en tolkning av laboratorieanalysresultatet. / code:  Kod från Urval tolkning resultat laboratoriemedicin (OID 1.2.752.129.5.1.14) (se [R10]) / codeSystem: 1.2.752.116.2.1.1 / En sådan tolkning kan vara att analysresultatet ligger utanför aktuellt referensintervall, vilket även benämns som patologisk markör. / Regel 3.5 / Om kod ej kan anges används CV-typens attribut originalText som fritextalternativ. | 0..* |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference | ReferenceType | Information om vilket referensintervall eller referensvärde som gäller för ett resultat. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference /*:interval / Regel 3.3 | PQIntervalType | Angivelse av referensintervall som numeriskt värde av mätvärden. Ett referensvärde anges genom att antingen ange ett intervall från det lägre värdet till det högre värdet som sätts till referensvärdet, alternativt från referensvärde som start på intervallet utan angivelse av intervallets slut för att ange att normalvärde ligger över referensvärdet. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference /*:description | string | Textuell beskrivning av referensintervall. / Ett och endast ett av attributen interval och description ska anges. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference /*:population | string | Angivelse av den referenspopulation som ligger till grund för angivet referensintervall. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference /*:comment | string | Angivelse av kommentar för det angivna referensintervallet. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature | SignatureType | Information avseende signering av en enskild analys. / Analysen signeras av hälso- och sjukvårdspersonal på den remissvarsmottagande enheten när den förs in i patientjournalen. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature /*:id | IIType | Root sätts till OID för HSA (1.2.752.129.2.1.4.1) / Extension sätts till HSA-id för hälso- och sjukvårdspersonal | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature /*:name | string | Namn på hälso- och sjukvårdspersonal. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature /*:timestamp | TimeStampType | Tidpunkt för signering. | 1..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:recipientSignature/*:byRole | CVType | Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. / Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4). / Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature | SignatureType | Information avseende signering av en enskild analys. / Analysen signeras av den hälso- och sjukvårdspersonal som utför analysen. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:id | IIType | Root sätts till OID för HSA (1.2.752.129.2.1.4.1) / Extension sätts till HSA-id för hälso- och sjukvårdspersonal | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:name | string | Namn på hälso- och sjukvårdspersonal. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:timestamp | TimeStampType | Tidpunkt då signering genomfördes. | 1..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:performerSignature/*:byRole | CVType | Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. / Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4). / Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText. | 0..1 |
| //*:body/*:groupOfAnalyses/*:analysis/*:result/*:related | AnalysisType | Relaterade analyser, till exempel mikrobiologiska odlingssvar där resistensbestämning görs på fynd. | 0..* |
| //*:body/*:recipientUnit | OrgUnitType | Mottagande enhet. | 1..1 |
| //*:body/*:recipientUnit/*:id | IIType | Identitet för mottagande enhet. | 0..1 |
| //*:body/*:recipientUnit/*:name | string | Namn på mottagande enhet. | 1..1 |
| //*:body/*:recipientSignature | SignatureType | Information avseende signering av laboratoriesvaret. / Laboratoriesvaret signeras av hälso- och sjukvårdspersonal på den remissvarsmottagande enheten när det förs in i patientjournalen. | 0..1 |
| //*:body/*:recipientSignature/*:id | IIType | Root sätts till OID för HSA (1.2.752.129.2.1.4.1) / Extension sätts till HSA-id för hälso- och sjukvårdspersonal | 0..1 |
| //*:body/*:recipientSignature/*:name | string | Namn på hälso- och sjukvårdspersonal | 0..1 |
| //*:body/*:recipientSignature/*:timestamp | TimeStampType | Tidpunkt för signering. | 1..1 |
| //*:body/*:recipientSignature/*:byRole | CVType | Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. / Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4). / Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText. | 0..1 |
| //*:body/*:contactInformation | ContactInformationType | Information om var eller till vem vården kan vända sig vid frågor om laboratoriesvaret. | 0..1 |
| //*:body/*:contactInformation/*:text | string | Textuell beskrivning av kontaktinformation. / Det kan t.ex. vara telefonnummer och öppettider till en kundtjänst, ett namn på en kontaktperson. | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).
Gemensamt för alla övriga regler som valideras med hjälp av schematron är att om fältet inte är obligatoriskt och inte finns med i nyttolasten så kommer regeln inte ge ett fel.

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i getLaboratoryOrderOutcome/request | Regler i getLaboratoryOrderOutcome/request | Regler i getLaboratoryOrderOutcome/request |
| 1.1 [sch] | //*:patientId | När patientId.root är satt till OID för personnummer eller samordningsnummer så ska patientId.extension vara 12 tecken. |
| 1.2 [sch] | //*:sourceSystemHSAId | Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges vid begäran på reservnummer. |
| Regler i getLaboratoryOrderOutcome/header | Regler i getLaboratoryOrderOutcome/header | Regler i getLaboratoryOrderOutcome/header |
| 2.1 | //*:header/*:accessControlHeader/*:accountableCareGiver / //*:header/*:accessControlHeader/*:accountableCareUnit | Fältet krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av tjänstekonsumenter inom sammanhållen journalföring. |
| 2.2 | .//*:header/*:accessControlHeader/*:lockTime | Detta element skall ej användas. Enligt SOSFS 2016:40 ska det ej längre finnas möjlighet att låsa osignerade journalanteckningar |
| Regler i getLaboratoryOrderOutcome/body | Regler i getLaboratoryOrderOutcome/body | Regler i getLaboratoryOrderOutcome/body |
| 3.1 [sch] | //*:body/*:groupOfAnalyses | Om en groupOfAnalyses innehåller fler än en analysis måste attributet name eller code vara angivet. |
| 3.2 [sch] | //*:body/*:groupOfAnalyses /*:analysis/*:specimen | I schematypen analysis är specimen optional, men detta gäller bara relaterade analyser (som ärver specimeninformation från den översta analysen i en hierarki). |
| 3.3 | //*:body/*:groupOfAnalyses/*:analysis/*:result/*:value / //*:body/*:groupOfAnalyses/*:analysis/*:result/*:reference /*:interval | Om enhet till provsvar ej finns anges unit som tom sträng. |
| 3.4 | //*:body/*:referral/*:requestedCareService / //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:activity/*:code / //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:activity/*:method | Tjänstekonsumenten kan i sin egen dokumentation hänvisa till en interaktionsöverenskommelse för att specificera giltiga kodverk eller urval för detta attribut. Om ingen sådan hänvisning finns krävs att tjänstekonsumenten kan hantera alla producerade koder. Detta görs vanligen genom att presentera displayName i sin helhet. |
| 3.5 | //*:body/*:groupOfAnalyses /*:code / //*:body/*:groupOfAnalyses /*:analysis/*:code / //*:body/*:groupOfAnalyses /*:analysis/*:method / //*:body/*:groupOfAnalyses /*:analysis/*:status / //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:material / //*:body/*:groupOfAnalyses /*:analysis/*:specimen /*:anatomicalLocation / //*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:container/*:type / //*:body/*:groupOfAnalyses/*:analysis/*:result/*:interpretation | Observera att urvalet kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| 4.1 [sch] | Alla element som använder datatypen CVType | code ELLER originaltext SKA anges / Om code anges SKA codeSystem OCH displayName anges / Om code anges SKA INTE originalText anges / Om codeSystem anges SKA code OCH displayName anges / Om codeSystem anges SKA INTE originalText anges / codeSystem SKA vara en OID / Om displayName anges SKA code OCH codeSystem anges / Om displayName anges SKA INTE originalText anges. / Om originalText anges SKA INTE code, codeSystem eller displayName anges. |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

##### SLA-krav
Inga avvikande SLA-krav.

#### Annan information om kontraktet
Tjänstekontraktet har en tillhörande tillämpningsanvisning vars syfte är att beskriva hur olika laboratoriemedicinska resultat från klinisk kemi, immunologi, samt mikrobiologi avses att koderas och sedermera visas med olika visningsformat i nationella tjänster som exempelvis NPÖ (Nationell Patientöversikt) och Journalen. Denna återfinns här [R11].

### GetReferralOutcome
GetReferralOutcome returnerar svar på en konsultationsremiss samt begäran om övertagande av vårdansvar för en patient.

#### Version
3.2

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAid | HSAIdType | Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfessional. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime och signatureTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / Om signatureTime inte är angiven ersätts den med dagens datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till dokument som är skapade i angivet system. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..* |
| Svar |  |  |  |
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
| ../../../healthcareProfessionalHSAId | HSAIdType | HSA-id hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
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
| ../../../healthcareProfessionalCareUnitHSAId / Regel 1 | HSAIdType | HSA-id för Vårdenhet som hälso-och sjukvårdspersonen är uppdragstagare för. Ska anges om tillgänglig. | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId / Regel 1 | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. Signering = signering av remissvar. Information om vidimering sker i attributet attested i bodyn. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering | 1..1 |
| ../../../legalAuthenticatorHSAid | HSAIdType | HSA-id för person som signerat dokumentet. | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person | 0..1 |
| ../../../legalAuthenticatorRoleCode |  | Ska ej anges. | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..1 |
| ../../nullified |  | Ska ej anges. | 0..0 |
| ../../nullifiedReason |  | Ska ej anges. | 0..0 |
| ../referralOutcomeBody | ReferralOutcomeBodyType |  | 1..1 |
| ../../referralOutcomeTypeCode | referralOutcomeTypeCodeEnum | Anger typ av svar. 
Giltiga koder: 
SR, svar på remissfråga
SS, slutsvar på remissfråga | 1..1 |
| ../../referralOutcomeTitle | string | Text som beskriver vilken specialitet som utlåtandet gäller. Typen av specialitet som anlitats anges i text. / Exempel: / Patologi / Klinisk fysik / Logopedi | 0..1 |
| ../../referralOutcomeText | string | Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet. | 1..1 |
| ../../clinicalInformation | ClinicalInformationType | Klinisk information för remissvaret. Dessa kliniska data är direkt kopplat till svaret. | 0..* |
| ../../../clinicalInformationCode | ClinicalInformationCodeType | Kod för åtgärd. / Koden anges i code. / Kodverkets OID i codeSystem. | 1..1 |
| ../../../../code | string | Kod. | 1..1 |
| ../../../../codeSystem | string | Kod kan komma från kodverket ICD-10 (1.2.752.116.1.1.1.1.3) men andra kodverk kan förekomma. | 1..1 |
| ../../../clinicalInformationText | string | Beskrivning av klinisk information | 1..1 |
| ../../act | ActType | Utförd åtgärd | 0..* |
| ../../../actId | string | Åtgärdens identitet som är unik inom det lokala avsändande systemet | 0..1 |
| ../../../actCode | ActCodeType | Kod för åtgärd. / Koden anges i code. / Kodverkets OID anges i codeSystem. | 0..1 |
| ../../../../code | string | Nullvärde är tillåtet om kod ej är tillgänglig, och åtgärdskodstext ska då skrivas i <actText>. | 1..1 |
| ../../../../codeSystem | string | Lämpliga kodverk kan vara: KVÅ (1.2.752.116.1.3.2.1.4) men andra kodverk kan förekomma. | 1..1 |
| ../../../actText | string | Text som anger namnet på den kod som anges i attributet åtgärdskod. Beskrivning av åtgärd anges här om ingen kod har angetts i attributet åtgärdskod. | 1..1 |
| ../../../actTime | TimeStampType | Tidpunkt då åtgärd genomfördes | 0..1 |
| ../../../actResult | MultimediaType | Resultat av åtgärd. Data i form av bifogade bilder eller liknande. | 0..* |
| ../../../../id |  | Ska ej anges. | 0..0 |
| ../../../../mediaType | MediaTypeEnum | Typ av multimedia | 1..1 |
| ../../../../value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges. | 0..1 |
| ../../../../reference | anyURI | Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. | 0..1 |
| ../../attested | AttestedType | Information om vidimering av enskild utförd åtgärd med tillhörande resultat. Finns attester är åtgärden vidimerad. Med vidimerat menas att information om åtgärden har lästs och den som läst har tagit ansvar. | 0..1 |
| ../../../attestedTime | TimeStampType | Tidpunkten för vidimering | 1..1 |
| ../../../attesterHSAId | HSAIdType | HSA-id för person som vidimerat | 0..1 |
| ../../../attesterName | string | Namn på person som vidimerat | 0..1 |
| ../../referral | ReferralType | Information om den remissen som ligger till grund för svaret | 1..1 |
| ../../../referralId | string | Remissens identitet som är unik inom det lokala avsändade systemet | 1..1 |
| ../../../referralReason | string | Text som anger aktuell frågeställning. | 1..1 |
| ../../../referralTime | TimeStampType | Tid då remissen framställdes. | 0..1 |
| ../../../referralAuthor | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som framställt remissen som ligger till grund för svaret, nedan kallas författare. | 1..1 |
| ../../../../authorTime | TimeStampType | Tidpunkt då remissen registrerades i systemet. | 1..1 |
| ../../../../healthcareProfessionalHSAId | HSAIdType | HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
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
| ../../../../healthcareProfessionalCareUnitHSAId |  | Ska ej anges. | 0..0 |
| ../../../../healthcareProfessionalCareGiverHSAId |  | Ska ej anges. | 0..0 |
| ../../../careContactId | string | Identitet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. Detta ID kan användas för att genom tjänstekontaktet GetCareContacts (annan tjänstedomän) hämta kompletterandekontaktinformation. | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i getReferralOutcome/body | Regler i getReferralOutcome/body | Regler i getReferralOutcome/body |
| Regel 1 | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring |
| Allmänna regler | Allmänna regler | Allmänna regler |
| 2.1 |  | Producenter av GetReferralOutcome måste följa de generella riktlinjer för binära bilagor, se referens R12. Inbäddade bilagor får inte överstiga 100KB. |
| 2.2 [sch] | Alla element som använder datatypen CVType | code ELLER originaltext SKA anges / Om code anges SKA codeSystem OCH displayName anges / Om code anges SKA INTE originalText anges / Om codeSystem anges SKA code OCH displayName anges / Om codeSystem anges SKA INTE originalText anges / codeSystem SKA vara en OID / Om displayName anges SKA code OCH codeSystem anges / Om displayName anges SKA INTE originalText anges. / Om originalText anges SKA INTE code, codeSystem eller displayName anges. |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

##### SLA-krav
Inga avvikande SLA-krav.

#### Annan information om kontraktet
Ingen annan information om kontraktet finns.

### GetMaternityMedicalHistory
GetMaternityMedicalHistory returnerar mödravårdsjournal för en patient.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAid | HSAIdType | Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfessional. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets oid för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna documentTime, authorTime och signatureTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatumet, / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum, / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / Obs I schemat är elementet felaktigt döpt till timePeriod, men är av rätt typ dvs DatePeriodType. Elementnamnet ändras i nästa majorversion. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till dokument som är skapade i angivet system. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..* |
| Svar |  |  |  |
| maternityMedicalRecord | MaternityMedicalRecordType | En moders mödravårdsjournal. | 0..* |
| ../maternityMedicalRecordHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet. | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSAid för det system som dokumentet är skapat i. | 1..1 |
| ../../documentTitle | string | Titel som beskriver den information som sänds i dokumentet. | 0..1 |
| ../../documentTime | TimeStampType | Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten. | 1..1 |
| ../../patientId | PersonIdType | Id för modern.
id sätts till patientens identifierare, anges med 12 siffror utan avskiljare.
Type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| .../../../id | string | Sätts till moderns identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | type sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3). | 1..1 |
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
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare på. |  |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för den organisation som författaren är uppdragstagare på. | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare på. | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till enhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId / Regel 1 | HSAIdType | HSA-id för Vårdenhet. | 1..1 |
| ../../../healthcareProfessionalCareGiverHSAId / Regel 1 | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. | 1..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIDType | HSA-id för person som signerat dokumentet. | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../../legalAuthenticatorRoleCode |  | Ska ej anges. | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..1 |
| ../../nullified | string | Ska ej anges. | 0..0 |
| ../../nullifiedReason | string | Ska ej anges. | 0..0 |
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
| ../../../diseasesThrombosis | boolean | Trombos (true/false) | 0..1 |
| ../../../diseasesEndocineDiseases | boolean | Endokrina sjukdomar (true/false) | 0..1 |
| ../../../diseasesRecurrentUrinaryTractInfections | boolean | Upprepade urinvägsinfektioner (true/false) | 0..1 |
| ../../../diseasesDiabetesMellitus | boolean | Diabetes mellitus (true/false) | 0..1 |
| ../../../medicationDuringPregnacy | MedicationType | Före inskrivning under graviditet: medicinering | 0..* |
| ../../../../medicament | string | Preparat | 1..1 |
| ../../../../dosage | string | Dosering i beskrivande text | 0..1 |
| ../../../assessmentAtFirstContactStandardCare | boolean | Bedömning vid 1:a besök: basprogram (true/false) | 0..1 |
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
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i getReferralOutcome/body | Regler i getReferralOutcome/body | Regler i getReferralOutcome/body |
| Regel 1 | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| 2.2 [sch] | Alla element som använder datatypen CVType | code ELLER originaltext SKA anges / Om code anges SKA codeSystem OCH displayName anges / Om code anges SKA INTE originalText anges / Om codeSystem anges SKA code OCH displayName anges / Om codeSystem anges SKA INTE originalText anges / codeSystem SKA vara en OID / Om displayName anges SKA code OCH codeSystem anges / Om displayName anges SKA INTE originalText anges. / Om originalText anges SKA INTE code, codeSystem eller displayName anges. |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

##### SLA-krav
Inga avvikande SLA-krav.

#### Annan information om kontraktet
Ingen annan information om kontraktet finns.

### GetImagingOutcome
Tjänstekontraktet GetImagingOutcome returnerar bilddiagnostiska resultat för en patient.
Tjänstekontraktet baseras på existerande informationsmodell från NPÖ RIV 2.2.0-specifikation och ger information om resultatet av bild-undersökning i form av det sammanfattande utlåtandet kring undersökningsresultatet med i förekommande fall text och bild via länk el. motsvarande (se fältreglerna nedan). Informationsinnehållet har vidare utvidgats till att möjliggöra att ge både mer strukturerad bild-mätdata, dels stödja de standards som finns för att ge tillgång till bild-data på olika sätt, dels via DICOM för renderbar visning hos konsumenten eller som statisk bild.
I utformningen av tjänstekontraktet har hänsyn tagits till standarder på bildområdet. Som alternativ till DICOM ges möjlighet att skicka en bild/bildlänk (i något av de tillåtna formaten enligt HL7 MediaType) ihop med viss strukturerad data som komplement.
Som en frivillig del av tjänstekontraktet kan stråldoser som härrör till undersökningen bifogas. Tanken med detta är att möjliggöra för framtida ”appar” som samlar stråldos för uppföljning eller inför nya röntgenundersökningar.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten. / id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, resultTime samt remissens authorTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum, / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum, / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till dokument som är skapade i angivet system. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. | 0..* |
| Svar |  |  |  |
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
| ../../../authorTime | TimeStampType | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | HSA-id hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på hälso-och sjukvårdspersonal. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om ansvarige personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitName | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId / Regel 1 | HSAIdType | HSA-id för informationsägande vårdenhet. Ska anges om tillgänglig. | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId / Regel 1 | HSAIdType | HSA-id för informationsägande vårdgivare. | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. Det är normalt radiologen som signerar bilddiagnostiska svar. Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../../legalAuthenticatorRoleCode |  | Ska ej anges. | 0..0 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| ../../nullified | boolean | Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten. | 0..1 |
| ../../nullifiedReason | string | Anger orsak till makulering | 0..1 |
| ../imagingOutcomeBody | ImagingOutcomeBodyType |  | 1..1 |
| ../../examinationSpeciality | CVType | Undersökningstyp. Bör anges med kod enligt SNOMED. / Text som beskriver vilken specialitet som utlåtandet gäller.Exempel: / Typen av specialitet som anlitats anges i text Exempel: Patologi, Klinisk fysiologi, Logopedi | 0..1 |
| ../../typeOfResult | TypeOfResultCodeEnum | Svarstyp. / PREL = Preliminärsvar, denna typ är ny och finns ej i NPÖ:s riv-specifikation. / DEF = Definitivsvar, ett svar som har kommit tillbaka till beställaren från utföraren. / TILL = Tilläggssvar, kan avse två typer av svar: / Det fynd som gjorts enligt beställd undersökning, och som beskrivs i definitivsvaret, var så intressant att ytterligare undersökningar gjorts och svaret således behöver kompletteras. / Slutsvaret behöver av någon anledning korrigeras, och skickas således i ett tilläggssvar. / DEF sätts som förvalt värde. Den senaste statusen är den som ska skickas med. | 1..1 |
| ../../resultTime | TimeStampType | Svarstidpunkt. Tidpunkt då svar skickas till framställaren av remissen. | 1..1 |
| ../../resultReport | string | Text som beskriver det sammanfattade utlåtandet kring undersökningsresultatet | 1..1 |
| ../../resultComment | string | Kommentar till det sammanfattande utlåtandet | 0..1 |
| ../../radiationDose | PQType | Ett dosvärde som härrör till undersökningen. / Dosen kan anges på flera olika sätt (t.ex. som effektiv dos i Sv) eller som KAP. Den totala dosen som härrör till underökningen är summan av alla redovisade radiationDose. Enheten ska vara SI-enhet (eller kombination av sådana). (För KAP ska värdet räknas om till Gy*m² istället för Gy*cm².) | 0..* |
| ../../patientData | PatientDataType | Ytterligare information om patienten med relevans för bedömningen. Kan typiskt anges i samband med givande av strukturerad bild-information enligt nedan | 0..1 |
| ../../../patientWeight | PQType | Patientens vikt i kgvid undersökningstillfället. | 0..1 |
| ../../../patientLength | PQType | Patientens längd i cm vid undersökningstillfället. | 0..1 |
| ../../imageRecording | ImageRecordingType | Beskrivning av bild-tagning(ar). Bild(er) tas som en eller flera tagningar (noll tillåts i fall då tillgång till bild saknas, utan endast (remiss och) sammanfattande utlåtande finns). / En bildtagning kan i sin tur ha flera bilder | 0..* |
| ../../../recordingId | IIType | Id för Bild-tagningen som är unikt inom källsystemet. | 0..1 |
| ../../../examinationActivity | CVType | Åtgärdskod för utförd typ av Bild. KRÅ91-kod eller i förekommande fall annat kodverk. Om inget gemensamt kodverk används, anges åtgärdsbeskrivning i originalText. | 1..1 |
| ../../../examinationTimePeriod | TimePeriodType | Tidpunkt då Bild-insamlingen startar och slutar | 1..1 |
| ../../../examinationStatus | ExaminationStatusCodeEnum | Text som anger åtgärdens status. Kommer från KV åtgärdsstatus i V-TIM 1.0. Tillåtna värden är: Initierad, Planerad (bevakad), Tidbokad, Uppskjuten, Annullerad, Pågående, Avvakta, Avbruten, Avklarad, Inaktuell, Makulerad. | 0..1 |
| ../../../examinationUnit | string | Text som anger vilken typ av labenhet som undersökningsresultatet härrör från. T ex MR-lab, CT inom bild | 0..1 |
| ../../../accountableHealthcareProfessional | HealthcareProfessionalType | Hälso- och sjukvårdsperson som är ansvarig för informationen som härstammar från insamlingstillfället. Den person som har den fysiska kontakten med patienten vid insamlandet av data. | 0..1 |
| ../../../../authorTime | TimeStampType | Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. / Attributet sätts till detsamma som examinationTimePeriod.end, eller .start i de fall som inget .end finns | 1..1 |
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
| ../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitName | string | Namn på organisationsenhet. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../../orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| ../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId |  | Ska ej anges. | 0..0 |
| ../../../../healthcareProfessionalCareGiverHSAId |  | Ska ej anges. | 0..0 |
| ../../../numberOfImages | int | Det totala antalet bilder i bildtagningen | 0..1 |
| ../../../modalityData | ModalityDataType | Information om bild-utrustningen som använts | 0..1 |
| ../../../../typeOfModality | string | Modalitetstyp för bildfångande utrustning. | 0..1 |
| ../../../../manufacturer | string | Producerande utrustnings tillverkare. | 0..1 |
| ../../../../modelName | string | Producerande utrustnings modellnamn. | 0..1 |
| ../../../../equipmentId | string | Identifierare för utrustningen. Kan tex vara serienummer eller inventarienummer. | 0..1 |
| ../../../../softwareVersion | string | Text som anger tillverkarens version av den bildproducerande mjukvaran | 0..1 |
| ../../../../lineFilter |  | Ska ej anges. | 0..0 |
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
| ../../../../../mediaType | MediaTypeEnum | Mediatyper enligt HL7 MediaType | 1..1 |
| ../../../../../value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges. | 0..1 |
| ../../../../../reference | anyURI | Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. En tillverkarspecifik länk som är möjlig att via en säker anslutning visa i en webklient | 0..1 |
| ../../../../../burnedInAnnotations | boolean | True om patientdata finns i pixelinformationen. | 0..1 |
| ../../referral | ReferralType | Information om den remiss som ligger till grund för undersökningen och dess svar. Måste vara valfri eftersom tagning av Bild inte alltid remitteras | 0..1 |
| ../../../referralId | string | Remissens identitet som är unik inom det lokala avsändande systemet. Motsvarar vårdbegäran-id | 1..1 |
| ../../../referralReason | string | Text som anger frågeställningen | 0..1 |
| ../../../anamnesis | string | Text som anger bakgrund till frågeställningen | 0..1 |
| ../../../careContactId | string | Identitet för den hälso-och sjukvårdskontakt som föranlett remissen. Identiteten är unik inom producernade system. | 0..1 |
| ../../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso-och sjukvårdspersonal som framställt remissen, nedan kallad remittent. | 1..1 |
| ../../../../authorTime | TimeStampType | Tid då remissen framställdes | 1..1 |
| ../../../../healthcareProfessionalHSAid | HSAIdType | Remittentens HSA-id. HSA-id hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../../healthcareProfessionalName | string | Namn på remittenten. Om tillgängligt ska detta anges. | 0..1 |
| ../../../../healthcareProfessionalRoleCode | CVType | Information om remittentens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Om kodverk saknas anges befattning i originalText. | 0..1 |
| ../../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. | 0..1 |
| ../../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som remittenten är uppdragstagare på | 1..1 |
| ../../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. | 1..1 |
| ../../../../../orgUnitName | string | Namnet på den organisation som remittenten är uppdragstagare på | 1..1 |
| ../../../../../orgUnitTelecom | string | Telefon till organisationsenhet | 0..1 |
| ../../../../../orgUnitEmail | string | Epost till enhet | 0..1 |
| ../../../../../orgUnitAddress | string | Postadress för den organisation som remittenten är uppdragstagare på | 0..1 |
| ../../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering | 0..1 |
| ../../../../healthcareProfessionalCareUnitHSAId |  | Ska ej anges. | 0..0 |
| ../../../../healthcareProfessionalCareGiverHSAId |  | Ska ej anges. | 0..0 |
| ../../../attested | LegalAuthenticatorType | Information om den som vidimerat mottaget svar på remissen | 0..1 |
| ../../../../signatureTime | TimeStampType | Tidpunkt för vidimering. | 1..1 |
| ../../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som vidimerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig. | 0..1 |
| ../../../../legalAuthenticatorName | string | Namnen i klartext för vidimerande person. | 0..1 |
| ../../../../legalAuthenticatorRoleCode |  | Ska ej anges. | 0..0 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i getReferralOutcome/body | Regler i getReferralOutcome/body | Regler i getReferralOutcome/body |
| Regel 1 | ../../../healthcareProfessionalCareGiverHSAId
../../../healthcareProfessionalCareUnitHSAId | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| 2.1 |  | Producenter av GetImagingOutcome måste följa de generella riktlinjer för binära bilagor, se referens R12. Inbäddade bilagor får inte överstiga 100KB. |
| 2.2 [sch] | Alla element som använder datatypen CVType | code ELLER originaltext SKA anges / Om code anges SKA codeSystem OCH displayName anges / Om code anges SKA INTE originalText anges / Om codeSystem anges SKA code OCH displayName anges / Om codeSystem anges SKA INTE originalText anges / codeSystem SKA vara en OID / Om displayName anges SKA code OCH codeSystem anges / Om displayName anges SKA INTE originalText anges. / Om originalText anges SKA INTE code, codeSystem eller displayName anges. |

##### Icke funktionella krav
Inga övriga icke funktionella krav. Se generella SLA-krav för tjänstedomänen.

##### SLA-krav
Inga avvikande SLA-krav.

#### Annan information om kontraktet
Ingen annan information om kontraktet finns.

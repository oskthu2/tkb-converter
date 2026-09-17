## Tjänstekontrakt

_Not: källdokumentet saknar ett eget "7 Tjänstekontrakt"-avsnitt — de elva tjänstekontrakten låg direkt på toppnivå i originaldokumentet (avsnitt 4–14). Innehållet är återgivet ordagrant nedan, samlat under denna sektion enligt IG:ns fasta sidstruktur._

### ProcessPrescriptionReason
Tjänsten registrerar en ordinationsorsak med information om patient, organisatorisk enhet, eventuellt aktivitet som ordinationsorsaken har kopplats till, ordination och ordinerad substans. Observera att det endast är möjligt att skicka en ordination per meddelande. En befintlig ordinationsorsak kan uppdateras genom att ett nytt meddelande med samma id (aktivitetsid eller tillståndsid) skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

#### Begäran (Request)
Då meddelandestrukturen består av ett flertal statiska element (se avsnitt 4, "Lokala identiteter") listas här endast de element som har ett dynamiskt innehåll. Dessa anges som variabler i tabellen nedan. Om de fördefinierade mallarna utnyttjas för att skapa transaktionsfiler så söker man upp variabelnamnet (som inleds med prefixet $$) och ersätter med värdet som ska skickas till Infektionsverktyget. För de variabler som finns beskrivna i Infektionsverktygets RIV-specifikation ges en hänvisning till den klass och det attribut som variabeln motsvarar (Klass.attribut/Klass.association.Klass.attribut).

| Variabel | Typ | Värde | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1 |
| $$registreringstidpunkt_ordinationstidpunkt | Tid | I de fall en ordination finns anges här Ordinationsmoment.ordinationstidpunkt. I annat fall lämnas detta fält tomt. | 0..1 |
| $$vårdgivare | HSA-id | HSA-id för aktuell vårdgivare. | 1 |
| $$registrerande enhet | HSA-id | RIV-specifikation: Ordinationsorsak.registreras vid.Enhet.enhets-id | 1 |
| $$registreringstidpunkt | Tid | I de fall en ordinationsorsak registreras utan ordination anges här Ordinationsorsak.registreringstidpunkt, i annat fall lämnas detta fält tomt. | 0..1 |
| aktivitetsmoment | | Ange antingen aktivitetsmoment ELLER ordinationsmoment (se nedan) | 0..1 |
| aktivitetsmoment: $$id_terminologi | OID/Unikt id | Identifierare (OID eller annan unik identifierare) som anger vilket kodverk som aktuell kod tillhör. Möjliga värden är OID för Snomed CT och id för Infektionsverktygets kodverk med annan-koder. | 1 |
| aktivitetsmoment: $$aktivitetskod | Kod | RIV-specifikation: Aktivitetsmoment.aktivitetskod | 1 |
| aktivitet | | Aktivitet är obligatoriskt om aktivitetsmoment är angivet, annars frivilligt. | 0..1 |
| aktivitet: $$id_utgivare | Text | Möjliga värden: CeHis (i de fall värdet i $$enhet_aktivitetsid är ett HSA-id), Infektionsverktyget (i de fall värdet i $$enhet_aktivitetsid är en annan unik identifierare). | 1 |
| aktivitet: $$enhet_aktivitetsid | HSA-id/Unikt id | HSA-id alternativt annan unik identifierare för den enhet inom vilket aktuellt aktivitets-id är unikt. Annan unik identifierare används i de fall då aktiviteten är utförd hos en annan vårdgivare. Möjliga id:n: Annan vårdgivare: BC533FBB-DD4F-4F14-9E77-9E67A1E6D738; Annan vårdgivare Sverige: CFEEC579-C1FD-41C7-B940-1DD15CB6957A; Annan vårdgivare utomlands: DDCD0F15-E459-4F5C-BCD6-478D9C3040EE. När en aktivitet är utförd hos en annan vårdgivare skall inget id anges (i $$aktivitetsid). | 1 |
| aktivitet: $$aktivitetsid | Lokalt id | RIV-specifikation: Aktivitet.aktivitets-id. HSA-id + Lokalt id. HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt anges före det lokala id:t. Notera att detta attribut har olika betydelse beroende på om mallen för Activity (profylax) eller Condition (infektion) används. För Activity avses ett id för själva profylaxbehandlingen, för Condition avses ett id för den åtgärd som orsakat en post-operativ infektion. I Condition-fallet måste den angivna åtgärden sändas via ProcessActivity-tjänsten (innan eller efter anropet till ProcessPrescriptionReason) för att kopplingen skall bli komplett. Innan ProcessActivity anropats ligger kopplingen till åtgärden i en väntekö. | 1 |
| aktivitet: $$id_typ | OID | OID för lokalt id då ett id anges i $$aktivitetsid. Då aktiviteten är utförd hos en annan vårdgivare och inget id finns skall elementet $$id_typ lämnas tomt. | 0..1 |
| bedömtHälsorelateratTillstånd | | | 0..1 |
| bedömtHälsorelateratTillstånd: $$tillståndskod | Kod | RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillståndskod | 1 |
| bedömtHälsorelateratTillstånd: $$smittväg | Kod | RIV-specifikation: Bedömt hälsorelaterat tillstånd.smittväg | 1 |
| bedömtHälsorelateratTillstånd: $$enhet_tillståndsid | HSA-id | HSA-id för den enhet inom vilket aktuellt tillstånds-id är unikt. | 1 |
| bedömtHälsorelateratTillstånd: $$tillståndsid | Lokalt id | RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillstånds-id. HSA-id + Lokalt id. HSA-id för den enhet inom vilket aktuellt tillstånds-id är unikt anges före det lokala id:t. | 1 |
| ordinationsmoment | | Ange antingen ordinationsmoment ELLER aktivitetsmoment (se ovan) | 0..1 |
| ordinationsmoment: $$ordinationstidpunkt | Tid | RIV-specifikation: Ordinationsmoment.ordinationstidpunkt | 1 |
| ordinationsmoment: $$enhet_ordinationsid | HSA-id | HSA-id för den enhet inom vilket aktuellt ordinations-id är unikt. | 1 |
| ordinationsmoment: $$ordinationsid | Lokalt id | RIV-specifikation: Ordination.ordinations-id. HSA-id + Lokalt id. HSA-id för den enhet inom vilket aktuellt ordinations-id är unikt anges före det lokala id:t. | 1 |
| ordinationsmoment: $$ATC-kod | Kod | RIV-specifikation: Läkemedelssubstans.ATC-kod | 1..* |
| $$issuer_personid | Text | För personnummer och samordningsnummer är $$issuer_personid = Skatteverket. För lokalt reservnummer är $$issuer_personid = CeHis | 1 |
| $$assigner_personid | Text eller HSA-id | För personnummer och samordningsnummer är $$issuer_personid = Folkbokföringen. För lokalt reservnummer är $$assigner_personid = HSA-id för den enhet inom vilket aktuellt reservnummer är unikt | 1 |
| $$personid | Personnummer / Samordnings-nummer / Lokalt reservnummer | RIV-specifikation: Patient.person-id | 1 |
| $$oid_personid | OID | OID för personnummer, samordningsnummer eller icke-nationell identifierare Org + lokalt unikt id | 1 |
| $$födelsetidpunkt | Tid | RIV-specifikation: Patient.födelsetidpunkt | 1 |
| $$kön | Kod | RIV-specifikation: Patient.kön | 1 |

#### Svar (Response)

| ProcessPrescriptionReasonResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

##### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet "comment".

| Felkod | Felmeddelande | Beskrivning |
| :--- | :--- | :--- |
| 50001 | Kunde inte hitta angivet kodsystem (" + CodeSystemDescription + ") gällande " + CodeSystemForThisTypeOfCodes + "-koder för externt-id " + ExterntId; | Angivet kodsystemid är ogiltigt |
| 50002 | Kunde inte hitta angiven " + CodeCategory + "-kod (" + Code + ") i kodsystem " + CodeSystem + " (" + CodeSystemName + ") för externt-id " + ExterntId; | Angiven kod finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |
| 50012 | Externt-id " + ExterntId + " används av en annan vårdgivare; | Externt id används av en annan vårdgivare |
| 50013 | Organisatorisk Enhet (" + OrganisationsHsaId + ") tillhör inte vårdgivare (" + VardgivareHsaId + "); | OE tillhör inte vårdgivaren som skickar in data |
| 50014 | UtfärdatAv för patientid " + patientid + " är ogiltigt: " + kodsystem + "(" + utfardatAv + ") | Utfärdare saknar behörighet i Infektionsverktyget |
| 50015 | Ogiltig kod för kön (" + gender + ") i kodsystem (" + codeSystem + ") | Felaktig könskod inskickad |
| 50016 | Ordination med id " + externalId + " har redan en ordinationsorsak registrerad | |

#### Hantering av felaktiga koder
Om en, enligt terminologiservern, ej giltig ordinationsorsakskod (tillståndskod eller aktivitetskod) skickas till Infektionsverktyget så ignoreras denna och registreras därmed inte i Infektionsverktyget. I svaret returneras ERROR.

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ProcessPrescriptionReasonInteraction_1.0_RIVTABP20.wsdl](ProcessPrescriptionReasonInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt |
| [ProcessPrescriptionReasonResponder_1.0.xsd](ProcessPrescriptionReasonResponder_1.0.xsd) | Tjänstespecifikt schema |
| [PrescriptionReason-1.0.xsd](PrescriptionReason-1.0.xsd) | Domänschema (delat) |
| [BaseTypes-1.0.xsd](BaseTypes-1.0.xsd) | Domänschema (delat) |
| [Structure-1.0.xsd](Structure-1.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/processprescriptionreason](StructureDefinition-processprescriptionreason.html)
* **Logisk modell (request):** [StructureDefinition/processprescriptionreason-request](StructureDefinition-processprescriptionreason-request.html)

---

### ProcessLaboratoryReport
Tjänsten registrerar ett nytt laboratoriesvar med tillhörande information om patient, beställande enhet, provtagningstidpunkt och agensförekomst. Ett befintligt laboratoriesvar kan uppdateras genom att ett nytt meddelande med samma svarsid skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

#### Begäran (Request)

| Variabel | Typ | Värde | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1 |
| $$svarsid | Lokalt id | RIV-specifikation: Laboratoriesvar.svars-id. HSA-id + Lokalt id. HSA-id för den enhet inom vilket aktuellt svars-id är unikt anges före det lokala id:t. | 1 |
| $$provtagningstidpunkt | Tid | RIV-specifikation: Provtagning.provtagningstidpunkt | 1 |
| $$vårdgivare | HSA-id | HSA-id för aktuell vårdgivare. | 1 |
| $$registrerande enhet | HSA-id | RIV-specifikation: Laboratoriesvar.har beställande.Enhet.enhets-id | 1 |
| Mikrobiologiska fynd | | | 1..* |
| Mikrobiologiska fynd: $$observationstidpunkt | Tid | RIV-specifikation: Mikrobiologiskt fynd.observationstidpunkt | 1 |
| Mikrobiologiska fynd: $$agenskod | Kod | RIV-specifikation: Mikrobiologiskt fynd.agenskod | 1 |
| $$issuer_personid | Text | För personnummer och samordningsnummer är $$issuer_personid = Skatteverket. För lokalt reservnummer är $$issuer_personid = CeHis | 1 |
| $$assigner_personid | Text eller HSA-id | För personnummer och samordningsnummer är $$issuer_personid = Folkbokföringen. För lokalt reservnummer är $$assigner_personid = HSA-id för den enhet inom vilket aktuellt reservnummer är unikt | 1 |
| $$personid | Personnummer / Samordnings-nummer / Lokalt reservnummer | RIV-specifikation: Patient.person-id | 1 |
| $$oid_personid | OID | OID för personnummer, nationellt reservnummer eller samordningsnummer | 1 |
| $$födelsetidpunkt | Tid | RIV-specifikation: Patient.födelsetidpunkt | 1 |
| $$kön | Kod | RIV-specifikation: Patient.kön | 1 |

#### Svar (Response)

| ProcessLaboratoryReportResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

##### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet "comment".

| Felkod | Felmeddelande | Beskrivning |
| :--- | :--- | :--- |
| 50001 | Kunde inte hitta angivet kodsystem (" + CodeSystemDescription + ") gällande " + CodeSystemForThisTypeOfCodes + "-koder för externt-id " + ExterntId; | Angivet kodsystemid är ogiltigt |
| 50002 | Kunde inte hitta angiven " + CodeCategory + "-kod (" + Code + ") i kodsystem " + CodeSystem + " (" + CodeSystemName + ") för externt-id " + ExterntId; | Angiven kod finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |
| 50012 | Externt-id " + ExterntId + " används av en annan vårdgivare; | Externt id används av en annan vårdgivare |
| 50013 | Organisatorisk Enhet (" + OrganisationsHsaId + ") tillhör inte vårdgivare (" + VardgivareHsaId + "); | OE tillhör inte vårdgivaren som skickar in data |
| 50014 | UtfärdatAv för patientid " + patientid + " är ogiltigt: " + kodsystem + "(" + utfardatAv + ") | Utfärdare saknar behörighet i Infektionsverktyget |
| 50015 | Ogiltig kod för kön (" + gender + ") i kodsystem (" + codeSystem + ") | Felaktig könskod inskickad |

#### Hantering av felaktiga koder
Om en, enligt terminologiservern, ej giltig agenskod skickas till Infektionsverktyget så ignoreras denna och registreras därmed inte i Infektionsverktyget. I de fall då ett meddelande omfattar endast ett mikrobiologiskt fynd och detta anges med en ej giltig kod returneras ERROR i svaret. I de fall då ett meddelande omfattar fler fynd där någon av koderna är felaktig returneras INFO med en varning om att den ej giltiga koden inte har registrerats. Dock registreras övriga koder i meddelandet förutsatt att dessa är giltiga.

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ProcessLaboratoryReportInteraction_1.0_RIVTABP20.wsdl](ProcessLaboratoryReportInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt |
| [ProcessLaboratoryReportResponder_1.0.xsd](ProcessLaboratoryReportResponder_1.0.xsd) | Tjänstespecifikt schema |
| [LaboratoryReport-1.0.xsd](LaboratoryReport-1.0.xsd) | Domänschema (delat) |
| [BaseTypes-1.0.xsd](BaseTypes-1.0.xsd) | Domänschema (delat) |
| [Structure-1.0.xsd](Structure-1.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/processlaboratoryreport](StructureDefinition-processlaboratoryreport.html)
* **Logisk modell (request):** [StructureDefinition/processlaboratoryreport-request](StructureDefinition-processlaboratoryreport-request.html)

---

### ProcessActivity
Tjänsten registrerar en eller flera aktiviteter som utförts på en patient på en viss enhet. En befintlig aktivitet kan uppdateras genom att ett nytt meddelande med samma aktivitetsid skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

#### Begäran (Request)

| Variabel | Typ | Värde | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1 |
| $$aktivitetsmomenttid | Tid | RIV-specifikation: Aktivitetsmoment.aktivitetsmomenttid. Då $$aktivitetsmomenttid anges i elementet start_time och meddelandet omfattar flera aktiviteter ska den första (i tid mätt) aktivitetens tid anges. | 1 |
| $$vårdgivare | HSA-id | HSA-id för aktuell vårdgivare. | 1 |
| $$registrerande enhet | HSA-id | RIV-specifikation: Aktivitetsmoment.utförs vid.Enhet.enhets-id | 1 |
| $$aktivitetsid | Lokalt id | RIV-specifikation: Aktivitet.aktivitets-id. HSA-id + Lokalt id. HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt anges före det lokala id:t. | 1 |
| $$id_terminologi | OID | Identifierare som anger vilket kodverk som aktuell kod tillhör. Möjliga värden är OID för Snomed CT och OID för KVÅ | 1 |
| $$aktivitetskod | Kod | RIV-specifikation: Aktivitetsmoment.aktivitetskod | 1 |
| $$enhet_aktivitetsid | HSA-id | HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt. | 1 |
| $$issuer_personid | Text | För personnummer och samordningsnummer är $$issuer_personid = Skatteverket. För lokalt reservnummer är $$issuer_personid = CeHis | 1 |
| $$assigner_personid | Text eller HSA-id | För personnummer och samordningsnummer är $$issuer_personid = Folkbokföringen. För lokalt reservnummer är $$assigner_personid = HSA-id för den enhet inom vilket aktuellt reservnummer är unikt | 1 |
| $$personid | Personnummer / Samordnings-nummer / Lokalt reservnummer | RIV-specifikation: Patient.person-id | 1 |
| $$oid_personid | OID | OID för personnummer, nationellt reservnummer eller samordningsnummer | 1 |
| $$födelsetidpunkt | Tid | RIV-specifikation: Patient.födelsetidpunkt | 1 |
| $$kön | Kod | RIV-specifikation: Patient.kön | 1 |

#### Svar (Response)

| ProcessActivityResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

##### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet "comment".

| Felkod | Felmeddelande | Beskrivning |
| :--- | :--- | :--- |
| 50001 | Kunde inte hitta angivet kodsystem (" + CodeSystemDescription + ") gällande " + CodeSystemForThisTypeOfCodes + "-koder för externt-id " + ExterntId; | Angivet kodsystemid är ogiltigt |
| 50002 | Kunde inte hitta angiven " + CodeCategory + "-kod (" + Code + ") i kodsystem " + CodeSystem + " (" + CodeSystemName + ") för externt-id " + ExterntId; | Angiven kod finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |
| 50012 | Externt-id " + ExterntId + " används av en annan vårdgivare; | Externt id används av en annan vårdgivare |
| 50013 | Organisatorisk Enhet (" + OrganisationsHsaId + ") tillhör inte vårdgivare (" + VardgivareHsaId + "); | OE tillhör inte vårdgivaren som skickar in data |
| 50014 | UtfärdatAv för patientid " + patientid + " är ogiltigt: " + kodsystem + "(" + utfardatAv + ") | Utfärdare saknar behörighet i Infektionsverktyget |
| 50015 | Ogiltig kod för kön (" + gender + ") i kodsystem (" + codeSystem + ") | Felaktig könskod inskickad |

#### Hantering av felaktiga koder
Om en, enligt terminologiservern, ej giltig aktivitetskod skickas till Infektionsverktyget så ignoreras denna och registreras därmed inte i Infektionsverktyget. I de fall då ett meddelande omfattar endast en aktivitet och denna anges med en ej giltig kod returneras ERROR i svaret. I de fall då ett meddelande omfattar fler aktiviteter där någon av koderna är felaktig returneras INFO med en varning om att den ej giltiga koden inte har registrerats. Dock registreras övriga koder i meddelandet förutsatt att dessa är giltiga.

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ProcessActivityInteraction_1.0_RIVTABP20.wsdl](ProcessActivityInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt |
| [ProcessActivityResponder_1.0.xsd](ProcessActivityResponder_1.0.xsd) | Tjänstespecifikt schema |
| [Activity-1.0.xsd](Activity-1.0.xsd) | Domänschema (delat) |
| [BaseTypes-1.0.xsd](BaseTypes-1.0.xsd) | Domänschema (delat) |
| [Structure-1.0.xsd](Structure-1.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/processactivity](StructureDefinition-processactivity.html)
* **Logisk modell (request):** [StructureDefinition/processactivity-request](StructureDefinition-processactivity-request.html)

---

### ProcessCondition
Tjänsten registrerar ett eller flera nya bedömt hälsorelaterat tillstånd med information om patient, organisatorisk enhet och tillstånd. Ett befintligt tillstånd kan uppdateras genom att ett nytt meddelande med samma tillståndsid skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

#### Begäran (Request)

| Variabel | Typ | Värde | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1 |
| $$tillståndstid | Tid | RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillståndstid. Då $$tillståndstid anges i elementet start_time och meddelandet omfattar flera tillstånd ska det första (i tid mätt) tillståndets tid anges. | 1 |
| $$vårdgivare | HSA-id | HSA-id för aktuell vårdgivare. | 1 |
| $$registrerande enhet | HSA-id | RIV-specifikation: Bedömt hälsorelaterat tillstånd.bedöms vid.Enhet.enhets-id | 1 |
| $$tillståndsid | Lokalt id | RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillstånds-id. HSA-id + Lokalt id. HSA-id för den enhet inom vilket aktuellt tillstånds-id är unikt anges före det lokala id:t. | 0..1 |
| $$id_terminologi | OID | Identifierare som anger vilket kodverk som aktuell kod tillhör. Möjliga värden är OID för Snomed CT och OID för ICD-10-SE | 1 |
| $$tillståndskod | Kod | RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillståndskod | 1 |
| $$issuer_personid | Text | För personnummer och samordningsnummer är $$issuer_personid = Skatteverket. För lokalt reservnummer är $$issuer_personid = CeHis | 1 |
| $$assigner_personid | Text eller HSA-id | För personnummer och samordningsnummer är $$issuer_personid = Folkbokföringen. För lokalt reservnummer är $$assigner_personid = HSA-id för den enhet inom vilket aktuellt reservnummer är unikt | 1 |
| $$personid | Personnummer / Samordnings-nummer / Lokalt reservnummer | RIV-specifikation: Patient.person-id | 1 |
| $$oid_personid | OID | OID för personnummer, nationellt reservnummer eller samordningsnummer | 1 |
| $$födelsetidpunkt | Tid | RIV-specifikation: Patient.födelsetidpunkt | 1 |
| $$kön | Kod | RIV-specifikation: Patient.kön | 1 |

#### Svar (Response)

| ProcessConditionResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

##### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet "comment".

| Felkod | Felmeddelande | Beskrivning |
| :--- | :--- | :--- |
| 50001 | Kunde inte hitta angivet kodsystem (" + CodeSystemDescription + ") gällande " + CodeSystemForThisTypeOfCodes + "-koder för externt-id " + ExterntId; | Angivet kodsystemid är ogiltigt |
| 50002 | Kunde inte hitta angiven " + CodeCategory + "-kod (" + Code + ") i kodsystem " + CodeSystem + " (" + CodeSystemName + ") för externt-id " + ExterntId; | Angiven kod finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |
| 50012 | Externt-id " + ExterntId + " används av en annan vårdgivare; | Externt id används av en annan vårdgivare |
| 50013 | Organisatorisk Enhet (" + OrganisationsHsaId + ") tillhör inte vårdgivare (" + VardgivareHsaId + "); | OE tillhör inte vårdgivaren som skickar in data |
| 50014 | UtfärdatAv för patientid " + patientid + " är ogiltigt: " + kodsystem + "(" + utfardatAv + ") | Utfärdare saknar behörighet i Infektionsverktyget |
| 50015 | Ogiltig kod för kön (" + gender + ") i kodsystem (" + codeSystem + ") | Felaktig könskod inskickad |

#### Hantering av felaktiga koder
Om en, enligt terminologiservern, ej giltig tillståndskod skickas till Infektionsverktyget så ignoreras denna och registreras därmed inte i Infektionsverktyget. I de fall då ett meddelande omfattar endast ett tillstånd och denna anges med en ej giltig kod returneras ERROR i svaret. I de fall då ett meddelande omfattar fler tillstånd där någon av koderna är felaktig returneras INFO med en varning om att den ej giltiga koden inte har registrerats. Dock registreras övriga koder i meddelandet förutsatt att dessa är giltiga.

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ProcessConditionInteraction_1.0_RIVTABP20.wsdl](ProcessConditionInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt |
| [ProcessConditionResponder_1.0.xsd](ProcessConditionResponder_1.0.xsd) | Tjänstespecifikt schema |
| [Condition-1.0.xsd](Condition-1.0.xsd) | Domänschema (delat) |
| [BaseTypes-1.0.xsd](BaseTypes-1.0.xsd) | Domänschema (delat) |
| [Structure-1.0.xsd](Structure-1.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/processcondition](StructureDefinition-processcondition.html)
* **Logisk modell (request):** [StructureDefinition/processcondition-request](StructureDefinition-processcondition-request.html)

---

### ProcessCareEncounter
Tjänsten registrerar en ny patientplacering med information om patient, organisatorisk enhet och period för placeringen. En befintlig patientplacering kan uppdateras genom att ett nytt meddelande med samma vårdkontaktid skickas in. Tjänsten svarar antingen att det har gått bra eller med ett felmeddelande.

#### Begäran (Request)

| Variabel | Typ | Värde | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1 |
| $$vårdkontaktid | Lokalt id | RIV-specifikation: Vårdkontakt.vårdkontakt-id. HSA-id + Lokalt id. HSA-id för den enhet inom vilket aktuellt svars-id är unikt anges före det lokala id:t. | 1 |
| $$vårdkontakttid_starttidpunkt | Tid | RIV-specifikation: Vårdkontakt.vårdkontakttid | 1 |
| $$vårdkontakttid_sluttidpunkt | Tid | RIV-specifikation: Vårdkontakt.vårdkontakttid | 0..1 |
| $$vårdgivare | HSA-id | HSA-id för aktuell vårdgivare. | 1 |
| $$registrerande enhet | HSA-id | RIV-specifikation: Vårdkontakt.utförs vid.Enhet.enhets-id | 1 |
| $$issuer_personid | Text | För personnummer och samordningsnummer är $$issuer_personid = Skatteverket. För lokalt reservnummer är $$issuer_personid = CeHis | 1 |
| $$assigner_personid | Text eller HSA-id | För personnummer och samordningsnummer är $$issuer_personid = Folkbokföringen. För lokalt reservnummer är $$assigner_personid = HSA-id för den enhet inom vilket aktuellt reservnummer är unikt | 1 |
| $$personid | Personnummer / Samordnings-nummer / Lokalt reservnummer | RIV-specifikation: Patient.person-id | 1 |
| $$oid_personid | OID | OID för personnummer, nationellt reservnummer eller samordningsnummer | 1 |
| $$födelsetidpunkt | Tid | RIV-specifikation: Patient.födelsetidpunkt | 1 |
| $$kön | Kod | RIV-specifikation: Patient.kön | 1 |

#### Svar (Response)

| ProcessCareEncounterResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

##### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet "comment".

| Felkod | Felmeddelande | Beskrivning |
| :--- | :--- | :--- |
| 50003 | Starttidpunkt (" + StartDate + ") för vårdkontakt måste vara mindre än dess sluttidpunkt (" + EndDate + ")! | Sluttidpunkt kan inte vara före starttidpunkt för en vårdkontakt |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |
| 50012 | Externt-id " + ExterntId + " används av en annan vårdgivare; | Externt id används av en annan vårdgivare |
| 50013 | Organisatorisk Enhet (" + OrganisationsHsaId + ") tillhör inte vårdgivare (" + VardgivareHsaId + "); | OE tillhör inte vårdgivaren som skickar in data |
| 50014 | UtfärdatAv för patientid " + patientid + " är ogiltigt: " + kodsystem + "(" + utfardatAv + ") | Utfärdare saknar behörighet i Infektionsverktyget |
| 50015 | Ogiltig kod för kön (" + gender + ") i kodsystem (" + codeSystem + ") | Felaktig könskod inskickad |

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ProcessCareEncounterInteraction_1.0_RIVTABP20.wsdl](ProcessCareEncounterInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt |
| [ProcessCareEncounterResponder_1.0.xsd](ProcessCareEncounterResponder_1.0.xsd) | Tjänstespecifikt schema |
| [CareEncounter-1.0.xsd](CareEncounter-1.0.xsd) | Domänschema (delat) |
| [BaseTypes-1.0.xsd](BaseTypes-1.0.xsd) | Domänschema (delat) |
| [Structure-1.0.xsd](Structure-1.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/processcareencounter](StructureDefinition-processcareencounter.html)
* **Logisk modell (request):** [StructureDefinition/processcareencounter-request](StructureDefinition-processcareencounter-request.html)

---

### DeletePrescriptionReason
DeletePrescriptionReason raderar information som tidigare har registrerats via tjänsten ProcessPrescriptionReason. En befintlig ordinationsorsak i Infektionsverktyget raderas genom att tillstånds-id, om orsaken är en infektion, eller aktivitets-id, om orsaken är profylax, skickas via tjänsten. All information som har registrerats tillsammans med den identifierade ordinationsorsaken via tjänsten ProcessPrescriptionReason raderas helt i Infektionsverktyget.

#### Begäran (Request)

| Namn | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$ActivityId | String | Aktivitets-id för den aktivitet med tillhörande information som ska raderas i Infektionsverktyget. RIV-specifikation: Aktivitet.aktivitets-id. HSA-id + Lokalt id (OID:$$ActivityId). HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt anges före det lokala id:t. Anges när den ordinationsorsak som ska raderas är en aktivitet (profylax). Någon av aktivitets-id och tillstånds-id ska anges. | 0..1 |
| $$ConditionId | String | Tillstånds-id för det tillstånd med tillhörande information som ska raderas i Infektionsverktyget. RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillstånds-id. HSA-id + Lokalt id (OID:$$ConditionId). HSA-id för den enhet inom vilket aktuellt tillstånds-id är unikt anges före det lokala id:t. Anges när den ordinationsorsak som ska raderas är ett tillstånd (infektion). Någon av aktivitets-id och tillstånds-id ska anges. | 0..1 |

#### Svar (Response)

| DeletePrescriptionReasonResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

##### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet "comment".

| Felkod | Felmeddelande | Beskrivning |
| :--- | :--- | :--- |
| 50005 / 50006 | Kunde inte hitta ordinationsorsak för angivet (" + AktivitetId + ")/Kunde inte hitta ordinationsorsak för angivet (" + TillstandsId + ") | Angiven ordinationorsak finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeletePrescriptionReasonInteraction_1.0_RIVTABP20.wsdl](DeletePrescriptionReasonInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt |
| [DeletePrescriptionReasonResponder_1.0.xsd](DeletePrescriptionReasonResponder_1.0.xsd) | Tjänstespecifikt schema |
| [BaseTypes-1.0.xsd](BaseTypes-1.0.xsd) | Domänschema (delat) |
| [Structure-1.0.xsd](Structure-1.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/deleteprescriptionreason](StructureDefinition-deleteprescriptionreason.html)

_Request-modell: ej skapad som egen logisk modell — requesten innehåller endast tre filterfält (`logicalAddress`, `activityId`, `conditionId`) som dokumenteras i fältregeltabellen ovan._

---

### DeletePrescription
DeletePrescription raderar information om en ordination som tidigare har registrerats via tjänsten ProcessPrescriptionReason. Ordinationsorsaken för ordinationen tas inte bort.

#### Begäran (Request)

| Namn | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$PrescriptionId | String | Ordinations-id för den ordination som ska raderas i Infektionsverktyget. RIV-specifikation: Ordination.ordinations-id. HSA-id + Lokalt id (OID:$$PrescriptionId). HSA-id för den enhet inom vilket aktuellt ordinations-id är unikt anges före det lokala id:t. | 1..1 |

#### Svar (Response)

| DeletePrescriptionResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

##### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet "comment".

| Felkod | Felmeddelande | Beskrivning |
| :--- | :--- | :--- |
| 50004 | Kunde inte hitta ordination för angivet id: " + OrdinationsId; | Angiven ordination finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeletePrescriptionInteraction_1.0_RIVTABP20.wsdl](DeletePrescriptionInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt |
| [DeletePrescriptionResponder_1.0.xsd](DeletePrescriptionResponder_1.0.xsd) | Tjänstespecifikt schema |
| [BaseTypes-1.0.xsd](BaseTypes-1.0.xsd) | Domänschema (delat) |
| [Structure-1.0.xsd](Structure-1.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/deleteprescription](StructureDefinition-deleteprescription.html)

_Request-modell: ej skapad som egen logisk modell — requesten innehåller endast två filterfält (`logicalAddress`, `prescriptionId`) som dokumenteras i fältregeltabellen ovan._

---

### DeleteLaboratoryReport
DeleteLaboratoryReport raderar information som tidigare har registrerats via tjänsten ProcessLaboratoryReport. Ett befintligt labsvar i Infektionsverktyget raderas genom att svars-id skickas via tjänsten. All information som har registrerats tillsammans med det identifierade labsvaret via tjänsten ProcessLabReport raderas helt i Infektionsverktyget.

#### Begäran (Request)

| Namn | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$LaboratoryReportId | String | Svars-id för det laboratoriesvar med tillhörande information som ska raderas i Infektionsverktyget. RIV-specifikation: Laboratoriesvar.svars-id. HSA-id + Lokalt id (OID:$$LaboratoryReportId). HSA-id för den enhet inom vilket aktuellt svars-id är unikt anges före det lokala id:t. | 1..1 |

#### Svar (Response)

| DeleteLaboratoryReportResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

##### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet "comment".

| Felkod | Felmeddelande | Beskrivning |
| :--- | :--- | :--- |
| 50007 | Kunde inte hitta laboratoriesvar för angivet Laboratoriesvar-id (" + LaboratoriesvarId + ") | Angivet laboratoriesvar finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteLaboratoryReportInteraction_1.0_RIVTABP20.wsdl](DeleteLaboratoryReportInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt |
| [DeleteLaboratoryReportResponder_1.0.xsd](DeleteLaboratoryReportResponder_1.0.xsd) | Tjänstespecifikt schema |
| [BaseTypes-1.0.xsd](BaseTypes-1.0.xsd) | Domänschema (delat) |
| [Structure-1.0.xsd](Structure-1.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/deletelaboratoryreport](StructureDefinition-deletelaboratoryreport.html)

_Request-modell: ej skapad som egen logisk modell — requesten innehåller endast två filterfält (`logicalAddress`, `laboratoryReportId`) som dokumenteras i fältregeltabellen ovan._

---

### DeleteActivity
DeleteActivity raderar information som tidigare har registrerats via tjänsten ProcessActivity. En befintlig aktivitet i Infektionsverktyget raderas genom att aktivitets-id skickas via tjänsten. All information som har registrerats tillsammans med den identifierade aktiviteten via tjänsten ProcessActivity raderas helt i Infektionsverktyget.

#### Begäran (Request)

| Namn | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$ActivityId | String | Aktivitets-id för den aktivitet med tillhörande information som ska raderas i Infektionsverktyget. RIV-specifikation: Aktivitet.aktivitets-id. HSA-id + Lokalt id (OID:$$ActivityId). HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt anges före det lokala id:t. | 1..1 |

#### Svar (Response)

| DeleteActivityResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

##### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet "comment".

| Felkod | Felmeddelande | Beskrivning |
| :--- | :--- | :--- |
| 50004 | Kunde inte hitta aktivitet för angivet aktivitets-id (" + AktivitetId + ") | Angivet aktivitetsId finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteActivityInteraction_1.0_RIVTABP20.wsdl](DeleteActivityInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt |
| [DeleteActivityResponder_1.0.xsd](DeleteActivityResponder_1.0.xsd) | Tjänstespecifikt schema |
| [BaseTypes-1.0.xsd](BaseTypes-1.0.xsd) | Domänschema (delat) |
| [Structure-1.0.xsd](Structure-1.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/deleteactivity](StructureDefinition-deleteactivity.html)

_Request-modell: ej skapad som egen logisk modell — requesten innehåller endast två filterfält (`logicalAddress`, `activityId`) som dokumenteras i fältregeltabellen ovan._

---

### DeleteCondition
DeleteCondition raderar information som tidigare har registrerats via tjänsten ProcessCondition. Ett befintligt tillstånd (eg. diagnos) i Infektionsverktyget raderas genom att tillstånd-id skickas via tjänsten. All information som har registrerats tillsammans med det identifierade tillståndet via tjänsten ProcessCondition raderas helt i Infektionsverktyget.

#### Begäran (Request)

| Namn | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$ConditionId | String | Tillstånds-id för det tillstånd med tillhörande information som ska raderas i Infektionsverktyget. RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillstånds-id. HSA-id + Lokalt id (OID:$$ConditionId). HSA-id för den enhet inom vilket aktuellt tillstånds-id är unikt anges före det lokala id:t. | 1..1 |

#### Svar (Response)

| DeleteConditionResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

##### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet "comment".

| Felkod | Felmeddelande | Beskrivning |
| :--- | :--- | :--- |
| 50008 | Kunde inte hitta vårdkontakt för angivet Tillstånds-id (" + id + ")" | Angivet Tillstånd finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteConditionInteraction_1.0_RIVTABP20.wsdl](DeleteConditionInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt |
| [DeleteConditionResponder_1.0.xsd](DeleteConditionResponder_1.0.xsd) | Tjänstespecifikt schema |
| [BaseTypes-1.0.xsd](BaseTypes-1.0.xsd) | Domänschema (delat) |
| [Structure-1.0.xsd](Structure-1.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/deletecondition](StructureDefinition-deletecondition.html)

_Request-modell: ej skapad som egen logisk modell — requesten innehåller endast två filterfält (`logicalAddress`, `conditionId`) som dokumenteras i fältregeltabellen ovan._

---

### DeleteCareEncounter
DeleteCareEncounter raderar information som tidigare har registrerats via tjänsten ProcessCareEncounter. En befintlig vårdkontakt i Infektionsverktyget raderas genom att vårdkontakt-id skickas via tjänsten. All information som har registrerats tillsammans med den identifierade vårdkontakten via tjänsten ProcessCareEncounter raderas helt i Infektionsverktyget.

#### Begäran (Request)

| Namn | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| $$logical_address | HSA-id | Logisk adress till tjänsteimplementation. HSA-id för organisationspost motsvarande vårdgivare i HSA-trädet. | 1..1 |
| $$CareEncounterId | String | Vårdkontakt-id för den vårdkontakt med tillhörande information som ska raderas i Infektionsverktyget. RIV-specifikation: Vårdkontakt.vårdkontakt-id. HSA-id + Lokalt id (OID:$$CareEncounterId). HSA-id för den enhet inom vilket aktuellt vårdkontakt-id är unikt anges före det lokala id:t. | 1..1 |

#### Svar (Response)

| DeleteCareEncounterResponse | Typ | Kommentar | Kard |
| :--- | :--- | :--- | :--- |
| ResultCode | String | OK = Registrering genomförd / ERROR = Fel vid registrering. Felet beskrivs i elementet comment / INFO = Information finns om registreringen. Informationen beskrivs i elementet comment | 1..1 |
| comment | String | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |

##### Felkoder vid logiskt fel
Det är endast felmeddelandet nedan som returneras i svaret i fältet "comment".

| Felkod | Felmeddelande | Beskrivning |
| :--- | :--- | :--- |
| 50009 | Kunde inte hitta vårdkontakt för angivet vårdkontakts-id (" + id + ")" | Angiven vårdkontakt finns inte i Infektionsverktyget |
| 50011 | Okänd vårdgivare i logical address (" + VardgivareHsaId + ")" | Vårdgivaren finns inte i Infektionsverktyget |

#### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteCareEncounterInteraction_1.0_RIVTABP20.wsdl](DeleteCareEncounterInteraction_1.0_RIVTABP20.wsdl) | WSDL-kontrakt |
| [DeleteCareEncounterResponder_1.0.xsd](DeleteCareEncounterResponder_1.0.xsd) | Tjänstespecifikt schema |
| [BaseTypes-1.0.xsd](BaseTypes-1.0.xsd) | Domänschema (delat) |
| [Structure-1.0.xsd](Structure-1.0.xsd) | Domänschema (delat) |

#### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/deletecareencounter](StructureDefinition-deletecareencounter.html)

_Request-modell: ej skapad som egen logisk modell — requesten innehåller endast två filterfält (`logicalAddress`, `careEncounterId`) som dokumenteras i fältregeltabellen ovan._

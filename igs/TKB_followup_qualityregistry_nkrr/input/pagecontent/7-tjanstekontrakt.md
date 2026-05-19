## Tjänstekontrakt

### ProcessRegistrationNotification
Tjänstekontraktet ProcessRegistrationNotification möjliggör för vårdgivare att notifiera kvalitetsregister om att vårdgivaren har uppgifter om en patient som vårdgivaren avser ska registreras i registret.

#### Version
1.0

#### Gemensamma informationskomponenter
Gemensamma informationskomponenter är typer gemensamma för användning i tjänstekontrakt i flera domäner. Nedan listas de gemensamma typer som används i kontraktet ProcessRegistrationNotification.
Användning av datatyperna sker i enlighet med hur de är definierade, dvs. regler som anges för respektive datatyp och kardinalitet för de olika attributen ska följas. I de fall det finns restriktioner på en eller flera datatyper anges det i fältregeltabellerna.
Version 22 av gemensamma datatyper har använts för det här kontraktet.

##### IIType
En IIType är en numerisk eller alfanumerisk sträng som kan härledas till ett enskilt objekt eller entitet i ett känt system. Exempel är ett personnummer eller ett vårdkontakts-id.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string | En identifierare som i sig själv eller tillsammans med värdet för extension är universellt unik. Om extension anges är root en unik identifierare av namnrymden för värdet som anges i extension. | 1..1 |
| extension | string | En identifierare som tillsammans med värdet för root är universellt unik. Används om värdet på root inte är universellt unikt. | 0..1 |

Regler

root
När root används som en identifierare av en namnrymd ska identifieraren vara en Universally Unique Identifier (UUID), Object Identifier (OID), eller Uniform Resource Identifier (URI).

extension
Vissa scheman för identifierare definierar formateringsmöjligheter för deras kodvärden. Till exempel så skrivs personnumret vanligtvis med bindestreck, 19121212-1212. Bindestrecket bär dock ingen betydelse och kan utelämnas, som i 191212121212.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen "Namn". Dessa regler beskrivs mer i detalj i kapitlet "Övriga regler".

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| type | string | Den typ av registrering i kvalitetsregistret som notifieringen avses ge upphov till. / Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 0..1 |
| patientId | IIType | Id för patienten där fältet extension sätts till patientens identitetsbeteckning. Anges med 12 tecken utan avskiljare. / Fältet root sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. | 1..* |
| healthcareProviderId | IIType | Id för informationsägande vårdgivare för informationen i notifieringen. / Anges för att möjliggöra spårbarhet till informationsägande vårdgivare för informationen som lämnas ut och som hanteras av informationsmottaren eller andra parter. / I första hand HSA-id alternativt i andra hand organisationsnummer. / Om HSA-id används sätts fältet root till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id. / Om organisationsnummer används skall fältet root sättas till OID för organisationsnummer (1.2.752.29.4.3) och fältet extension sättas till organisationsnumret. / Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer. | 1..1 |
| registerUnitId | string | Id för registerenhet. / Registerenhet är den minsta indelning av datatillhörighet som ett kvalitetsregister använder för registrering och analys av data. Inte sällan motsvarar en registerenhet en vårdenhet inom vårdgivaren, men inte alltid. / Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 0..1 |
| reference | ReferenceType | Information om referenser till tidigare registreringar i kvalitetsregistret. Informationen används för att ge rätt kontext på den avsedda registreringen. / Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 0..* |
| NkrrParameters | NkrrParametersType | Här kan parametrar som används i begäran för tjänstekontraktet GetFormData anges. / Parametrarna ska fyllas i enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 0..1 |
| Svar |  |  |  |
| referenceId | string | Identifierare som kan lämnas som referens. / Ska specificeras och hanteras enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 0..1 |
| result | ResultType | Information om mottagningen av notifieringen lyckades. | 1..1 |
| ../resultCode | ResultCodeEnum | Anger resultatet av notifieringen. / Kan endast vara OK, INFO eller ERROR. | 1..1 |
| ../resultText | string | En beskrivande text som kan anges vid INFO eller ERROR. | 0..1 |
| ReferenceType |  |  |  |
| key | string | Nyckel för referens. / Vad som ska anges som nyckel ska framgå i den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. | 1..1 |
| value | string | Information om tidigare registrering enligt den angivna nyckeln. | 1..1 |
| NkrrParametersType |  |  |  |
| formId | string | Identifierare av mallen | 0..1 |
| sampleDate | string | Datum för filtrering vid insamling av underlag. / Datum som skickas i attributet används för att populera attributen careEncounterStartDate och careEncounterEndDate i tjänstekontraktet GetFormData. / Attributet ska fyllas i enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret. / Observera att ordningen på datumen som skickas kan ha betydelse och måste därför följa den ordning som beskrivs i informationsspecifikationen som kvalitetsregistret tillhandahåller. | 0..* |
| careUnitId | IIType | Vårdenheter inom vilka underlag för registrering ska hämtas. / Fältet root sätts till OID (1.2.752.129.2.1.4.1) för HSA. / Fältet extension sätts till HSA-id på vårdenhet. | 0..* |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Verify OID for patientId.root [sch] | patientId | extension ska vara 1.2.752.129.2.1.3.1 eller 1.2.752.129.2.1.3.3. |
| Verify single patient if NkrrParameters or reference is used [sch] | NkrrParameters / reference | NkrrParameters eller reference får inte anges om fler än en patient anges då dessa uppgifter är patientspecifika. Ska någon av dessa uppgifter hanteras behöver tjänstekonsumenten skicka en notifiering per patient. |
| Unik typ av registrering | type | Typen av registrering ska vara unik inom en tjänsteproducent. |
| Regler i svaret | Regler i svaret | Regler i svaret |
|  |  |  |
| Allmänna regler | Allmänna regler | Allmänna regler |
| Verify non-empty elements [sch] | Alla element. | Tomma värden får inte anges. |
| Tillämpad specifikation | Elementen type, registerUnitId, reference och NkrrParameters behöver beskrivas i den tillämpad specifikation. / Hantering av övriga element kan också beskrivas i den tillämpade specifikationen, men det är inte nödvändigt. | Tjänsteproducenter behöver tillhandahålla en tillämpad specifikation i form av t.ex. en informationsspecifikation för att beskriva hanteringen av notifiering till registret. Den tillämpade specifikationen beskriver regler för användning av tjänstekontraktet och dess innehåll utöver reglerna i denna TKB. Den tillämpade specifikationen kan t.ex. begränsa kardinaliteten för attributet patientId som uttrycker om en eller flera patienter får skickas i en notifiering. / Tjänstekonsumenter behöver utöver denna TKB även följa regler och anvisningar i den tillämpade specifikationen. |

##### Icke funktionella krav

###### SLA-krav
Kvalitetsregistrets informationsspecifikation eller annan tillämpad specifikation anger krav som en tjänsteproducent av tjänstekontraktet ProcessRegistrationNotification ställer på en tjänstekonsument.

###### Logiska fel
Vid ett logiskt fel i anrop levereras felinformation i resultCode och resultText.
Koden som anges i resultCode kan vara:

| Värde | Beskrivning |
| :--- | :--- |
| OK | Transaktionen har utförts enligt uppdraget. |
| INFO | Transaktionen har utförts enligt uppdraget. En beskrivande text kan anges i resultTest. / Kvalitetsregistrets informationsspecifikation eller annan tillämpad specifikation anger hantering av beskrivande text när resultatkoden INFO används. |
| ERROR | Transaktionen har INTE kunnat utföras p.g.a. ett logiskt fel. / Kvalitetsregistrets informationsspecifikation eller annan tillämpad specifikation anger hantering av logiska fel. |

#### Annan information om kontraktet

###### Loggning
För loggning och för att underlätta spårning tillhandahåller Virtualiseringsplattformen i SKLTP (Referensimplementation av tjänsteplattform) [R2] en HTTP-header med namnet "x-skltp-correlation-id" till tjänstekonsumenten och tjänsteproducenten.

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [ProcessRegistrationNotificationInteraction_1.0_RIVTABP21.wsdl](files/wsdl/ProcessRegistrationNotificationInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [followup_qualityregistry_nkrr_1.0.xsd](files/schema/followup_qualityregistry_nkrr_1.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](files/schema/itintegration_registry_1.0.xsd) | Domänschema (delat) |
| [ProcessRegistrationNotificationResponder_1.0.xsd](files/schema/ProcessRegistrationNotificationResponder_1.0.xsd) | Tjänstespecifikt schema |
| [SjD_TK_ProcessRegistrationNotification_1.0.docx](files/docs/SjD_TK_ProcessRegistrationNotification_1.0.docx) | Tjänstebeskrivning |
| [SjD_TP_ProcessRegistrationNotification_1.0.docx](files/docs/SjD_TP_ProcessRegistrationNotification_1.0.docx) | Tjänsteplattformsbeskrivning |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (request):** [StructureDefinition/processregistrationnotification-request](StructureDefinition-processregistrationnotification-request.html)
* **Logisk modell (response):** [StructureDefinition/processregistrationnotification](StructureDefinition-processregistrationnotification.html)
* **Kodsystem:** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.html)
* **ValueSet:** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.html)

---

### GetFormData
GetFormData hämtar underlag för ett enskilt kvalitetsregisterformulär. Anropet anger aktuellt kvalitetsregister-formulär, patient, vårdgivare, medarbetare, samt eventuellt datum för start av vårdkontakt och vårdenheter inom vilka underlag ska hämtas. Tjänsten evaluerar de frågor om finns definierade för formuläret. Frågorna evalueras mot underlag hämtat från informationskällorna utifrån de givna förutsättningarna, och resultaten med associerat underlag sammanställs i svaret till konsumenten.

#### Version
1.2

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen "Namn". Dessa regler beskrivs mer i detalj i kapitlet "Övriga regler".

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| formId | string | Identifierare av mallen. | 1..1 |
| subjectOfCareId | SubjectOfCareIdType | Identifierare av patienten. | 1..1 |
| careEncounterStartDate | Iso8601DateType | Datum för start av vårdhändelse. / Tjänsteproducenter kan välja att komplettera denna beskrivning om användning av attributet careEncounterStartDate i en informationsspecifikation eller annan tillämpad specifikation. | 0..1 |
| careEncounterEndDate | Iso8601DateType | Datum för slut av vårdhändelse. / Tjänsteproducenter kan välja att komplettera denna beskrivning om användning av attributet careEncounterEndDate i en informationsspecifikation eller annan tillämpad specifikation. | 0..1 |
| careUnitHSAId | HsaIdType | Vårdenheter inom vilka underlag ska hämtas. | 0..* |
| employeeId | HsaIdType | Identifierare av medarbetare. | 0..1 |
| employeePersonId | string | Medarbetares personnummer. Anges med 12 tecken utan avskiljare. | 0..1 |
| Svar |  |  |  |
| formElement | FormElementType | Svaret består av en lista med formulärets enskilda element. | 0..* |
| resultCode | ResultCodeEnum | OK = Hämtningen av underlag utfört utan fel. / ERROR = Fel har uppstått. / Felet beskrivs i elementet resultText. / INFO = Information finns om hämtningen. Informationen beskrivs i elementet resultText. | 1..1 |
| resultText | string | Beskrivning av fel som uppstått alternativt information om genomförd registrering. | 0..1 |
| logId | string | Identifierare av loggpost hos tjänsteproducenten, t.ex. ett UUID som kan användas vid felsökning. | 0..1 |
| FormElementType |  |  |  |
| formID | string | Identifierare av mallen. | 1..1 |
| query | string | Identitet för fråga. | 0..1 |
| answer | AnswerType | Svar på fråga. | 0..* |
| sourceData | SourceDataType | Beskrivning på hur svaret framställts. Kan visas för slutanvändare i konsumentapplikationen. | 0..* |
| AnswerType |  |  |  |
| value | string | Svar på fråga. | 1..1 |
| type | string | Typning av svaret. | 1..1 |
| SourceDataType |  |  |  |
| name | string | Domän + kontraktsnamn för grunddata. | 1..1 |
| entry | SourceDataEntryType | Del av underlaget för svaret. | 1..* |
| SourceDataEntryType |  |  |  |
| name | string | Namn på del av underlaget. Exempelvis enhet, födelseår eller kön. | 1..1 |
| value | string | Värde för del av underlaget. | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| R3 – Registrator måste anges | employeeId / employeePersonId | Vid scenariet att en sjukvårdspersonal (registrator) loggar in i aktuellt kvalitetsregister och i ett registreringsformulär, per patient, begär hämtning av uppgifter från vårddokumentationen hos vårdgivaren för automatisk förifyllnad av fält måste uppgift om registratorn anges antingen med HSA-Id i fältet employeeId eller med personnummer i fältet employeePersonId. / I ett helautomatiserat förlopp efter en notifiering ska fälten employeeId och employeePersonId inte anges. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| R2 – Svar är osorterade |  | Tjänsteproducenten behöver inte garantera att de svar som returneras är sorterade i en viss ordning. |
| R4 – Filtrering på LogicalAddress |  | Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som hämtats från den vårdgivare som anges av frågemeddelandets LogicalAddress. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| R1 - Flexibel ifyllnadsgrad |  | Om ett givet formulär innehåller N frågor kan en konsument av tjänsten förvänta sig M answer-element där M ≤ N. Även för ett givet formulär måste en konsument hantera att beroende på övriga inparametrar och när anropet sker kan en variabel mängd svar returneras. |

##### Icke funktionella krav

###### SLA-krav
Resultatet av tjänsteanrop till GetFormData används bland annat också interaktivt med vårdpersonal som en del i arbetet med registrering av uppgifter i kvalitetsregister. Det är därför viktigt att svarstider hålls låga för att systemet inte ska upplevas negativt. Annan användning avser mera automatiserade flöden som också ställer krav på svarstider.
Följande SLA-krav gäller för tjänsteproducenter av detta tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | 1 sek + den tid som adderas av underliggande informationstjänster | Ett enskilt anrop ska besvaras inom 1 sekund. |
| Tillgänglighet | kontorstid | Om ett kvalitetsregister inte kan nå tjänsteproducenten så förutsätts att informationen fortfarande läsas manuellt ur respektive vårdgivares vårddatasystem av kvalitetsregisterapportören (på samma sätt som sker idag). |
| Last | 10 000 anrop/dygn | Verklig last förväntas vara mellan 1000 och 10 000 anrop per dygn (kontorstid). |
| Aktualitet | Informationen skall alltid sammanställas vid anropet |  |

###### Logiska fel
Vid ett logiskt fel i anrop levereras felinformation i resultCode, resultText.
Felkoden kan vara:

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
| INFO |  | Uppslag har utförts enligt begäran, men det finns obesvarade frågor. Det finns ett meddelande som beskriver felet. |
| ERROR |  | Uppslag har INTE kunnat utföras. Det finns ett meddelande som beskriver felet. Exempel på detta kan vara ogiltigt inmatade inparametrar i frågemeddelandet. Denna felkod erhålls också om det inte finns någon data registrerad för patienten. Data kan returneras tillsammans med denna felkod, tex om ett källsystem svarar med felkod medans ett eller flera andra källsystem svarar med data. Returnerad data kan då vara korrekt och komplett, men behöver inte vara det. |
|  |  |  |

#### Annan information om kontraktet
Ingen annan information om kontraktet finns.

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetFormDataInteraction_1.2_RIVTABP21.wsdl](files/wsdl/GetFormDataInteraction_1.2_RIVTABP21.wsdl) | WSDL-kontrakt |
| [followup_qualityregistry_nkrr_1.0.xsd](files/schema/followup_qualityregistry_nkrr_1.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](files/schema/itintegration_registry_1.0.xsd) | Domänschema (delat) |
| [GetFormDataResponder_1.2.xsd](files/schema/GetFormDataResponder_1.2.xsd) | Tjänstespecifikt schema |
| [GetFormDataResponder_1.2_ext.xsd](files/schema/GetFormDataResponder_1.2_ext.xsd) | Tjänstespecifikt schema (ext) |
| [GetFormDataResponder_1.1_ext.xsd](files/schema/GetFormDataResponder_1.1_ext.xsd) | Tjänstespecifikt schema (ext v1.1, bakåtkompatibilitet) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (request):** [StructureDefinition/getformdata-request](StructureDefinition-getformdata-request.html)
* **Logisk modell (response):** [StructureDefinition/getformdata](StructureDefinition-getformdata.html)
* **Kodsystem:** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.html) (delat med ProcessRegistrationNotification)
* **ValueSet:** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.html)

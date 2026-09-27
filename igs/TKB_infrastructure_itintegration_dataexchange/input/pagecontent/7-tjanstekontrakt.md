# 7 Tjänstekontrakt

Källa: *Tjänstekontraktsbeskrivning för infrastructure: itintegration: dataexchange*, version 1.0 (preliminär, gren develop 2025-09-11), [TKB_itinfrastructure_itintegration_dataexchange.docx](TKB_itinfrastructure_itintegration_dataexchange.docx).

Motsvarar TKB kapitel 6 *Tjänstekontrakt* (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### GetBinaryData

Tjänstekontraktet hanterar information som kodas och överförs i ett format bestående enbart av bitar (0 och 1), vilket kan inkludera filer, bilder, ljud eller andra typer av data som inte är textbaserade.

Vanliga användningsfall är hantering av bilagor till annan vårddokumentation eller vårddokumentation vars ursprungsform är binär data.

#### 7.1.1 Version

1.0

#### 7.1.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| id | string | Unik identifierare av binär fil i källsystemet. / Anges på det sätt identifieraren är angiven i referensen, se avsnitt 6.1.4, till den binära filen. | 1..1 |
| Svar |  |  |  |
| binaryData | BinaryDataType | Information om det binära innehållet. | 0..1 |
| result | ResultType | Innehåller information om det gick bra eller ej att besvara förfrågan. | 1..1 |

##### 7.1.2.1 BinaryDataType

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| contentType | token | MIME-typ för det binära innehållet. / Anges enligt urvalet MimeTypes i FHIR. http://hl7.org/fhir/ValueSet/mimetypes / OID: 2.16.840.1.113883.4.642.3.1024 / Vanligt förekommande MIME-typer och deras filändelser finns här https://mimetype.io/ | 1..1 |
| data | base64Binary | Det faktiska binära innehållet. | 1..1 |

##### 7.1.2.2 ResultType

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | En beskrivande text som kan visas för användaren. | 0..1 |

##### 7.1.2.3 ResultCodeEnum

| Värde | Beskrivning |
| :--- | :--- |
| OK | Transaktionen har utförts enligt uppdraget. |
| INFO | En beskrivande text som kan visas för användaren. |
| ERROR | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. |

#### 7.1.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Id | id | Tjänstekontraktet GetBinaryData kan endast anropas av en tjänstekonsument efter att tjänstekonsumenten har kännedom om identifieraren för den binära filen. Identifieraren kan t.ex. förmedlas i en referens, se bilaga [R11], i ett tjänstekontrakt eller annat meddelande som pekar ut den binära filen. / Attributet attachment.id i referensen, se bilaga [R11], ska anges som id i begäran i tjänstekontraktet GetBinaryData. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| MIME-typ | contentType | Vilka värden som tillåts för elementet contentType behöver beskrivas i en interoperabilitetsspecifikation. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| Åtkomst och spärrkontroll |  | Åtkomsten till den vårddokumentation som refererar till en binär fil ligger även till grund för åtkomsthantering och spärrkontroll för den binära filen. |
| Interoperabilitetsspecifikation |  | En specifik interoperabel lösning behöver tillhandahålla en interoperabilitetsspecifikation för att beskriva användningen av tjänstekontraktet GetBinaryData och dess innehåll utöver reglerna i denna TKB. / Tjänstekonsumenter och tjänsteproducenter behöver utöver regler och anvisningar i denna TKB även följa regler och anvisningar i interoperabilitetsspecifikationen. |

##### 7.1.3.1 Icke funktionella krav

#### 7.1.4 Annan information om kontraktet

Tjänstekontraktets innehåll och definitioner är en tillämpning av resursen Binary (https://hl7.org/fhir/binary.html) i standarden HL7 FHIR [R9] för informationsutbyte inom hälso- och sjukvård.

För att använda tjänstekontraktet krävs att tjänstekonsumenten har kännedom om identifieraren för den binära filen. Identifieraren kan förmedlas i en referens, se bilaga [R11], till exempel i ett tjänstekontrakt eller annat meddelande som pekar ut den binära filen. Vilken information referensen håller om den binära filen kan skilja för olika interoperabla lösningar.

I referensen, se bilaga [R9], tillhandahålls metadata om ett dokument i objektet DocumentReferenceType. Med dokument avses alla serialiserade objekt med en MIME-typ. Ett dokument vars metadata beskrivs i DocumentReferenceType kan representeras av en eller flera binära filer i objektet AttachmentType som återfinns i DocumentReferenceType. Anledningen till denna struktur är för att kunna förmedla flera varianter av samma dokument men med olika egenskaper, till exempel en bild som representeras med flera filer innehållande olika detaljeringsnivå av information, eller olika filtyp (MIME-typ), men som i övrigt har samma innehåll. Ett annat exempel är ett dokument som representeras av flera PDF-filer med text på olika språk, men med samma textuella innehåll. Dessa egenskaper (t.ex. språk eller filstorlek) som kan skilja sig mellan olika varianter av samma dokument återfinns som metadata i AttachmentType.

Observera att det är den binära filen som unikt identifieras med attributet attachment.id i referensen som ska anges som identifierare för den binära fil som efterfrågas vid anrop med tjänstekontraktet GetBinaryData. I exempelmeddelandet nedan är det ”binary-1” markerat i svart text som ska anges som id i begäran i GetBinaryData.

Informationshanteringen av den binära filen styrs av reglerna för innehållet i det meddelande som innehåller referensen.

Exempelmeddelande för en referens:

```xml
<documentReference>
<id value="document-1" />
<version value="1" />
<status value="current" />
<description value="Ett dokument som exemplifierar användningen av en referens." />
<attachment>
<id value="binary-1" />
<contentType value="application/pdf" />
<language value="sv" />
<size value="1256498" />
<title value="Exempeldokument" />
<creation value="20241030131305" />
<endpoint>
<status value="active" />
<connectionType value="urn:riv:infrastructure:itintegration:dataexchange:GetBinaryDataResponder:1:rivtabp21" />
<address value="https://url.till.en.api-endpoint.se" />
<logicalAddress value="SE2321000016-T65N" />
<accessControlMechanism value="mutual-tls" />
</endpoint>
</attachment>
</documentReference>
```

#### 7.1.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| id | string |  | 1..1 |
| **Svar** | | | |
| binaryData | BinaryDataType |  | 0..1 |
| ../contentType | token |  | 1..1 |
| ../data | base64Binary |  | 1..1 |
| result | ResultType |  | 1..1 |
| ../resultCode | ResultCodeEnum |  | 1..1 |
| ../resultText | string |  | 0..1 |

#### 7.1.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:infrastructure.itintegration:dataexchange:GetBinaryDataResponder:1:GetBinaryData`

#### 7.1.7 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetBinaryDataInteraction_1.0_RIVTABP21.wsdl](GetBinaryDataInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetBinaryDataResponder_1.0.xsd](GetBinaryDataResponder_1.0.xsd) | Tjänsteschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_DE_GetBinaryData_1.0.docx](SjD_TK_DE_GetBinaryData_1.0.docx) | Självdeklaration för tjänstekonsument |
| [SjD_TP_DE_GetBinaryData_1.0.docx](SjD_TP_DE_GetBinaryData_1.0.docx) | Självdeklaration för tjänsteproducent |
| [GetBinaryData_constraints.xml](GetBinaryData_constraints.xml) | Schematron-regler ur testsviten (test-suite/GetBinaryData/constraints.xml) |

#### 7.1.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getbinarydata-request](StructureDefinition-getbinarydata-request.html)
* **Logisk modell (response):** [StructureDefinition/getbinarydata](StructureDefinition-getbinarydata.html)
* **Kodsystem:** [CodeSystem/dataexchange-resultcode-cs](CodeSystem-dataexchange-resultcode-cs.html)
* **ValueSet:** [ValueSet/dataexchange-resultcode-vs](ValueSet-dataexchange-resultcode-vs.html)


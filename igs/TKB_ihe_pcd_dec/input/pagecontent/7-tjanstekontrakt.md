# 7 Tjänstekontrakt

Källa: *Tjänstekontraktsbeskrivning IHE PCD DEC – Mätdata från mätutrustning*, version 1.0.1 (2017-10-18), [TKB_IHE_PCD_DEC.docx](TKB_IHE_PCD_DEC.docx).

Motsvarar TKB kapitel 6 *Tjänstekontrakt* (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### DeviceObservationConsumer

Detta tjänstekontrakt avser att stödja överföring av observationer och mätdata ifrån ett producerande system eller mellanlagrande system med hjälp av profilen IHE-PCD-01 och uppträder således i segmentet Services-IF enligt Continuas e2e arkitektur.

Tjänsten registrerar ett eller flera nya observationer/mätvärden med information om patient, mätutrustning, organisatorisk enhet och värden.

Meddelandemodellen från kap 5.1 motsvarar begäran för detta tjänstekontrakt.

#### 7.1.1 Version

1.0

#### 7.1.2 Fältregler

Nedanstående tabeller beskriver element i begäran och svar som behöver förtydliganden gentemot IHE-PCD-01-profilen samt det Continua guidelines definierar.

Första tabellen beskriver det enda xml-element i SOAP:Body och sedan följer de segment i HL7 v 2.6-meddelandet som behöver beskrivas mer ingående.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| CommunicatePCDData | xs:string | ihe-pcd-01 enligt Interoperability design guidelines for / personal health systems samt de fältregler som beskrivs nedan. | 1..1 |

Nedan följer förtydliganden utöver de som definieras av IHE-PCD-01 samt Continua guidelines som gäller för informationsutbyte över den nationella tjänsteplattformen.

##### 7.1.2.1 Segment MSH Header

MSH header segmentet är det första segmentet i alla PCD-01-meddelanden.

Segmentet är obligatorisk och innehåller information som unikt identifierar noden som skickar meddelandet.

Nedanstående tabell skall tolkas tillsamman med de guidelines som finns i Annex E.4.1 i dokumentet H.812 – Observation Upload – DG2016.pdf se referens R2

| Element – Segment . Subsegment | PCD-01 / HL7v2.6 MSH / (HL7 datatyp) | Beskrivning |
| :--- | :--- | :--- |
| MSH-6 | HD | Skall vara samma som logisk address. / Exempel: SE-ABCD1234 |
| MSH-9 | MSG | Måste sättas till  ORU^R01^ORU_R01 |
| MSH-18 | ID | Continua kräver att elementet skall sättas till den teckenkodning som används. / HL7 v2.x stipulerar dock att meddelanden som skickas över HTTP skall skall ange sin teckenkodning i HTTP-header “content-type” och att MSH-18 då skall ignoreras. / RIVTA kräver att UTF-8 skall användas, så både HTTP-header “content-type” samt MSH-18 skall sättas till UTF-8. |

###### 7.1.2.1.1 Exempel på MSH Header

```text
MSH|^~\&|AcmeInc^ACDE48234567ABCD^EUI- 64|||SE-ABCD1234|20090713090030+0000||ORU^R01^ORU_R01|MSGID1234|P|2.6|||NE|AL||UTF-8|||IHE PCD ORU-R01 2006^HL7^2.16.840.1.113883.9.n.m^HL7
```

##### 7.1.2.2 Segment PID

Nedanstående tabell skall tolkas tillsammans med de guidelines som finns i Annex E.4.1 i dokumentet H.812 – Observtion Upload – DG2016.pdf se referens R2

| Element – Segment . Subsegment | PCD-01 / HL7v2.6 PID / (HL7 datatyp) | Beskrivning |
| :--- | :--- | :--- |
| PID-3 | CX [1..1] | Id för patienten, den patient som observationsgruppen avser. |
| PID-3.1 | ST [1..1] | Personnummer/samordningsnummer,  Skall anges med 12 tecken utan avskiljare. / Exempel: 191212129876 |
| PID-3.4 | HD [0..1] | Assigning Authority / KV OID för typ av identifierare: / För personnummer används OID: 1.2.752.129.2.1.3.1 / För samordningsnummer används OID: 1.2.752.129.2.1.3.3 |
| PID-5 | XPN | Patientens namn / Exempel:  Tolvan^Tolvansson^Mellannamn^^^^L^A |
| PID-5.7 |  | Kod för typ av namn i PID-5 dvs patientens namn. / Exempel: L / Tillåtna koder enligt HL7 |
| PID-5.8 |  | Tecken-representation i PID-5 för patientens namn. / Exempel: A / Tillåtna koder |
| PID-8 | IS | Patientens kön enligt HL7 / F : Female / M : Male / O : Other / U : Unknown / A : Ambiguous / N : Not applicable / Exempel: M |

###### 7.1.2.2.1 Exempel på PID

```text
PID|||191212129876^^^1.2.752.129.2.1.3.1^PI||Tolvan^Tolvansson^Mellannamn^^^^L^A|||M
```

##### 7.1.2.3 Segment OBR

Nedanstående tabell skall tolkas tillsammans med de guidelines som finns i Annex E.4.1 i dokumentet H.812 – Observation Upload – DG2016.pdf se referens R2

| Element – Segment . Subsegment | PCD-01 / HL7v2.6 PID / (HL7 datatyp) | Beskrivning |
| :--- | :--- | :--- |
| OBR-3.2 | OBR-3.2 / (IS) | OBR-3.2 innehåller det unika ID som observatiosgruppen/undersökningen fått i det utförande systemet. Det varierar dock hur olika system tolkar standarden och således hur de olika efterföljande subfälten ska sättas. / Bör sättas till systemets HSA ID. / Exempel: SE-123456789 |

###### 7.1.2.3.1 Exempel på OBR

```text
OBR|1|AB12345^AcmePHGInc^ACDE48234567ABCD^EUI- 64|SE-123456789^^^ |182777000^monitoring of patient^SNOMED- CT|||20090813095715+0000
```

##### 7.1.2.4 Segment OBX för utrustning och observation

Nedanstående tabell skall tolkas tillsammans med de guidelines som finns i Annex E.4.1 i dokumentet H.812 – Observation Upload – DG2016.pdf se referens R2

För utrustning som följer IEEE/ISO 11073-20601 finns det generella guidelines för hur dessa skall mappas in i ett OBX-segment, se H.812 – Observation Upload – DG2016.pdf Annex D.0.4 för mer information.

| Element – Segment . Subsegment | PCD-01 / HL7v2.6 OBX / (HL7 datatyp) | PCD-01 / HL7v2.6 OBX / (HL7 datatyp) | Beskrivning |
| :--- | :--- | :--- | :--- |
| OBX-3 | CWE | CWE | Typ av observation t.ex vikt, pulsmätning. / Exempel: MDC (IEEE/ISO 11073-20601): / 150456^MDC_PULS_OXIM_SAT_O2^MDC / 188736^MDC_MASS_BODY_ACTUAL^MDC / 149530^MDC_PULS_OXIM_PULS_RATE^MDC / Se även Appendix E.3 i  H.812 – Observation Upload – DG2016.pdf |
| OBX-5 | Varies | Varies | OBX-5 innehåller observationen. / Värdet för mätningen. / Exempel (vikt): 153.6\| |
| OBX-6 |  |  | Den enhet observationen är uttryckt med, t.ex centimeter för längd, eller kilogram för vikt. / Exempel med MDC: / 263875^MDC_DIM_KILO_G^MDC |
| OBR-7,OBR-8,OBX-14 |  | Tidstämpel (start/stop) som sätts i OBR-7 / Och OBR-8 gäller för gruppen av observationer, d v s alla efterföljande OBX segment. / Om varje observation har en egen tidsstämpel, kan OBX-14 användas. Denna position tillåter då istället endast en tidsstämpel, således inte ett intervall. / Tidsperiod för observationen. / Består av TimeStampType intervallerna startTime respektive endTime. Vardera uttrycks på formatet ÅÅÅÅMMDDttmmss. / Om observationen är en tidpunkt, inte ett intervall, sätts sluttid till samma tid som starttid. / NI 2015:1 / Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma. Exempelvis så kan tidsattributet ange att patienten hade huvudvärk igår kväll mellan kl. 20.00 och 21.45 även om detta berättades på morgonen efter och det dokumenterades först då. Om observationen är ett måltillstånd anger tidsattributet när detta tillstånd önskas vara uppnått. / Observationens tid skiljer sig vanligtvis från dokumentationstidpunkt i journalhandling som beskriver när tillståndet dokumenterades, vilket alltid sker i efterhand. | Tidstämpel (start/stop) som sätts i OBR-7 / Och OBR-8 gäller för gruppen av observationer, d v s alla efterföljande OBX segment. / Om varje observation har en egen tidsstämpel, kan OBX-14 användas. Denna position tillåter då istället endast en tidsstämpel, således inte ett intervall. / Tidsperiod för observationen. / Består av TimeStampType intervallerna startTime respektive endTime. Vardera uttrycks på formatet ÅÅÅÅMMDDttmmss. / Om observationen är en tidpunkt, inte ett intervall, sätts sluttid till samma tid som starttid. / NI 2015:1 / Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma. Exempelvis så kan tidsattributet ange att patienten hade huvudvärk igår kväll mellan kl. 20.00 och 21.45 även om detta berättades på morgonen efter och det dokumenterades först då. Om observationen är ett måltillstånd anger tidsattributet när detta tillstånd önskas vara uppnått. / Observationens tid skiljer sig vanligtvis från dokumentationstidpunkt i journalhandling som beskriver när tillståndet dokumenterades, vilket alltid sker i efterhand. |
| OBR-7 | DT | Observation Date/Time / Tillåtet format: / YYYY[MM[DD[HH[MM[SS[.S[S[S[S]]]]]]]]][+/-ZZZZ] | Observation Date/Time / Tillåtet format: / YYYY[MM[DD[HH[MM[SS[.S[S[S[S]]]]]]]]][+/-ZZZZ] |
| OBR-8 | DT | Observation End Date/Time / Tillåtet format: / YYYY[MM[DD[HH[MM[SS[.S[S[S[S]]]]]]]]][+/-ZZZZ] | Observation End Date/Time / Tillåtet format: / YYYY[MM[DD[HH[MM[SS[.S[S[S[S]]]]]]]]][+/-ZZZZ] |
| OBX-14 | DTM | Tidsstämpel för observation. OBR-7/8 segmenten gäller om inte OBX-14 är satt. / OBX-14 skall inte vara >= OBR-7 och / skall inte vara <= OBR-8. | Tidsstämpel för observation. OBR-7/8 segmenten gäller om inte OBX-14 är satt. / OBX-14 skall inte vara >= OBR-7 och / skall inte vara <= OBR-8. |

###### 7.1.2.4.1 Exempel på OBX

```text
OBX|1|NM|150456^MDC_PULS_OXIM_SAT_O2^MDC|1.0.0.15|87.5|262688^MDC_DIM_PERCENT^MDC|||||R|||20140510094931.835-0400
OBX|2|NM|188736^MDC_MASS_BODY_ACTUAL^MDC|1.0.0.16|153.6|263875^MDC_DIM_KILO_G^MDC|||||R|||20140510094931.835-0400
OBX|3|NM|149530^MDC_PULS_OXIM_PULS_RATE^MDC|1.0.0.17|75.8|264864^MDC_DIM_BEAT_PER_MIN^MDC|||||R|||20140510094931.835-0400
```

##### 7.1.2.5 Exempel på ett helt meddelande

Det här exemplet visar hela SOAP-payloaden som skickas, flera exempel finns i arkivet (under docs/examples) i den zip som publiceras på rivta.se.

Notera att HL7 v2.6-meddelanden som innehåller reserverade xml-tecken skall konverteras enligt de regler som beskrivs på R18 och R19 samt R15 kapitel 8.7. T.ex & blir &amp;

```xml
<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:add="http://www.w3.org/2005/08/addressing" xmlns:urn="urn:ihe:pcd:dec:2010" xmlns:soapenv="http://www.w3.org/2003/05/soap-envelope">
<soap:Header xmlns:wsa="http://www.w3.org/2005/08/addressing">
<add:To soapenv:mustUnderstand="true">${logicalAddress}</add:To>
</soap:Header>
<soap:Body>
<soap:Body>
<urn1:CommunicatePCDData>MSH|^~\&amp;|AcmeInc^ACDE48234567ABCD^EUI- 64|||SE-ABCD1234|20090713090030+0000||ORU^R01^ORU_R01|MSGID1234|P|2.6|||NE|AL||UTF-8|||IHE PCD ORU-R01 2006^HL7^2.16.840.1.113883.9.n.m^HL7
PID|||191212129876^^^1.2.752.129.2.1.3.1^PI||Tolvan^Tolvansson^Mellannamn^^^^L^A|||M
OBR|1|AB12345^AcmePHGInc^ACDE48234567ABCD^EUI-64|CD12345^AcmePHGInc^ACDE48234567ABCD^EUI- 64|182777000^monitoring of patient^SNOMED-CT|||20090813095715+0000
OBX|1|CWE|68220^MDC_TIME_SYNC_PROTOCOL^MDC|0.0.0.1|532224^MDC_TIME_SYNC_NONE^MDC||||||R
OBX|2||528399^MDC_DEV_SPEC_PROFILE_SCALE^MDC|1|||||||X|||||||0123456789ABCDEF^EUI-64
OBX|3|DTM|67975^MDC_ATTR_TIME_ABS^MDC|1.0.0.1|20090828123702||||||R|||20090828173702+0000
OBX|4|NM|188736^MDC_MASS_BODY_ACTUAL^MDC|1.0.0.2|156.3|263875^MDC_DIM_KILO_G^MDC|||||R|||20090815070707+0000
OBX|5|NM|188740^MDC_LEN_BODY_ACTUAL^MDC|1.0.0.3|180|263441^MDC_DIM_CENTI_M^MDC|||||R|||20090815070707+0000
OBX|6|NM|188752^MDC_RATIO_MASS_BODY_LEN_SQ^MDC|1.0.0.4|24.7|264096^MDC_DIM_KG_PER_M_SQ^MDC|||||R|||20090815070707+0000
OBR|2|AB12345^AcmePHGInc^ACDE48234567ABCD^EUI-64|CD12345^AcmePHGInc ^ACDE48234567ABCD^EUI- 64|182777000^monitoring of patient^SNOMED-CT|||20090813095715+0000
OBX|7||528399^MDC_DEV_SPEC_PROFILE_SCALE^MDC|2|||||||X|||||||0123456789ABCDEF^EUI-64
OBX|8|DTM|67975^MDC_ATTR_TIME_ABS^MDC|2.0.0.1|20090828123702||||||R|||20090828173702+0000
OBX|9|NM|188736^MDC_MASS_BODY_ACTUAL^MDC|2.0.0.2|80|263875^MDC_DIM_KILO_G^MDC|||||R|||20090815070707+0000
OBX|10|NM|188740^MDC_LEN_BODY_ACTUAL^MDC|2.0.0.3|180|263441^MDC_DIM_CENTI_M^MDC|||||R|||20090815070707+0000
OBX|11|NM|188752^MDC_RATIO_MASS_BODY_LEN_SQ^MDC|2.0.0.4|24.7|264096^MDC_DIM_KG_PER_M_SQ^MDC|||||R|||20090815070707+0000
<urn1:CommunicatePCDData>
</soap:Body>
</soap:Envelope>
```

| Svar |  |  |  |
| :--- | :--- | :--- | :--- |
| CommunicatePCDDataResponse | xs:string | Svar enligt Interoperability design guidelines for personal health systems | 1..1 |

##### 7.1.2.6 Exempel svar

```xml
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:urn="urn:ihe:pcd:dec:2010">
<soapenv:Header/>
<soapenv:Body> <urn:CommunicatePCDDataResponse>MSH|^~\&amp;|Stepstone||AcmeInc^ACDE48234567ABCD^EUI64||20090726095731+0500||ACK^A01^ACK|AMSGID1234|P|2.6|&#xD;MSA|AA|MSGID1234|Message Accepted|&#xD;]]></urn:CommunicatePCDDataResponse>
</soapenv:Body>
</soapenv:Envelope>
```

#### 7.1.3 Övriga regler

#### 7.1.4 Annan information om kontraktet

#### 7.1.5 Fältregler enligt schema (XSD)

Schemat definierar bara två strängelement; HL7-meddelandets innehåll regleras av tabellerna ovan. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| LogicalAddress (SOAP-huvud `wsa:To`) | string | Logisk adress enligt WS-Addressing (WSDL-meddelandet CommunicatePCDData_Message). | 1..1 |
| CommunicatePCDData | UnsolicitedObservationResult (string) | HL7 v2.6 ORU^R01 i ER7-format. | 1..1 |
| **Svar** | | | |
| CommunicatePCDDataResponse | GeneralAcknowledgement (string) | HL7 v2.6-kvittens i ER7-format. | 1..1 |

#### 7.1.6 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: DeviceObservationConsumerInteraction  
Tjänstedomän: ihe.pcd.dec  
Tjänsteinteraktionstyp: Fråga-Svar RIV  
Teknisk Anvisning: RIVTABP20  
Förvaltas av: Inera AB

SOAPAction: `urn:ihe:pcd:2010:CommunicatePCDData`

#### 7.1.7 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeviceObservationConsumerInteraction_1.0_RIVTABP20.wsdl](DeviceObservationConsumerInteraction_1.0_RIVTABP20.wsdl) | WSDL (tjänsteinteraktion) |
| [DeviceObservationConsumer.xsd](DeviceObservationConsumer.xsd) | Tjänsteschema |
| [ws-addressing-1.0.xsd](ws-addressing-1.0.xsd) | WS-Addressing (SOAP-huvudet `wsa:To`) |
| [soap_example_request.xml](soap_example_request.xml) | Exempel på begäran |
| [soap_example_response.xml](soap_example_response.xml) | Exempel på svar |

#### 7.1.8 FHIR-artefakter

Följande FHIR-artefakter har skrivits utifrån schemat och WSDL:en:

* **Logisk modell (request):** [StructureDefinition/deviceobservationconsumer-request](StructureDefinition-deviceobservationconsumer-request.html)
* **Logisk modell (response):** [StructureDefinition/deviceobservationconsumer](StructureDefinition-deviceobservationconsumer.html)


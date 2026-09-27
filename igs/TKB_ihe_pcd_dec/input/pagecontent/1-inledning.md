# 1 Inledning

Källa: *Tjänstekontraktsbeskrivning IHE PCD DEC – Mätdata från mätutrustning*, version 1.0.1 (2017-10-18), [TKB_IHE_PCD_DEC.docx](TKB_IHE_PCD_DEC.docx).

### Dokumentinformation

| Dokument | IHE PCD DEC / Mätdata från mätutrustning |
| :--- | :--- |
| Version | 1.0.1 |
| Datum | 2017-10-18 |

#### Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0_RC1 |  | 2015-09-06 | Första version av dokumentet | Khaled Daham |  |
| 1.0_RC1 |  | 2015-09-16 | Lagt till fältregler | Khaled Daham |  |
| 1.0_RC1 |  | 2015-09-30 | Uppdaterat exempel och referenstabell | Khaled Daham |  |
| 1.0_RC2 |  | 2016-02-03 | Uppdaterat exempel-filer. / Separerat de olika ER7 segmenten för enklare läsning. / Lagt till referenser till verktyg som underlättar vid utveckling och verifiering av ER7-meddelanden. / Lagt till referenser till de ISO-  mätutrustning | Khaled Daham |  |
| 1.0_RC3 |  | 2016-04-18 | Redaktionella ändringar efter feedback ifrån Telia (Hjalmar Jacobson) / Lagt till två ER7-exempel, en för blodtryck och en för vikt. | Khaled Daham |  |
| 1.0_RC3 |  | 2016-06-28 | Tagit bort webtexten ur TKB, webtexten publiceras på inera.se | Khaled Daham |  |
| 1.0_RC3 |  | 2016-07-01 | Uppdaterat med domännamn enligt VIFO och svenskt kortnamn. | Khaled Daham |  |
| 1.0_RC3 |  | 2016-08-24 | Ändrat filnamn på exempelfiler samt TKB. / Lagt till länk till bitbucket för ärendethantering. / Lagt till ett tomt AB | Khaled Daham |  |
| 1.0_RC4 |  | 2016-10-28 | Beslut om att använda Continuas WSDL istället för RIVTA-kuvertering. / Interaktionen byter även namn ifrån ProcessDeviceObservation till DeviceObservationConsumer | Khaled Daham |  |
| 1.0_RC4 |  | 2016-11-14 | Uppdaterad nomenklatur kring arkitekturen för att återspegla Continuas (2016) uppdaterade guidelines / Uppdaterat referenstabellen / Ärenden som åtgärdats / https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues/4/missvisande-beskrivning-av-dom-nen-i-rc3 / Lagt till exempel med logisk adressering i wsa:To | Khaled Daham |  |
| 1.0_RC4 |  | 2017-03-10 | Uppdaterat semantik för adressering, https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues/6/semantik-saknas-f-r-logisk-adress-i-wsdl | Khaled Daham |  |
| 1.0_RC4 |  | 2017-03-24 | Lagt till en paragraf för vilka kodverk som är tillåtna, https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues/3/st-d-f-r-m-tv-rden-fr-n-medicinteknisk | Khaled Daham |  |
| 1.0_RC4 |  | 2017-05-03 | Korrigerat fel i test-svit | Khaled Daham |  |
| 1.0.1 |  | 2017-10-13 | Uppdaterat exempel i TKB så att de stämmer överens med test-svit samt exempel i ./docs/examples/ / Tagit bort stycket 4.4.3 som gav tillåtelse till att använda SNOMED-kodade mätvärden. Issue https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues/10/tkb-anger-felaktigt-att-att-andra / Uppdaterat version och datum. | Khaled Daham |  |
| 1.0.1 |  | 2017-10-20 | Tagit bort itintegration_registry_2.0.xsd ur repositoryt. / Stängt issue https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues/9/felaktigt-exempel-i-avsnitt-6125 | Khaled Daham |  |

#### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | AB_IHE_PCD_DEC.docx | Obligatoriskt | Bilaga |
| R2 | Flera dokument | Continua implementations-guidelines 2016, rörande överföring av observationer mellan infrastrukturen för datafångst i hemmet och verksamhetens telemedicin-applikation. | Guidelines som ges ut av Continua Alliance beställts kostnadsfritt för nedladdning via denna länk: http://www.pchalliance.org/continua/continua-design-guidelines |
| R3 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R4 | Lista över vanligt förekommande kodverk och identifierare |  | https://bitbucket.org/rivta-domains/best-practice/wiki/ListOfCommonlyUsedCodeSystems.md |
| R5 | IHE Patient Care Devices, Technical Framework, Volume1, Profiles | Beskrivning av användarfall och tillämpningar för PCD | http://www.ihe.net/uploadedFiles/Documents/PCD/IHE_PCD_TF_Vol1.pdf |
| R6 | IHE Patient Care Devices, Technical Framework, Volume2, Transactions | Beskrivning av meddelandetransaktioner | http://www.ihe.net/uploadedFiles/Documents/PCD/IHE_PCD_TF_Vol2.pdf |
| R7 | IHE Patient Care Devices, Technical Framework, Volume3, Semantic Content | Beskrivning av meddelandetransaktionernas semantiska innehåll | http://www.ihe.net/uploadedFiles/Documents/PCD/IHE_PCD_TF_Vol3.pdf |
| R8 | IHE Patient Care Devices, Technical Framework, Supplement 2007-2008, Subscribe to Patient Data SPD – Trial Implementation | Beskrivning av användarfall, tillämpning för beställning/initiering av mätserie från PCD | http://ihe.net/Technical_Framework/upload/IHE_PCD_Suppl_SPD_Rev1-2_TI_Reissued-2011-11-11.pdf |
| R9 | HL7 messaging, version 2.6 | HL7 standarden, version 2.6 | http://www.hl7.org / Standarden är nerladdningsbar via HL7:s hemsida men kräver att ett konto skapas. |
| R10 | HL7 messaging, version 2.7 | HL7 standarden, version 2.7 | http://www.hl7.org / Standarden är nerladdningsbar via HL7:s hemsida men kräver att ett konto skapas. / IHE PCD profilen baserar sig på HL7 version 2.6 men profilen refererar även till nytt segment, PRT, som finns definierad först i efterföljande version, version 2.7 |
| R11 | HAPI TestPanel | Verktyg för verifiering/utveckling av HL7 ER7, skrivet i Java (OpenSource) och går att köra på de flesta operativsystem. / Användes vid verifiering av exempelfilerna. | http://hl7api.sourceforge.net/hapi-testpanel/install.html |
| R12 | HL7Soup | Verktyg för verifiering/utveckling av HL7 ER7, endast för Windows. | http://www.hl7soup.com/Developer.html |
| R13 | Hantering av kontrol-koder i xml | Finns på webben | https://www.w3.org/International/questions/qa-controls - support |
| R14 | Tecken som inte får användas i xml | Finns på webben | http://www.w3.org/TR/xml/ - syntax |
| R15 | Ärendehantering | Finns på webben | https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues?status=new&status=open |

#### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| Tjänstekonsument (K) | Informationssystem där aktörens agerande leder till automatiskt informationsutbyte med andra system (t.ex. e-tjänst eller journalsystem). En Tjänstekonsument använder en SOA-tjänst som i sin tur följer ett tjänstekontrakt. | Se referens [R3] |
| Tjänsteproducent (P) | Hanterar logik och format så som specificeras av ett tjänstekontrakt. | Se referens [R3] |

#### Kompletterande dokument i källan

| Dokument | Fil |
|---|---|
| Arkitekturella beslut – IHE PCD DEC (referens R1) | [AB_IHE_PCD_DEC.docx](AB_IHE_PCD_DEC.docx) |
| Exempel: SOAP-begäran | [soap_example_request.xml](soap_example_request.xml) |
| Exempel: SOAP-svar | [soap_example_response.xml](soap_example_response.xml) |
| Exempel: ER7-meddelande, blodtryck | [example_observation_upload_blood_pressure.er7](example_observation_upload_blood_pressure.er7) |
| Exempel: ER7-meddelande, vikt | [example_observation_upload_weight.er7](example_observation_upload_weight.er7) |
| Exempel: ER7-meddelande, vikt (2) | [example_observation_upload_weight_2.er7](example_observation_upload_weight_2.er7) |
| Exempel: ER7-kvittens | [example_response.er7](example_response.er7) |

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

vård- och omsorg kärnprocess: hantera hälsorelaterade tillstånd: mätdata från mätutrustning

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

Mätdata från mätutrustning

Mätdata från mätutrustning

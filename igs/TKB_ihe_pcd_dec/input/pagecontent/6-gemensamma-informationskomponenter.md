# 6 Gemensamma informationskomponenter

Källa: *Tjänstekontraktsbeskrivning IHE PCD DEC – Mätdata från mätutrustning*, version 1.0.1 (2017-10-18), [TKB_IHE_PCD_DEC.docx](TKB_IHE_PCD_DEC.docx).

*SAKNAS I KÄLLDOKUMENT*: TKB:n har inget kapitel om gemensamma informationskomponenter. Meddelandets innehåll är ett HL7 v2.6-meddelande som beskrivs i [avsnitt 7](7-tjanstekontrakt.html). Kodverken för observationerna (IEEE 11073) beskrivs i [avsnitt 4](4-tjanstedomanens-krav-och-regler.html).

### 6.1 Typer i schemat (XSD)

Ur [DeviceObservationConsumer.xsd](DeviceObservationConsumer.xsd).

#### UnsolicitedObservationResult

`xs:simpleType`, restriktion av `xs:string` utan ytterligare begränsningar. Bär HL7 v2.6-meddelandet ORU^R01 (IHE PCD-01).

#### GeneralAcknowledgement

`xs:simpleType`, restriktion av `xs:string` utan ytterligare begränsningar. Bär HL7 v2.6-kvittensen.

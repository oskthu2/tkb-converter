## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut mot V-TIM version 2.0.

### V-MIM Läkarintyg 7263

![img_002.jpeg](images/img_002.jpeg)

| Klass.attribut | Mappning mot V-TIM 2.0 |
| :--- | :--- |
| Aktivitet | Aktivitet |
| Aktivitet.läkarintygsaktivitet | Aktivitet.aktivitetskod |
| Aktivitet.beskrivning | Aktivitet.aktivitetsbeskrivning |
| Arbetsförmåga | Bedömt tillstånd |
| Arbetsförmåga.motivering | Ingår i Bedömt tillstånd.specifikation bedömt tillstånd |
| Arbetsförmåga.prognosangivelse | Ingår i Bedömt tillstånd.specifikation bedömt tillstånd |
| Arbetsförmåga nedsättning | Bedömt tillstånd |
| Arbetsförmåga nedsättning. nedsättningsgrad | Ingår i Bedömt tillstånd.specifikation bedömt tillstånd, motsvarar allvarlighetsgrad |
| Arbetsförmåga nedsättning. varaktighet | Bedömt tillstånd.bedömt tillstånd tid |
| Arbetsuppgift | Saknar motsvarighet i V-TIM 2.2 |
| Arbetsuppgift.typ av arbetsuppgift | Saknar motsvarighet i V-TIM 2.2 |
| Bedömt tillstånd | Bedömt tillstånd |
| Bedömt tillstånd.beskrivning | Bedömt tillstånd.beskrivning |
| Enhet | Enhet |
| Enhet.enhets-id | Enhet.enhets-id |
| Enhet.enhetsnamn | Enhet.enhetsnamn |
| Enhet.postadress | Saknar motsvarighet i V-TIM 2.2 / Adressuppgifter.postadress i HSA |
| Enhet.postnummer | Saknar motsvarighet i V-TIM 2.2 / Adressuppgifter.postnr i HSA |
| Enhet.postort | Saknar motsvarighet i V-TIM 2.2 / Attributet motsvarar X i HSA |
| Enhet.telefonnummer | Saknar motsvarighet i V-TIM 2.2 / Telefonnummer.direktnummer eller Telefonnummer.växeltelefon i HSA |
| Funktionstillstånd | Bedömt tillstånd |
| Funktionstillstånd.beskrivning | Bedömt tillstånd.beskrivning |
| Funktionstillstånd.typ av funktionstillstånd | Ingår i Bedömt tillstånd.specifikation av det bedömda tillståndet |
| HoS-Personal | Personal i V-TIM 2.0. / Person i HSA |
| HoS-Personal.personal-id | Personal.personal-id i V-TIM 2.0. / Person.HSA-id i HSA |
| HoS-Personal. fullständigt namn | Personal.fullständigt namn i V-TIM 2.0. / Person.fullständigt namn i HSA. |
| Läkarutlåtande | Framställan |
| Läkarutlåtande.läkarutlåtande-id | Framställan.framställarens analysobjekts-id |
| Läkarutlåtande.typ av utlåtande | Framställan.framställan typ |
| Läkarutlåtande.kommentar | Framställan.kommentar i V-TIM 2.2 |
| Läkarutlåtande.signeringsdatum | Saknar motsvarighet i V-TIM 2.2 |
| Medicinskt tillstånd | Bedömt tillstånd |
| Medicinskt tilstånd.beskrivning | Bedömt tillstånd.beskrivning |
| Medicinskt tillstånd.tillståndskod | Ingår i Bedömt tillstånd.specifikation av det bedömda tillståndet, motsvarar tillståndskod |
| Patient | Patient |
| Patient.person-id | Patient.person-id |
| Patient.förnamn | Patient.förnamn |
| Patient.mellannamn | Patient.mellannamn |
| Patient.efternamn | Patient.efternamn |
| Referens | Saknar motsvarighet i V-TIM 2.0 |
| Referens.referenstyp | Saknar motsvarighet i V-TIM 2.0 |
| Referens.datum | Saknar motsvarighet i V-TIM 2.0 |
| Sysselsättning | Observation/Uppfattat tillstånd |
| Sysselsättning.typ av sysselsättning | Attributet motsvarar ANTINGEN Observation/Uppfattat tillstånd.observerat/uppfattat objekt ELLER ingår i Observation/Uppfattat tillstånd.observation/uppfattat tillstånd specifikation |
| Vårdgivare | Enhet |
| Vårdgivare.vårdgivare-id | Enhet.enhets-id |
| Vårdgivare.vårdgivarnamn | Enhet.enhetsnamn |
| Vårdkontakt | Saknar motsvarighet i V-TIM 2.0 |
| Vårdkontakt.vårdkontakttyp | Saknar motsvarighet i V-TIM 2.0 |
| Vårdkontakt.vårdkontaktstid | Saknar motsvarighet i V-TIM 2.0 |

### V-MIM Funktionen för elektronisk ärendekommunikation

![img_003.png](images/img_003.png)
En del av klasserna i modellen har bedömts ligga utanför V-TIMs tillämpningsområde och har därför inte mappats mot V-TIM. Det gäller klasserna Avsändare, Meddelande, Mottagare samt Organisation.

| Klass.attribut | Mappning mot V-TIM 2.0 |
| :--- | :--- |
| Avsändare | Mappas inte mot V-TIM |
| Enhet | Enhet |
| Enhet.enhets-id | Enhet.enhets-id |
| Enhet.enhetsnamn | Enhet.enhetsnamn |
| Enhet.postadress | Saknar motsvarighet i V-TIM 2.0 / Adressuppgifter.postadress i HSA |
| Enhet.postnummer | Saknar motsvarighet i V-TIM 2.0 / Adressuppgifter.postnr i HSA |
| Enhet.postort | Saknar motsvarighet i V-TIM 2.0 / Attributet motsvarar X i HSA |
| Enhet.telefonnummer | Saknar motsvarighet i V-TIM 2.0 / Telefonnummer.direktnummer eller Telefonnummer.växeltelefon i HSA |
| Enhet.e-post | Saknar motsvarighet i V-TIM 2.0 / Internetuppgifter.e-postadress i HSA |
| Enhet.arbetsplatskod | Saknar motsvarighet i V-TIM 2.0 / Organisationsuppgifter.arbetsplatskod i HSA |
| HoS-Personal | Personal i V-TIM 2.0. / Person i HSA |
| HoS-Personal.förskrivarkod | Saknar motsvarighet i V-TIM 2.0 / Förskrivarkod.förskrivarkod i HSA |
| HoS-Personal.personal-id | Personal.personal-id i V-TIM 2.0. / Person.HSA-id i HSA |
| HoS-Personal. fullständigt namn | Personal.fullständigt namn i V-TIM 2.0. / Person.fullständigt namn i HSA. |
| Läkarutlåtande | Framställan |
| Läkarutlåtande.läkarutlåtande-id | Framställan.framställarens analysobjekts-id |
| Läkarutlåtande.typ av utlåtande | Framställan.framställan typ |
| Läkarutlåtande.signeringsdatum | Saknar motsvarighet i V-TIM 2.2 |
| Meddelande | Mappas inte mot V-TIM |
| Meddelande.meddelande-rubrik | Mappas inte mot V-TIM |
| Meddelande.vård-referens-id | Mappas inte mot V-TIM |
| Meddelande.FK-referens-id | Mappas inte mot V-TIM |
| Meddelande.ämne | Mappas inte mot V-TIM |
| Meddelande.fält | Mappas inte mot V-TIM |
| Meddelande.meddelandetext | Mappas inte mot V-TIM |
| Meddelande.kompletteringstext | Mappas inte mot V-TIM |
| Meddelande.avsänt tidpunkt | Mappas inte mot V-TIM |
| Meddelande.signeringstidpunkt | Mappas inte mot V-TIM |
| Meddelande.sista datum för svar | Mappas inte mot V-TIM |
| Mottagare | Mappas inte mot V-TIM |
| Organisation | Mappas inte mot V-TIM |
| Organisation.kontaktuppgifter | Mappas inte mot V-TIM |
| Patient | Patient |
| Patient.person-id | Patient.person-id |
| Patient.fullständigt namn | Patient.förnamn, Patient.mellannamn, Patient.efternamn |
| Vårdgivare | Enhet |
| Vårdgivare.vårdgivare-id | Enhet.enhets-id |
| Vårdgivare.vårdgivarnamn | Enhet.enhetsnamn |

### Format regler

#### Personidentitet
Personidentitet anges på formatet ÅÅÅÅMMDD-XXXX. Samma format gäller för olika typer av personidentiteter(reservnummer mm), dvs 8 siffror, bindestreck samt 4 siffror.

#### Datum
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”. Exempel: 2010-11-26

#### Datum och Tid
Tid och datum anges alltid på formatet ”ÅÅÅÅ-MM-DDThh:mm:ss”. Exempel: 2010-11-26T09:12:33

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).


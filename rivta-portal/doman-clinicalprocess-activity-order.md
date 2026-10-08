# clinicalprocess:activity:order - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **clinicalprocess:activity:order**

## clinicalprocess:activity:order

Domänens syfte är att tillmötesgå det behov som finns hos vårdprofessionen att samla in och få direktåtkomst till patientens hälsodata från annat system, exempelvis vid monitorering i hemmet eller från annan vårdgivares/vårdenhets system.Tjänstekontrakten i denna domän beskriver beställningar av aktiviteter, som till exempel att definiera meddelandetransaktioner för att, från exempelvis ett journalsystem, beställa och påbörja en ny mätsession, förändra eller avsluta en befintlig. Transaktionen i domänen är tänkt att kombineras med transaktioner, definierade i tjänstedomänen clinicalprocess:healthcond:basic, för att föra över av insamlingen, tillbaka till journalsystemet. Telia äger domänen.

* Svenskt namn: Typ
  * vård- och omsorg kärnprocess:hantera aktiviteter:beställning av aktivitet: Extern tjänstedomän
* Svenskt namn: Förvaltare
  * vård- och omsorg kärnprocess:hantera aktiviteter:beställning av aktivitet: Telia
* Svenskt namn: FHIR IG
  * vård- och omsorg kärnprocess:hantera aktiviteter:beställning av aktivitet: Ingen FHIR IG ännu
* Svenskt namn: Källkod
  * vård- och omsorg kärnprocess:hantera aktiviteter:beställning av aktivitet: [Bitbucket](https://bitbucket.org/rivta-domains/riv-telia.clinicalprocess.activity.order/src)
* Svenskt namn: Ärenden
  * vård- och omsorg kärnprocess:hantera aktiviteter:beställning av aktivitet: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv-telia.clinicalprocess.activity.order/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| ProcessActivityOrder | 1.1 | rivtabp21 | `urn:riv:clinicalprocess:activity:order:ProcessActivityOrder:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0 | IS, TKB, AB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//clinicalprocess_activity_order/1.0/AL-T Granskning av clinicalprocess_activity_order_1.0.docx) | [zip](http://rivta.se/downloads//clinicalprocess_activity_order/1.0/ServiceContracts_clinicalprocess_activity_order_1.0.zip)·[källkod](https://bitbucket.org/rivta-domains/riv-telia.clinicalprocess.activity.order/src/clinicalprocess_activity_order_1.0) |
| trunk | TKB, AB, IS |  | [källkod](https://bitbucket.org/rivta-domains/riv-telia.clinicalprocess.activity.order/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)


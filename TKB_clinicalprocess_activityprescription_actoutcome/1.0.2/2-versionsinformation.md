# 2 Versionsinformation - clinicalprocess: activityprescription: actoutcome 1.0 v1.0.2

* [**Table of Contents**](toc.md)
* **2 Versionsinformation**

## 2 Versionsinformation

## Versionsinformation

**TKB 1.0 har inget eget kapitel om versionsinformation. Versionshistoriken finns i dokumentets inledande avsnitt Revisionshistorik (kapitel 1 i källdokumentet), som återges här.**

Denna version av tjänstedomänen innehåller tjänstekontraktet GetVaccinationHistory i version 1.0 (XSD `GetVaccinationHistoryResponder_1.0.xsd`, WSDL `GetVaccinationHistoryInteraction_1.0_RIVTABP21.wsdl`).

### Revisionshistorik

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| PA1 | 2013-05-01 | Arbetsdokument, baserat på motsvarande för Hälsorelaterat tillstånd, utfall av aktivitet. | Marcus Claus |   |
| PA2 | 2013-05-21 | Ändringar baserat på diskussioner och möten 20-21 maj med JE, FS, MC, VL, JG m.fl. | Marcus Claus |   |
| PA3 | 2013-05-22 | Slutgiltiga ändringar från möte 21maj för första versionen för anslutning Svevac, konformitet med TC, samt aggregerad tjänst. Introduktion av CodedValueType, notering om att kontraktet i legacy system där HSAid-data ej finns stringent, ändå stödjer invånar/patienttjänster. Rättat formateringsfel. Hänvisar i TK till gemensamma komponenter för bättre läsbarhet. | Marcus Claus |   |
| PA4 | 2013-05-23 | Lokal DC kan anges i EI-anrop. Städat bland gemensamma komponenter för domänen | Marcus Claus |   |
| PA5 | 2013-05-27 | Ändrat ’deleted’ till ’nullified’ enligt diskussion med JE, FS om HL7s begrepp för makulerade poster. Tydliggjort att gemensamma typer som är enkla skall anges som ’simple type’ i schemana | Marcus Claus |   |
| PA6 | 2013-05-28 | Kvalitetssäkring inför granskning av CeHis. Justeringar i olika textavsnitt, samt kommentar om att engelsk text behöver översättas. | Johan Eltes |   |
| PA7 | 2013-05-28 | Engelska texterna översatta till svenska. Justerat stavfel och fel rubriknivå i avsnittet Informationssäkerhet. Lagt till DIM/V-MIM modell. | Marcus Claus |   |
| PA8 | 2013-06-27 | Ändring av beskrivningen för inparametern TimePeriod och DocumentTime i PatientSummaryHeader samt AuthorTime i AuthorType | Göran Oettinger |   |
| PA9 | 2013-09-03 | Förtydligat innebörden av author. | Björn Genfors |   |
| PA10 | 2013-09-06 | Tog bort fältet patientPostalCode. / Ändrade merparten av obligatoriska fält till frivilliga för att stödja att vaccinationsinformation kan komma från annan källa t.ex. utlandet / Beskrivning av documentTitle borttagen | Göran Oettinger |   |
| PA11 | 2013-09-12 | Återinförde patientPostalCode men nu med ny beskrivning | Göran Oettinger |   |
| PA12 | 2013-09-19 | Infört de nya domän-överskridande gemensamma datatyperna enl TK-utv.gruppens beslut 19/9-13. / Mappat mot rapportkraven och xml-schemats variabler för nationella vaccinationsregistret (SMI; NVR) och adderat några fält. Ändringarna är markerade med gult i avsnitt 6.1. | Marcus Claus |   |
| PA13 | 2013-09-23 | Bytte vaccActorType till VaccActorType | Göran Oettinger |   |
| PA14 | 2013-09-24 | Normerat gemensamma typer (tagit bort VaccActorType till förmån för ActorType, och redigerat ActorType enligt beslutade gemensamma komponenter). / Följdändrade hänvisningar i vaccinationskontraktet. | Björn Genfors |   |
| PA15 | 2013-09-23 | Redaktionell ändring, en hänvisning till AuthorType ändrades till hänvisning till HealthcareProfessionalType | Björn Genfors |   |
| PA16 | 2013-09-30 | - Fällt ut strukturen för header. / - Justerat positionen på de fält som adderades i PA12 (de ligger i body) / - Ändrat namngivining och justerat beskrivning för dessa fält. | Björn Genfors |   |
| PA17 | 2013-10-03 | Justerat anvädning av versal/camelcase i fält med ”healthcare” i namnet. / Ändrat ”nullified” till 1..1 i GetVaccinationHistory. | Johan Eltes |   |
| PA18 | 2013-10-17 | Lagt till Sourcesystem i Engagemangsindex / Justerat beskrivningen av adress i OrtUnitType. / Korrigerat beskrivningen av documentId i PatientSummaryHeader. | Björn Genfors |   |
| PA19 | 2013-10-21 | Förtydligat kravet på filtrering av svar enligt logicalAddress (lagt till avsnitt 5.4). / Markerat i flödesmodeller att anslutningskatalog inte är del av dagens arkitektur. / Bytt namn på fältet vaccinationUniqueReference från tidigare vaccineUniqueReference / Förtydligat användningen av IIType för fältet vaccinationUniqueReference | Johan Eltes |   |
| PA20 | 2013-11-04 | Ersatt termen PDL-enhet med vårdenhet (i löpande text) / Uppdaterat avsnittet om informationssäkerhet efter CeHis-granskning | Johan Eltes |   |
| PA21 | 2013-11-20 | Förtydligat beskrivningen för fält som är enhets-id för organisationer respektive personal-id för vård- och omsorgspersonal så att NPÖ:s riv-spec v2.2.0 skrivelse i avsnitt 4.1.6 (för Enhet) respektive 4.1.39 (för Personal) följs: Enhets-id respektive personal-id har värdemängd HSAid men även beslutsregeln ”I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr+lokalt id anges.” | Marcus Claus |   |
| A | 2013-11-25 | Revision A inför release | Johan Eltes |   |
| 1.0.1 | 2015-12-07 | Uppdaterat svarstider från 15s till 30s | Khaled Daham |   |
| 1.0.2 | 2022-02-16 | Uppdaterat version | Tobias Blomberg |   |


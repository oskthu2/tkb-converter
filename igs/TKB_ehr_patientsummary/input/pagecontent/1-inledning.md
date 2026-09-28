# 1 Inledning

Källa: *Tjänstekontraktsbeskrivning Patientöversikt*, utgåva PA1 (2012-11-16), [Tjanstekontrakt_EHR_Patientoversikt_Beskrivning.doc](Tjanstekontrakt_EHR_Patientoversikt_Beskrivning.doc).

### Dokumentinformation

Patientöversikt

Tjänstekontraktsbeskrivning

Utgåva PA1

2012-11-16

Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av | Definitiv revision fastställd av |
|---|---|---|---|---|
| PA1 | 2012-11-16 | Första utkast för remiss | Hjalmar Jacobson |  |

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen ehr:patientsummary (huvuddomän ”Electronic Health Record”, underdomän ”Patientsummary”). Den svenska benämningen är ”Patientöversikt”.

Tjänstedomänen omfattning är delning av detaljerad patientinformation på formatet EN13606 mot en patientöversikt. Den kravställande processen är patientöversiktens behov av att kunna hämta detaljerad patientinformation.

Detta tjänstekontrakt är en RIVTA2.1-anpassning av den redan existerande EN13606-tjänsten RIV13606REQUEST_EHR_EXTRACT och SendEhrExtract. Vid anpassningen har så få förändringar som möjligt gjorts, allt för att minska arbetsbördan för de tjänsteproducenter som går över till någon av RIVTA2.1-anpassade tjänsterna istället.

I dagsläget är endast NPÖ kravställande av den detaljerade patientinformationen och dessa krav finns beskrivna i avsnitt 2.2.

Denna tjänstekontraktsbeskrivning beskrivs i den mån det går som ett generellt tjänstekontrakt för patientöversikter, men en del kommer vara specifikt för NPÖ.

Framtida versioner av denna beskrivning anpassas till NPÖs frågetjänst och kommer då innehålla tjänsten

- GetEhrExtractContinuation (ett sätt att hämta delsvar från NPÖs frågetjänst)

> **Figur saknas.** Dokumentet har här en figur som är ett Word-ritobjekt. Den kan inte extraheras ur .doc-filen och innehåller ingen text som går att återskapa. Se originaldokumentet. <!-- SAKNAS I KÄLLDOKUMENT (ej extraherbar) -->

I arbetet har följande personer deltagit:

Hjalmar Jacobson, Lead Architect, Tieto

Johan Eltes, Cehis Arkitekturledning, Tekniska Expertgruppen

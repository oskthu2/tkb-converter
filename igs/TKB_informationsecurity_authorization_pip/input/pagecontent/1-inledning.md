# 1 Inledning

Källa: *Tjänstekontraktsbeskrivning informationsecurity: authorization: pip*, version 1.0_RC1 (2017-06-28), [TKB_informationsecurity_authorization_pip.docx](TKB_informationsecurity_authorization_pip.docx).

### Dokumentinformation

| Dokument | Tjänstekontraktsbeskrivning informationsecurity: authorization: pip |
| :--- | :--- |
| Svenskt namn | Behörighetsinformation (informationssäkerhet.behörighet.behörighetsinformation) |
| Version | 1.0_RC1 |
| Datum | 2017-06-28 |

#### Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0_RC1 |  | 2016-06-21 | Lagt till tjänstekontrakten GetSeal och ListAppsForSharing (ärende https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.patientportal/issues/285). Uppdaterat beskrivningen av stjänstedomänen (ärende https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.patientportal/issues/284). Logisk adress ändrad enligt ärende https://bitbucket.org/rivta-domains/riv.infrastructure.eservicesupply.patientportal/issues/286. | Johan Eltes |  |
| 1.0_RC1 |  | 2016-10-21 | Lagt till dokumentegenskaper. | Malin Ljunggren |  |
| 1.0_RC1 |  | 2016-10-25 | Uppdaterat fältregler för GetSeal / Lagt till övriga regler för svarselement / Lagt till schematronregler / Lagt till testsvit | Khaled Daham |  |
| 1.0_RC1 |  | 2016-10-26 | Uppdaterat MIM / Rättat regexp för patientId för alla kontrakt (tagit bort ^och $ som ej går att använda i xml-regexp) | Khaled Daham |  |
| 1.0_RC1 |  | 2016-10-27 | Bytt domän ifrån infrastructure.eservicesupply.patientportal till informationsecurity.authorization.pip / Uppdaterat mall / Tagit bort unitId ur schema och fältregler / Förtydligat formatregler | Khaled Daham |  |
| 1.0_RC1 |  | 2016-10-28 | Stängt ärenden https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/2/pluralform-f-r-getseal-saknas / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/5/rubrik-5-i-tkb-beh-ver-fixas / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/7/ka-tydligheten-f-r-full-seal | Khaled Daham |  |
| 1.0_RC1 |  | 2016-11-01 | Stängt ärenden / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/1/beskrivning-av-dom-nen-beskriver-ett-av / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/3/inledning-saknas-till-fl-desbeskrivningen / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/4/avsnittet-om-adressering-beh-ver | Khaled Daham |  |
| 1.0_RC1 |  | 2016-11-01 | Korrigerat text i fälten: timeCreated, orgUnitSeal, orgUnitId, careProviderSeal, careProviderId. / Lagt till arbetsflöde. / Uppdaterat beskrivningar för Övriga regler (R1-R3). | Malin Ljunggren |  |
| 1.0_RC1 |  | 2016-11-04 | Stängt ärenden https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/6/missvisande-semantik-i-tskilliga-f / https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues/8/konsument-regel-beh-ver-tillf-ras / Förtydligat beskrivning till sekevensdiagrammet i flöde 1 | Khaled Daham |  |
| 1.0_RC1 |  | 2016-11-10 | Ändrat kardinalitet på validFrom till 0..1 / Förtydligat att alla förseglingar returneras / Ändrat full försegling ifrån en boolean till en egen klass / Uppdaterat MIM | Khaled Daham |  |
| 1.0_RC1 |  | 2017-02-21 | Tagit bort skrivningar om vårdnadshavare. / Ändra förkortning på övriga regler till ÖR (istället för R). / Lagt till referens (R4). Informationssäkerhet refererar till infospec. | Malin Ljunggren |  |
| 1.0_RC1 |  | 2017-03-09 | Lagt till det treställiga svenska domännamnet. | Malin Ljunggren |  |
| 1.0_RC1 |  | 2017-04-11 | Förtydligat att beslut om försegling görs av invånaren. / Ändrat till invånare (istället för individ eller enskild). | Malin Ljunggren |  |
| 1.0_RC1 |  | 2017-06-28 | Uppdaterat patient-id (endast personnummer). Uppdaterat arbetsflöde och sekvensdiagram. / Lagt till hänvisning till infospec i fälten som berör de olika tidsperioderna. Uppdaterat beskrivning för fältet fullSeal. | Malin Ljunggren |  |

#### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | AB_informationsecurity_authorization_pip.docx | Obligatoriskt | Bilaga |
| R2 | RIVTA flera dokument | Finns på webben | http://rivta.se/ |
| R3 | ISO8601-standarden för tidsformat | Finns på webben | http://en.wikipedia.org/wiki/ISO_8601 |
| R4 | Informationsspecifikation behörighetsinformation journalförsegling | Finns på webben | https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/src/21063fd3757149448ec41bd433e3e6af622076e6/docs/IS_informationsecurity_authorization_pip.docx?at=master&fileviewer=file-view-default |

#### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| pip | Policy information point | Den systemkomponent som är källan till attribut och metadata som en Policy Decision Point behöver för att beslut om behörighet skall kunna tas. |

#### Kompletterande dokument i källan

| Dokument | Fil |
|---|---|
| Arkitekturella beslut (referens R1) | [AB_informationsecurity_authorization_pip.docx](AB_informationsecurity_authorization_pip.docx) |
| Informationsspecifikation behörighetsinformation journalförsegling (referens R4) | [IS_informationsecurity_authorization_pip.docx](IS_informationsecurity_authorization_pip.docx) |

Informationsspecifikationen genereras ur en Visual Paradigm-modell (`docs/work_material/informationsecurity_authorization_pip.vpp`) med mallen i samma katalog. Modellen, mallen och SoapUI-testsviten publiceras inte här; testsvitens schematronregler för GetSeals finns under källfilerna i avsnitt 7.1.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

informationsecurity: authorization: pip

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstedomänen syftar till att definiera tjänstekontrakt som tillhandahåller beslutsunderlag för åtkomstkontroll. Producenter av dessa tjänstekontrakt har rollen som s.k. "policy information point". Informationen som kan nås via tjänstekontrakten stödjer olika åtkomstkontroll för professionen så väl som invånaren.

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

informationssäkerhet.behörighet.behörighetsinformation

Behörighetsinformation

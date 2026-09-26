## Tjänstekontrakt

*SAKNAS I KÄLLDOKUMENT.* Det finns inga kontraktsbeskrivningar. Beskrivningarna nedan är hämtade ur WSDL och XSD. Alla kontrakt har SOAP-huvudena LogicalAddress och ArgosHeader och returnerar fel som `ApplicationException` eller `SystemException` (se [avsnitt 4](4-tjanstedomanens-krav-och-regler.html)). ArgosHeaderType har följande fält, alla string och 0..1: forskrivarkod, legitimationskod, fornamn, efternamn, yrkesgrupp, befattningskod, arbetsplatskod, arbetsplatsnamn, postort, postadress, postnummer, telefonnummer, requestId, rollnamn, hsaID, katalog, organisationsnummer, systemnamn, systemversion, systemIp. Enligt WSDL-filerna anger dokumentationen vilka ArgosHeader-fält som är obligatoriska för respektive tjänsteinteraktion; den dokumentationen finns inte i källan.

### AterkallaSamtyckeVardsystem

#### Version

1.0

| Egenskap | Värde |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:lf:AterkallaSamtyckeVardsystemResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:lf:AterkallaSamtyckeVardsystem:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:lf:AterkallaSamtyckeVardsystemResponder:1:AterkallaSamtyckeVardsystem` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| klientinformation | KlientinformationRequest | Information om anropande system. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| samtyckesgivare | string | Giltigt personnummer för patient vars samtycke ska återkallas. | 1..1 |
| samtyckestagareForskrivarkod | string | Förskrivarkod för förskrivare som vars samtycke ska återkallas, valideras mot FORS. Skall vara samma som användare i klientinformation. | 1..1 |
| **Svar** | | | |
| aterkallandedatum | dateTime | Datum då tillsvidaresamtycke återkallades. Ej angiven om samtycke saknades. | 0..1 |
| samtycke | int | Anger status efter återkallande. Möjliga värden är: 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats | 1..1 |

#### FHIR-artefakter

* [AterkallaSamtyckeVardsystemRequest](StructureDefinition-aterkallasamtyckevardsystem-request.html): logisk modell för begäran, inklusive SOAP-huvudena
* [AterkallaSamtyckeVardsystem](StructureDefinition-aterkallasamtyckevardsystem.html): logisk modell för svaret

#### Källfiler

| Fil | Beskrivning |
| :--- | :--- |
| [AterkallaSamtyckeVardsystemInteraction_1.0_rivtabp21.wsdl](AterkallaSamtyckeVardsystemInteraction_1.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [AterkallaSamtyckeVardsystemResponder_1.0.xsd](AterkallaSamtyckeVardsystemResponder_1.0.xsd) | Tjänsteschema |

### KontrolleraSamtyckeVardsystem

#### Version

1.0

| Egenskap | Värde |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:lf:KontrolleraSamtyckeVardsystemResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:lf:KontrolleraSamtyckeVardsystem:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:lf:KontrolleraSamtyckeVardsystemResponder:1:KontrolleraSamtyckeVardsystem` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| klientinformation | KlientinformationRequest | Information om anropande system. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| samtyckesgivare | string | Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas. | 1..1 |
| samtyckestagareForskrivarkod | string | Förskrivarkod för förskrivare vars samtycke ska kontrolleras. Ska vara identisk med användare i klientinformation. Valideras mot FORS. | 1..1 |
| **Svar** | | | |
| avliden | boolean | Markering om patient är avliden enligt FOLK. Sant om patient är markerad som avliden, annars falskt. | 1..1 |
| samtycke | int | Anger om aktuell förskrivare har samtycke av patient. Möjliga värden är: 0 = Samtycke att läsa Läkemedelsförteckningen saknas 1= Samtycke att läsa Läkemedelsförteckningen finns 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats | 1..1 |
| samtyckesgivare | string | Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas. | 1..1 |
| statusdatum | dateTime | Datum då patient givit eller återkallat samtycke till förskrivare. Blank om uppgift om samtycke saknas. | 0..1 |

#### FHIR-artefakter

* [KontrolleraSamtyckeVardsystemRequest](StructureDefinition-kontrollerasamtyckevardsystem-request.html): logisk modell för begäran, inklusive SOAP-huvudena
* [KontrolleraSamtyckeVardsystem](StructureDefinition-kontrollerasamtyckevardsystem.html): logisk modell för svaret

#### Källfiler

| Fil | Beskrivning |
| :--- | :--- |
| [KontrolleraSamtyckeVardsystemInteraction_1.0_rivtabp21.wsdl](KontrolleraSamtyckeVardsystemInteraction_1.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [KontrolleraSamtyckeVardsystemResponder_1.0.xsd](KontrolleraSamtyckeVardsystemResponder_1.0.xsd) | Tjänsteschema |

### LasLFVardsystem

#### Version

4.1

| Egenskap | Värde |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:lf:LasLFVardsystem:4:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4:LasLFVardsystem` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| anvandarnamn | string | Användarnamn, används i kombination med HSA användar-id (klientinformation.anvandare) för att identifiera användare. Obligatoriskt om förskrivarkod saknas. | 0..1 |
| arbetsplatsId | string | HSA-id för arbetsplats. | 0..1 |
| arbetsplatskod | string | Förskrivarens arbetsplatskod, valideras mot ARKO. Obligatorisk om arbetsplatsnamn och arbetsplatsort inte anges. | 0..1 |
| arbetsplatsnamn | string | Namnet på användarens arbetsplats. Används istället för arbetsplatskod. Obligatorisk om arbetsplatskod inte anges. | 0..1 |
| arbetsplatsort | string | Orten för användarens arbetsplats. Används istället för arbetsplatskod. Obligatorisk om arbetsplatskod inte anges. | 0..1 |
| atkomsttyp | string | Treställig kod för typ av åtkomst. Tillåtna värden: ENG - Engångssamtycke SAM - Tillsvidaresamtycke NOD - Nödåtkomst | 1..1 |
| forskrivarkod | string | Förskrivarens förskrivarkod, valideras mot FORS. Förskrivarkod skall även anges som användare i klientinformation. | 0..1 |
| klientinformation | KlientinformationRequest | Information om anropande system. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | Systemnamn för anropande system. GLN-kod krävs för anrop från MVK och LTj. | 1..1 |
| personnummer | string | Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas. | 1..1 |
| **Svar** | | | |
| lakemedelsforteckning | ReceptexpeditionsradResponse | Patientens läkemedelsförteckning. Om patienten saknar poster i läkemedelsförteckningen så returneras en tom lista. | 0..* |
| ../aktorsExpeditionsId | string | Aktörens expeditionsId | 1..1 |
| ../antalForpackningar | int | Antal förpackningar av utlämnad vara. Obligatorisk parameter om posten ej är en dosdispenserad artikel | 0..1 |
| ../antalPillerKlartext | string | Summa antal avdelade doser inklusive enhet. Angiven om posten är en dosdispenserad artikel. | 0..1 |
| ../artikelinformation | ArtikelinformationResponse | Information om expedierad artikel. | 1..1 |
| ../../antalEnhet | string | Antalets enhet. Exempelvis 'styck' eller 'milliliter'. | 0..1 |
| ../../antalIForpackning | double | Antal i förpackning. Numerisk angivelse, exempelvis '0,72'. | 0..1 |
| ../../antalYtterstaForpackning | int | Antal multipel 2. Antal yttersta förpackningar för artikeln, exempelvis '6'. | 0..1 |
| ../../antalYttreForpackning | int | Antal multipel 1. Antal yttre förpackningar som varan har, exempelvis '5'. | 0..1 |
| ../../atckod | string | ATC-kod vid inläsningstillfället. | 0..1 |
| ../../atckodKlartext | string | Verksamt ämne vid inläsningstillfället. | 0..1 |
| ../../forpackningsstorlek | string | Förpackningsstorlek vid inläsningstillfället, exempelvis '6x5x0,72 milliliter'. Ej angivet för dosdispenserade artiklar. | 0..1 |
| ../../forpackningstyp | string | Beskrivning av artikelns förpackningstyp vid inläsningstillfället. | 0..1 |
| ../../intressent | string | Ansvarig intressent för artikeln. Värde kan hämtas från olika fält i VARA beroende på artikel. Exempelvis parallellimportör. | 0..1 |
| ../../lakemedelsform | string | Läkemedelsform vid inläsningstillfället. | 0..1 |
| ../../lakemedelsformKod | string | Kod för läkemedelsform (beredningsformkod). | 0..1 |
| ../../nplPackid | string | Identitet på förskrivet läkemedel som har NPL Pack-id alternativt SB Pack-id. | 1..1 |
| ../../produktnamn | string | Läkemedelsnamn vid inläsningstillfället. | 0..1 |
| ../../styrka | double | Numerisk styrka, exempelvis '20.0'. | 0..1 |
| ../../styrkaEnhet | string | Styrkans enhet, exempelvis 'mg'. | 0..1 |
| ../../styrkaKlartext | string | Styrka i klartext vid inläsningstillfället. | 0..1 |
| ../borttagen | boolean | Markering om posten är borttagen. Sant om posten är borttagen, annars falskt. | 1..1 |
| ../borttagsdatum | dateTime | Datum då posten blev markerad som borttagen. Endast angiven om borttagen är sant. | 0..1 |
| ../borttagsorsak | string | Kommentar för borttagen post. Endast angiven om borttagen är sant. | 0..1 |
| ../borttagstyp | string | Typ av borttag som gäller för posten. Endast angiven om borttagen är sant. Möjliga värden är: Synlig, Begränsad synlighet | 0..1 |
| ../borttagstypHeltal | int | Typ av borttag som gäller för posten. Endast angiven om borttagen är sant. Möjliga värden är: 0 - Synlig, 1 - Begränsad synlighet | 0..1 |
| ../doseringstext | string | Doseringsanvisning. | 1..1 |
| ../expeditionsId | string | ExpeditionsId | 0..1 |
| ../expeditionsdatum | dateTime | Datum för expedition på apotek. | 1..1 |
| ../forskrivararbetsplatsnamn | string | Förskrivarens arbetsplatsnamn | 0..1 |
| ../forskrivararbetsplatsort | string | Förskrivarens arbetsplatsort | 0..1 |
| ../forskrivarnamn | string | Förskrivarens namn | 0..1 |
| ../forskrivarpostadress | string | Förskrivarens postadress | 0..1 |
| ../forskrivarpostnummer | string | Förskrivarens postnummer | 0..1 |
| ../forskrivarspecialiteter | string | Förskrivarens specialitet i klartext | 0..* |
| ../forskrivaryrke | string | Förskrivarens yrke i klartext | 0..1 |
| ../mangd | string | Mängd | 1..1 |
| ../radid | long | Unikt id för posten i läkemedelsförteckningen. | 1..1 |
| ../radnummer | int | Radnummer för expedierad vara i aktuell expedition. Obligatorisk som indata dock ej som utdata. | 0..1 |
| patient | PatientResponse | Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som Avliden så returneras ej läkemedelsförteckning. | 1..1 |
| ../avliden | boolean | Anger om patienten är markerad som avliden i FOLK. Sant om personen är markerad som avliden, annars falskt. | 1..1 |
| ../efternamn | string | Patientens efternamn som registrerat i FOLK. | 0..1 |
| ../fornamn | string | Patientens förnamn som registrerat i FOLK. | 0..1 |
| ../personnummer | string | Patientens personnummer. | 0..1 |
| varningsnivaUppnadd | boolean | Flagga som anger om förskrivarens antal läsningar det senaste dygnet överskridit varningsnivå. Sant om varningsnivå har uppnåtts, annars falskt. | 1..1 |
| avPatientSparradePosterArBorttagna | boolean | Markering som anger om poster plockats bort ur resultatet pga att patienten spärrat dessa, dvs det finns poster som är spärrade och därför inte är med i resultatet. (Refererat element ur LasLFVardsystemResponder_4.1_ext.xsd, namnrymd urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4.1.) | 1..1 |

#### FHIR-artefakter

* [LasLFVardsystemRequest](StructureDefinition-laslfvardsystem-request.html): logisk modell för begäran, inklusive SOAP-huvudena
* [LasLFVardsystem](StructureDefinition-laslfvardsystem.html): logisk modell för svaret

#### Källfiler

| Fil | Beskrivning |
| :--- | :--- |
| [LasLFVardsystemInteraction_4.1_rivtabp21.wsdl](LasLFVardsystemInteraction_4.1_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [LasLFVardsystemResponder_4.1.xsd](LasLFVardsystemResponder_4.1.xsd) | Tjänsteschema |
| [LasLFVardsystemResponder_4.1_ext.xsd](LasLFVardsystemResponder_4.1_ext.xsd) | Tjänsteschema |

### RegistreraSamtyckeVardsystem

#### Version

1.0

| Egenskap | Värde |
| :--- | :--- |
| Namnrymd (tjänsteschema) | `urn:riv:se.apotekensservice:lf:RegistreraSamtyckeVardsystemResponder:1` |
| Namnrymd (WSDL) | `urn:riv:se.apotekensservice:lf:RegistreraSamtyckeVardsystem:1:rivtabp21` |
| SOAP-action | `urn:riv:se.apotekensservice:lf:RegistreraSamtyckeVardsystemResponder:1:RegistreraSamtyckeVardsystem` |
| Interaktionstyp | Fråga-Svar. |

#### Fältregler

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| klientinformation | KlientinformationRequest | Information om anropande system. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| samtyckesgivare | string | Giltigt personnummer för patient vars samtycke ska registreras. Valideras mot FOLK. | 1..1 |
| samtyckestagareForskrivarkod | string | Förskrivarkod för förskrivare som skall få samtycke. Förskrivarens personnummer hämtas från FORS och sparas i LF Samtyckesregister. Förskrivarkoden sparas EJ. | 1..1 |
| **Svar** | | | |
| *(tomt)* | | Svaret innehåller inga element utöver utökningspunkter. | |

#### FHIR-artefakter

* [RegistreraSamtyckeVardsystemRequest](StructureDefinition-registrerasamtyckevardsystem-request.html): logisk modell för begäran, inklusive SOAP-huvudena

#### Källfiler

| Fil | Beskrivning |
| :--- | :--- |
| [RegistreraSamtyckeVardsystemInteraction_1.0_rivtabp21.wsdl](RegistreraSamtyckeVardsystemInteraction_1.0_rivtabp21.wsdl) | WSDL för tjänsteinteraktionen |
| [RegistreraSamtyckeVardsystemResponder_1.0.xsd](RegistreraSamtyckeVardsystemResponder_1.0.xsd) | Tjänsteschema |

### Gemensamma källfiler

| Fil | Beskrivning |
| :--- | :--- |
| [ArgosHeader_1.0.xsd](ArgosHeader_1.0.xsd) | SOAP-huvud |
| [doc.xsd](doc.xsd) | Domänschema |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | SOAP-huvud |
| [se.apotekensservice_lf_1.0.xsd](se.apotekensservice_lf_1.0.xsd) | Domänschema |
| [se.apotekensservice_lf_4.0.xsd](se.apotekensservice_lf_4.0.xsd) | Domänschema |
| [se.apotekensservice_lf_5.0.xsd](se.apotekensservice_lf_5.0.xsd) | Domänschema |
| [se.apotekensservice_lf_6.0.xsd](se.apotekensservice_lf_6.0.xsd) | Domänschema |
| [AB_se_apotekenservice_lf.docx](AB_se_apotekenservice_lf.docx) | Arkitekturella beslut |

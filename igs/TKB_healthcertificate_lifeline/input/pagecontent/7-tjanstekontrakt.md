# 7 Tjänstekontrakt

Källa: *Tjänstekontraktsbeskrivning Elektronisk Födelseanmälan*, utgåva PA1 (2012-04-13), [Tjanstekontrakt_Healthcertificate_Lifeline_Beskrivning.doc](Tjanstekontrakt_Healthcertificate_Lifeline_Beskrivning.doc).

Tjänstekontraktsbeskrivningen beskriver tjänsten i avsnitt 3. I denna IG ligger den under avsnitt 7.1.

### BirthRegistration

*TKB avsnitt 3.*

Tjänstekontraktet för eFa består av en WSDL-fil samt en eller flera XML Scheman (XSD-filer)

- En WSDL-fil beskriver en webbtjänst; dess funktioner och hur dessa ska anropas.
- Ett XML Schema beskriver strukturen på informationen och vilken typ av information som är tillåtet i ett meddelande. Det är med andra ord en teknik för att definiera tillåtna element och attribut för ett XML-meddelande

I tjänsteinteraktionen BirthRegistration ingår XML Schemat BirtRegistrationResponder_1.0.xsd som beskriver informationen i en födelseanmälan och ett anmälanssvar.

Beskrivningen av schemat bygger på information som tillhandahållits av eFa-förvaltning i form av dokumentet eFa_Födelseanmälan_tjänstebeskrivning_v0.4.pdf.

#### 7.1.1 Frivillighet

Obligatoriskt

#### 7.1.2 Version

1.0

#### 7.1.3 SLA-krav

Inledande beskrivning

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet |  |  |

#### 7.1.4 Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| /BirthRegistration |  |  |  |
| FodelseanmalanId | string | Unikt id | 1..1 |
| /BirthRegistration/Dokumentuppgifter |  |  |  |
| Ingivarnamn | string | Namnet på sjukhus, klinik eller motsvarande samt namnet på barnmorska eller motsvarande. Max 100 tecken. | 1..1 |
| AnmalningsTyp | string | Får endast ha värde: <br> "NYANMALD" <br> "RATTAD" <br> "MAKULERAD " | 1..1 |
| AnmalningsId | string | Riksunikt id som sätts av vården själva. Vården bestämmer formatet. Max 80 tecken, | 1..1 |
| Ingivartelefon | string | Telefonnummer till den barnmorska/klinik som är ingivare av anmälan. Max 15 tecken | 0..1 |
| /BirthRegistration/Arendeuppgifter/Moder/ |  |  | 1..1 |
| /BirthRegistration/Arendeuppgifter/Moder/Namn |  |  | 0..1 |
| Fornamn | string | Förnamn på modern enligt patientuppgift t.ex namn från patientbricka. Skatteverket har inga krav på uppgift om fullständigt namn. Max 100 tecken | 0..1 |
| Mellannamn | string | Mellannamn på modern. Max 100 tecken | 0..1 |
| Efternamn | string | Efternamn på modern. Max 100 tecken | 0..1 |
| /BirthRegistration/Arendeuppgifter/Moder/Fodelsedatum |  | Uppgift om födelsedatum ska lämnas i de fall modern saknar fullständigt personnummer | 0..1 |
| FodelseAr | string | Födelseår för modern. Saknar vården uppgift sätts värdet till 0000. Sekel inkluderat. 4 tecken. | 0..1 |
| FodelseManad | string | Födelsemåndad för modern. Saknar vården uppgift sätts värdet till 00. 2 Tecken. | 0..1 |
| FodelseDag | string | Födelsedag för modern. Saknar vården uppgift sätts värdet till 00. 2 Tecken. | 0..1 |
| /BirthRegistration/Arendeuppgifter/Moder |  | I de fall fullständigt personnummer finns på modern ska inte uppgift om födelsedatum lämnas. |  |
| PersonNummer | long | Moderns fullständiga personnummer. Sekel inkluderat. 12 tecken. ÅÅÅÅMMDDXXXX | 0..1 |
| /BirthRegistration/Arendeuppgifter/ModersMake/ |  |  | 0..1 |
| /BirthRegistration/Arendeuppgifter/ModersMake/Namn |  |  | 0..1 |
| Fornamn | string | Förnamn på moderns make. Skatteverket har inga krav på uppgift om fullständigt namn. Max 100 tecken. | 0..1 |
| Mellannamn | string | Mellannamn på moderns make. Max 100 tecken. | 0..1 |
| Efternamn | string | Efternamn på moderns make. Max 100 tecken. | 0..1 |
| /BirthRegistration/Arendeuppgifter/ModersMake/Fodelsedatum |  | Uppgift om födelsedatum ska lämnas i de fall moderns make saknar fullständigt personnummer | 0..1 |
| FodelseAr | string | Födelseår för moderns make. Saknar vården uppgift sätts värdet till 0000. Sekel inkluderat. 4 tecken. | 0..1 |
| FodelseManad | string | Födelseår för moderns make. Saknar vården uppgift sätts värdet till 00. 2 Tecken. | 0..1 |
| FodelseDag | string | Födelseår för moderns make. Saknar vården uppgift sätts värdet till 00. 2 Tecken. | 0..1 |
| /BirthRegistration/Arendeuppgifter/ModersMake |  | I de fall fullständigt personnummer finns på moderns make ska inte uppgift om födelsedatum lämnas. |  |
| PersonNummer | long | Sekel inkluderat. 12 tecken. <br> ÅÅÅÅMMDDXXXX | 0..1 |
| /BirthRegistration/Arendeuppgifter/Barn |  |  | 1..1 |
| DatumFodelse | datum | Barnets födelsedatum. Får ej vara senare än dagens datum. Sekel inluderat. 10 tecken. <br> ÅÅÅÅ-MM-DD | 1..1 |
| Kon | string | Barnets kön. Då uppgift saknas lämnas elementet tomt. <br> Max 6 tecken. Får endast ha värde <br> "FLICKA" <br> "POJKE" | 0..1 |
| OrdningsNr | int | Födelseordningsnummer för barnet i förhållande till övriga syskon som fötts vid samma förlossningstillfä lle. <br> Det har ingen betydelse om barnen (syskonen) var levande eller döda vid förlossningen. OrdningsNr ska beskriva i vilken ordning det aktuella barnet föddes fram. <br> Ex 1: Om modern fött trillingar och detta är det andra barnet av de tre anges värdet "2" som OrdningsNr för det aktuella barnet. <br> Ex 2: Om födelsen avser en singel födelse anges värdet "1" som OrdningsNr. *(Figur saknas: bilden i originalets tabellcell kan inte extraheras ur .doc-filen.)* <br> 1 tecken. Värdet ska finnas i intervallet 1-9. | 1..1 |
| AntalBarn | int | Totalt antal födda barn av samma moder vid förlossningen. Det har ingen betydelse om barnen var levande eller döda vid förlossningen. Samtliga barn ska ingå. <br> Ex 1: Om modern fött trillingar anges värdet "3" för elementet AntalBarn. <br> Ex 2: Om det är en singel födelse anges värdet "1". <br> OBS: förhållandet mellan de värden som levereras i elementen OrdningsNr och AntalBarn måste vara rimligt. Det kan t ex aldrig förekomma OrdningsNr "3" tillsammans med AntalBarn "2". <br> OrdningsNr kan bara vara mindre eller lika med AntalBarn. <br> 1 tecken. Värdet ska finnas i intervallet 1-9. | 1..1 |
| FodelseKommun | string | Namnet på den kommun där barnet förlöstes I klartext. <br> T.ex kommun där födelsekliniken är belägen eller den kommun där taxin befann sig då förlossningen skedde i en taxi. <br> Max 30 tecken | 1..1 |
| Levande | string | Då barnet var levande vid födelsen anges värdet "JA" annars anges värdet "NEJ". <br> Endast ett värde får anges: <br> Får endast ha värde <br> "JA" <br> "NEJ" | 1..1 |
| /BirthRegistration/Arendeuppgifter/Vistelseadress |  | Om uppgift om Vistelseadress lämnas är AdressRad1 obligatorisk | 0..1 |
| AdressRad1 | string | Första raden i adressen. Max 35 tecken. <br> Vården använder den vistelseadress i Sverige man fått från modern. Uppgiften används för att kunna nå en moder som inte är permanent bosatt i Sverige. <br> Skatteverket har inga krav på hur uppdelningen av adressen görs så länge antal tecken inom varje element understiger 35 tecken. | 1..1 |
| AdressRad2 | string | Andra raden i adressen. Max 35 tecken | 0..1 |
| AdressRad3 | string | Tredje raden i adressen. Max 35 tecken | 0..1 |
| AdressRad4 | string | Fjärde raden i adressen. Max 35 tecken | 0..1 |
| AdressRad5 | string | Femte raden i adressen. Max 35 tecken | 0..1 |
| /BirthRegistration/Arendeuppgifter/Bostadsadress |  |  | 0..1 |
| AdressRad1 | string | Första raden i adressen. Max 35 tecken. <br> Vården använder den bostadsadress i utlandet man fått från modern. Uppgiften används för att kunna nå en moder som inte är permanent bosatt i Sverige. <br> Skatteverket har inga krav på hur uppdelningen av adressen görs så länge antal tecken inom varje element understiger 35 tecken. | 1..1 |
| AdressRad2 | string | Andra raden i adressen. Max 35 tecken | 0..1 |
| AdressRad3 | string | Tredje raden i adressen. Max 35 tecken | 0..1 |
| AdressRad4 | string | Fjärde raden i adressen. Max 35 tecken | 0..1 |
| AdressRad5 | string | Femte raden i adressen. Max 35 tecken | 0..1 |
|  |  |  | 0..1 |
| /BirthRegistration/Arendeuppgifter |  |  |  |
| KontaktTelefon | string | Max 20 tecken. <br> Telefonnummer till moder. <br> Uppgiften används för att kunna nå en moder som inte är permanent bosatt I Sverige. | 0..1 |
| KontaktTelefon2 | string | Max 20 tecken | 0..1 |
| KontaktTelefon3 | string | Max 20 tecken | 0..1 |
| KontaktTelefon4 | string | Max 20 tecken | 0..1 |
| KontaktTelefon5 | string | Max 20 tecken | 0..1 |
| Svar |  |  |  |
| /BirthRegistrationResponse |  |  |  |
| FodelsesvarId | string | Unikt id. Unikt id som sätts av tjänsteproducent | 1..1 |
| AnmalningsId | string | Det anmälnings-id som vården angett som identitet för den aktuella födelseanmälan. Max 80 tecken. | 1..1 |
| PersonNummer | long | Barnets fullständiga personnummer som Skatteverket tilldelat det nyfödda barnet.. <br> Sekel inkluderat. 12 tecken. <br> ÅÅÅÅMMDDXXXX. | 1..1 |
| /BirthRegistrationResponse/Meddelande |  | I de fall ett personnummer inte kunde tilldelas barnet levererar Skatteverket ett orsaksmeddelande istället. | 1..1 |
| AnmalanMottagen | string | "JA" anger att anmälan är mottagen av Skatteverket och "NEJ" att anmälan inte har mottagits. <br> En mottagen anmälan ska INTE sändas in igen. En anmälan som Skatteverket inte kunnat ta emot får sändas om. <br> Får endast ha värde <br> "JA" <br> "NEJ" | 1..1 |
| MeddelandeKod | int | MeddelandeKod indikerar orsaken till att ett personnummer inte returnerats. <br> Förteckning över förekommande koder och beskrivning, se rubrik "Lista över meddelandekoder". <br> Värde inom intervallet givet av tabell med meddlandekoder. | 1..1 |
| MeddelandeText | string | Text som ger ytterligare information utöver MeddelandeKod om felorsak. Endast avsedd att nyttjas vid utveckling/felsökning. | 1..1 |

#### 7.1.5 Regler

De koder och dess beskrivningar som returneras då ett personnummer inte kan tilldelas.

| Kod | Text | Mottagen | Skatteverkets beskrivning |
|---|---|---|---|
| 101 | Anmälan kan ej tas emot. Skicka ny anmälan. | Nej | Anmälan kan ej tas emot, ny anmälan krävs från Vården. |
| 201 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Anmälan avser inte "nyanmälan", tilldelning av personnummer får inte ske. |
| 202 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Anmälan om födelse har redan inkommit för det aktuella barnet. Personnummer får inte tilldelas, SKV kontroll - dubblettanmälan? |
| 203 | Anmälan mottagen. Personnummer kan ej tilldelas. | Ja | Barnet var inte levande vid födelsen, personnummer tilldelas inte dödfödda barn. |
| 204 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Barnets födelsedatum har fel format, senare än dagens datum eller mer än 14 dagar bakåt i tiden, manuell kontroll krävs. |
| 205 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Uppgift om antal barn respektive ordningsnummer för barnet är felaktigt/orealistiskt i något avseende, manuell kontroll krävs. |
| 301 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Modern var inte folkbokförd vid födelsen, manuell kontroll krävs. |
| 302 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Felaktigt kön på modern - Moderns kön enligt personnummer utvisar "Man", manuell kontroll krävs. |
| 303 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Modern har andra pågående ärenden som kan innebära att barnet inte ska folkbokföras, manuell kontroll krävs. |
| 304 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Modern är yngre än 10 år eller äldre än 60 år, manuell kontroll krävs. |
| 305 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Uppgift om barnets kön saknas i anmälan, manuell komplettering krävs. |
| 401 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Anmälan mottagen, automatisk tilldelning av personnummer kunde inte ske pga internt tekniskt fel. |
| 501 | Anmälan kan ej tas emot. Skicka ny anmälan. | Nej | Oväntat tekniskt fel, SKV kan inte lämna uppgift om när felet kan vara åtgärdat. Anmälan måste göras på nytt. |

#### 7.1.6 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [8 Datatyper](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| FodelseanmalanId | ID |  | 1..1 |
| Dokumentuppgifter | DokumentuppgifterTYPE |  | 1..1 |
| ../Ingivarnamn | string100TYPE |  | 1..1 |
| ../AnmalningsTyp | AnmalningsTyp |  | 1..1 |
| ../AnmalningsId | AnmalningsIdTYPE |  | 1..1 |
| ../Ingivartelefon | string15TYPE |  | 0..1 |
| Arendeuppgifter | ArendeuppgifterTYPE |  | 1..1 |
| ../Moder | PersonTYPE |  | 1..1 |
| ../../Namn | NamnTYPE |  | 0..1 |
| ../../../Fornamn | string100TYPE |  | 0..1 |
| ../../../Mellannamn | string100TYPE |  | 0..1 |
| ../../../Efternamn | string100TYPE |  | 0..1 |
| ../../Fodelsedatum | DatumTYPE |  | 0..1 |
| ../../../FodelseAr | string |  | 1..1 |
| ../../../FodelseManad | string |  | 1..1 |
| ../../../FodelseDag | string |  | 1..1 |
| ../../PersonNummer | PersonNummerTYPE |  | 0..1 |
| ../ModersMake | PersonTYPE |  | 0..1 |
| ../../Namn | NamnTYPE |  | 0..1 |
| ../../../Fornamn | string100TYPE |  | 0..1 |
| ../../../Mellannamn | string100TYPE |  | 0..1 |
| ../../../Efternamn | string100TYPE |  | 0..1 |
| ../../Fodelsedatum | DatumTYPE |  | 0..1 |
| ../../../FodelseAr | string |  | 1..1 |
| ../../../FodelseManad | string |  | 1..1 |
| ../../../FodelseDag | string |  | 1..1 |
| ../../PersonNummer | PersonNummerTYPE |  | 0..1 |
| ../Barn | BarnTYPE |  | 1..1 |
| ../../DatumFodelse | date |  | 1..1 |
| ../../Kon | Kon |  | 0..1 |
| ../../OrdningsNr | OrdningsNr |  | 1..1 |
| ../../AntalBarn | AntalBarn |  | 1..1 |
| ../../FodelseKommun | FodelseKommun |  | 1..1 |
| ../../Levande | Levande |  | 1..1 |
| ../Vistelseadress | AdressTYPE |  | 0..1 |
| ../../AdressRad1 | AdressRadTYPE |  | 1..1 |
| ../../AdressRad2 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad3 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad4 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad5 | AdressRadTYPE |  | 0..1 |
| ../Bostadsadress | AdressTYPE |  | 0..1 |
| ../../AdressRad1 | AdressRadTYPE |  | 1..1 |
| ../../AdressRad2 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad3 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad4 | AdressRadTYPE |  | 0..1 |
| ../../AdressRad5 | AdressRadTYPE |  | 0..1 |
| ../KontaktTelefon | string20TYPE |  | 0..1 |
| ../KontaktTelefon2 | string20TYPE |  | 0..1 |
| ../KontaktTelefon3 | string20TYPE |  | 0..1 |
| ../KontaktTelefon4 | string20TYPE |  | 0..1 |
| ../KontaktTelefon5 | string20TYPE |  | 0..1 |
| **Svar** | | | |
| FodelsesvarId | ID |  | 1..1 |
| AnmalningsId | AnmalningsIdTYPE |  | 1..1 |
| PersonNummer | PersonNummerTYPE | Tilldelat personnummer | 0..1 |
| Meddelande | MeddelandeTYPE | Indikerar orsaken till att personnummer ej tilldelats. | 0..1 |
| ../AnmalanMottagen | AnmalanMottagen | Anger om anmälan är mottagen av Skatteverket eller ej. En mottagen anmälan SKALL EJ sändas in igen. | 1..1 |
| ../MeddelandeKod | int | Kod som indikerar orsaken till att personnummer ej returneras. datatyp = number | 1..1 |
| ../MeddelandeText | string | Text som ger ytterligare information om ev. felorsak. Endast avsedd att nyttjas vid utveckling/felsökning | 1..1 |
| result | ResultOfCallType | Holds information about the success of the call. If INFO is set the field infoText should contain more information. If ERROR is set the fields errorId and errorText will contain information about the error. | 0..1 |
| ../resultCode | ResultCodeEnumType |  | 1..1 |
| ../infoText | string |  | 0..1 |
| ../errorId | ErrorIdEnumType |  | 0..1 |
| ../errorText | string |  | 0..1 |

#### 7.1.7 Tjänsteinteraktion enligt WSDL

LogicalAddress is the organization id for Skatteverket.

SOAPAction: `urn:riv:healthcertificate:lifeline:BirthRegistrationResponder:1`

#### 7.1.8 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [BirthRegistrationInteraction_1.0_RIVTABP21.wsdl](BirthRegistrationInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [BirthRegistrationResponder_1.0.xsd](BirthRegistrationResponder_1.0.xsd) | Tjänsteschema |
| [BirthRegistrationTypes_1.0.xsd](BirthRegistrationTypes_1.0.xsd) | Domänschema (typer ur Skatteverkets Fodelse.xsd) |
| [HealthCertificateLifelineCommonTypes_1.0.xsd](HealthCertificateLifelineCommonTypes_1.0.xsd) | Gemensamma typer (resultat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.1.9 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/birthregistration-request](StructureDefinition-birthregistration-request.html)
* **Logisk modell (response):** [StructureDefinition/birthregistration](StructureDefinition-birthregistration.html)
* **Kodsystem:** [CodeSystem/lifeline-anmalanmottagen-cs](CodeSystem-lifeline-anmalanmottagen-cs.html) (Anmälan mottagen)
* **ValueSet:** [ValueSet/lifeline-anmalanmottagen-vs](ValueSet-lifeline-anmalanmottagen-vs.html)
* **Kodsystem:** [CodeSystem/lifeline-anmalningstyp-cs](CodeSystem-lifeline-anmalningstyp-cs.html) (Anmälningstyp)
* **ValueSet:** [ValueSet/lifeline-anmalningstyp-vs](ValueSet-lifeline-anmalningstyp-vs.html)
* **Kodsystem:** [CodeSystem/lifeline-erroridenum-cs](CodeSystem-lifeline-erroridenum-cs.html) (Feltyp)
* **ValueSet:** [ValueSet/lifeline-erroridenum-vs](ValueSet-lifeline-erroridenum-vs.html)
* **Kodsystem:** [CodeSystem/lifeline-kon-cs](CodeSystem-lifeline-kon-cs.html) (Barnets kön)
* **ValueSet:** [ValueSet/lifeline-kon-vs](ValueSet-lifeline-kon-vs.html)
* **Kodsystem:** [CodeSystem/lifeline-levande-cs](CodeSystem-lifeline-levande-cs.html) (Levande vid födelsen)
* **ValueSet:** [ValueSet/lifeline-levande-vs](ValueSet-lifeline-levande-vs.html)
* **Kodsystem:** [CodeSystem/lifeline-resultcodeenum-cs](CodeSystem-lifeline-resultcodeenum-cs.html) (Resultatkod)
* **ValueSet:** [ValueSet/lifeline-resultcodeenum-vs](ValueSet-lifeline-resultcodeenum-vs.html)

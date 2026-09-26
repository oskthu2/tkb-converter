## 7 Tjänstekontrakt

### GetDispensedDrugs

Tjänsten returnerar en patients Läkemedelsförteckning med viss ordinationsinformation för att kunna koppla ihop utlämnat läkemedel med ordinerat.

#### Version

1.0

#### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterliggare regler för detta element och beskrivs mer i detalj i stycket Regler.

##### GetDispensedDrugsType

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| patient | Patient | 1..1 | Patient vars läkemedelsförteckning skall hämtas. |  |
| anropandeVardpersonal | Vardpersonal | 1..1 | Anropande vårdpersonal. |  |
| forskrivarkod | string | 0..1 | Förskrivarens individuella förskrivarkod. Gruppförskrivarkoder får ej användas. Valideras mot FORS. Obligatorisk om atkomsttyp = SAM | 7..7 |
| identifieradArbetsplats | ArbetsplatsIdentifikation | 1..1 | Identifierad arbetsplats. |  |
| atkomsttyp | atkomsttyp | 1..1 | Treställig kod för typ av åtkomst. |  |

##### GetDispensedDrugsResponseType

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| lakemedelsforteckning | Receptexpeditionsrad | 0..* | Patientens läkemedelsförteckning kompletterad med ordinationsmappningsinformation. Om patienten saknar poster i läkemedelsförteckningen så returneras en tom lista. |  |
| patientinformation | Patientinformation | 0..1 | Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som 'Avliden' så returneras inga rader ur läkemedelsförteckningen. |  |
| varningsnivaUppnadd | boolean | 1..1 | Flagga som anger om förskrivarens antal läsningar det senaste dygnet överskridit varningsnivå. Sant om varningsnivå har uppnåtts, annars falskt. |  |
| resultCode | resultCodeEnum | 1..1 | Resultatkod för anropet. |  |
| comment | string | 0..1 | Kommentar till eventuella fel eller varningar. | 1..1024 |

#### Tjänstekontraktsspecifika krav och regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan:

- Visning av mängdinformation kan ske på flera sätt men bör implementeras enligt följande prioritet:
  1. Använd fältet `mangd` för dispenserat och icke-dispenserat läkemedel, alternativt
  2. Använd fältet `antalPillerKlartext` för dispenserat läkemedel. Använd fälten `antalForpackningar` + `forpackningsstorlek` alternativt `antalForpackningar` + `antalYtterstaForpackning` + `antalYttreForpackning` + `antalIForpackning` + `antalEnhet` för icke-dispenserat läkemedel.
- Visning av information om styrka kan ske på flera sätt men bör implementeras enligt följande prioritet:
  1. Använd fältet `styrkaKlartext` som även visar styrka för kombinationspreparat, alternativt
  2. Använd fälten `styrka` + `styrkaEnhet`
- Om en läkemedelspost har en markering att denna är borttagen ("borttagen"=sann) så skall posten visas i vårdsystemet överstruken och med "borttagsdatum" och "borttagsorsak".
- Mappningsinformation för att koppla till ordination saknas i vissa fall, t.ex:
  - Samma läkemedel (nplpackid) förekommer flera gånger i samma expedition
  - Pappers- och telefonrecept
  - Uttag från äldre receptexpeditionssystem (expeditionsid saknas)
- Inga SLA-krav finns för denna tjänst

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetDispensedDrugsInteraction_1.0_RIVTABP21.wsdl](GetDispensedDrugsInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetDispensedDrugsResponder_1.0.xsd](GetDispensedDrugsResponder_1.0.xsd) | Tjänstespecifikt schema |
| [clinicalprocess_activityprescription_logistics_1.0.xsd](clinicalprocess_activityprescription_logistics_1.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Gemensamt schema (logisk adress) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getdispenseddrugs](StructureDefinition-getdispenseddrugs.html)
* **Logisk modell (request):** [StructureDefinition/getdispenseddrugs-request](StructureDefinition-getdispenseddrugs-request.html)
* **Kodsystem:** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.html)
* **ValueSet:** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.html)
* **Kodsystem:** [CodeSystem/atkomsttyp-cs](CodeSystem-atkomsttyp-cs.html)
* **ValueSet:** [ValueSet/atkomsttyp-vs](ValueSet-atkomsttyp-vs.html)

### PrintListOfDispensedDrugs

Tjänsten returnerar en PDF-rapport innehållande en patients Läkemedelsförteckning.

#### Version

1.0

#### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterliggare regler för detta element och beskrivs mer i detalj i stycket Regler.

##### PrintListOfDispensedDrugsType

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| patient | Patient | 1..1 | Patient vars läkemedelsförteckning skall hämtas. |  |
| anropandeVardpersonal | Vardpersonal | 1..1 | Anropande vårdpersonal. |  |
| forskrivarkod | string | 0..1 | Förskrivarens individuella förskrivarkod. Gruppförskrivarkoder får ej användas. Valideras mot FORS. | 7..7 |
| identifieradArbetsplats | ArbetsplatsIdentifikation | 1..1 | Identifierad arbetsplats. |  |

##### PrintListOfDispensedDrugsResponseType

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| patientinformation | Patientinformation | 0..1 | Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som Avliden så returneras ej pdf. |  |
| pdf | base64Binary | 0..1 | Utdrag från läkemedelsförteckningen som PDF. |  |
| resultCode | resultCodeEnum | 1..1 | Resultatkod för anropet. |  |
| comment | string | 0..1 | Kommentar till eventuella fel eller varningar. | 1..1024 |

#### Tjänstekontraktsspecifika krav och regler

Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan:

- Krav ställs på anropande system att tjänsten GetDispensedDrugs har anropats innan anrop görs till denna tjänst.
- Inga SLA-krav finns för denna tjänst

#### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [PrintListOfDispensedDrugsInteraction_1.0_RIVTABP21.wsdl](PrintListOfDispensedDrugsInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [PrintListOfDispensedDrugsResponder_1.0.xsd](PrintListOfDispensedDrugsResponder_1.0.xsd) | Tjänstespecifikt schema |
| [clinicalprocess_activityprescription_logistics_1.0.xsd](clinicalprocess_activityprescription_logistics_1.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | Gemensamt schema (logisk adress) |

#### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/printlistofdispenseddrugs](StructureDefinition-printlistofdispenseddrugs.html)
* **Logisk modell (request):** [StructureDefinition/printlistofdispenseddrugs-request](StructureDefinition-printlistofdispenseddrugs-request.html)
* **Kodsystem:** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.html)
* **ValueSet:** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.html)

### Beskrivning av fält

Datatyper som används av båda tjänstekontrakten. I de logiska FHIR-modellerna är de modellerade som nästlade element (BackboneElement).

#### Receptexpeditionsrad

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| aktorsExpeditionsId | string | 1..1 | Aktörens expeditionsId. | 1..35 |
| antalForpackningar | int | 0..1 | Antal förpackningar av utlämnad vara. Returneras om posten ej är en dosdispenserad artikel. |  |
| antalPillerKlartext | string | 0..1 | Antal avdelade doser inklusive enhet. Returneras om posten är en dosdispenserad artikel. Exempel: "28 st". | 1..10 |
| artikelinformation | Artikelinformation | 1..1 | Information om utlämnad artikel. |  |
| borttagen | boolean | 1..1 | Markering om posten är borttagen. Sant om posten är borttagen, annars falskt. |  |
| borttagsdatum | dateTime | 0..1 | Tidpunkt då posten blev markerad som borttagen. Returneras endast om borttagen är sant. |  |
| borttagsorsak | string | 0..1 | Kommentar för borttagen post. Returneras endast om borttagen är sant. | 1..50 |
| doseringstext | string | 1..1 | Doseringsanvisning: doseringstext inklusive ändamål. | 1..1016 |
| expeditionsId | string | 0..1 | Expeditionsid hämtat från eHälsomyndigheten. | 1..31 |
| expeditionsdatum | dateTime | 1..1 | Datum för utlämning från apotek. |  |
| forskrivarensArbetsplatsnamn | string | 0..1 | Förskrivarens arbetsplats namn. | 1..35 |
| forskrivarensArbetsplatsOrt | string | 0..1 | Förskrivarens arbetsplats ort. | 1..28 |
| forskrivarnamn | string | 0..1 | Förskrivarens namn. | 1..71 |
| forskrivarpostadress | string | 0..1 | Förskrivarens postadress. | 1..35 |
| forskrivarpostnummer | string | 0..1 | Förskrivarens postnummer. | 5..6 |
| forskrivarspecialiteter | string | 0..* | Förskrivarens specialitet i klartext. | 1..256 |
| forskrivaryrke | string | 0..1 | Förskrivarens yrke i klartext. | 1..100 |
| mangd | string | 1..1 | Totalt expedierad mängd. Kan returneras som: antalPillerKlartext eller antalForpackningar + forpackningsstorlek. Exempel: "28 st" eller "2x100 tabletter". | 1..100 |
| ordinationsmappning | Ordinationsmappning | 0..1 | Information som behövs för att mappa en post i läkemedelsförteckningen till en ordination. |  |
| radid | long | 1..1 | Unikt id för posten i läkemedelsförteckningen. |  |
| radnummer | int | 0..1 | Radnummer för utlämnad vara i aktuell expedition. |  |

#### Artikelinformation

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| antalEnhet | string | 0..1 | Enhet för antalForpackning. Exempelvis "styck" eller "milliliter". Exempel där antalEnhet ingår: "6 x 5 x 0.72 milliliter". | 1..80 |
| antalIForpackning | decimal | 0..1 | Antal i förpackning. Numerisk angivelse, exempelvis 0,72. Exempel där antalForpackning ingår: "6 x 5 x 0.72 milliliter". |  |
| antalYtterstaForpackning | int | 0..1 | Antal multipel 2. Antal yttersta förpackningar för artikeln, exempelvis 6. Exempel där antalForpackning ingår: "6 x 5 x 0.72 milliliter". |  |
| antalYttreForpackning | int | 0..1 | Antal multipel 1. Antal yttre förpackningar som varan har, exempelvis 5. Exempel där antalYttreForpackning ingår: "6 x 5 x 0.72 milliliter". |  |
| atckod | string | 0..1 | ATC-kod. Exempel: "C07AB03”. | 1..8 |
| atckodKlartext | string | 0..1 | Verksamt ämne enligt ATC-kod. Exempel: "Atenolol". | 1..240 |
| forpackningsstorlek | string | 0..1 | Förpackningsstorlek. Exempel: "6 x 5 x 0.72 milliliter". | 1..50 |
| forpackningstyp | string | 0..1 | Beskrivning av artikelns förpackningstyp. Exempel: "Blister". | 1..40 |
| intressent | string | 0..1 | Ansvarigt företag för artikeln. Typ av företag kan variera, t.ex kan företaget vara innehavare av godkännande/registrering av försäljning eller parallellimportör. Exempel: "AstraZeneca AB". | 1..160 |
| lakemedelsform | string | 0..1 | Läkemedelsform. Exempel: "Filmdragerad tablett". | 1..160 |
| lakemedelsformKod | string | 0..1 | Kod för läkemedelsform (beredningsformkod). Exempel: "FICOTA". | 1..6 |
| nplPackid | string | 1..1 | Identitet på förskrivet läkemedel som har NPL Pack-id alternativt SB Pack-id. | 14..14 |
| produktnamn | string | 0..1 | Läkemedelsnamn. | 1..100 |
| styrka | decimal | 0..1 | Numerisk styrka. Exempel "20.0". |  |
| styrkaEnhet | string | 0..1 | Styrkans enhet. Exempel: "mg". | 1..60 |
| styrkaKlartext | string | 0..1 | Styrka i klartext. Exempel: "20.0 mg". | 1..80 |

#### Ordinationsmappning

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| ordinationsId | string | 1..1 | Förskrivningens ordinationsid. |  |
| produktradnummer | int | 0..1 | Tillhörande recepts eventuella prdradnummer NEF i receptdepån. Anges enbart om fältet är befintligt i receptdepån. |  |
| radnummer | int | 0..1 | Tillhörande recepts eventuella radnummer NEF i receptdepån. Anges enbart om fältet är befintligt i receptdepån. |  |

#### Patientinformation

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| patientidentifikation | Patientidentifikation | 0..1 | Patientidentifikationen kan enbart innehålla följande typ: Personnummer från kodverk med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret. |  |
| fornamn | string | 0..1 | Patientens förnamn. För patient med skyddad identitet visas inte förnamn. | 1..80 |
| efternamn | string | 0..1 | Patientens efternamn. För patient med skyddad identitet visas inte efternamn. | 1..60 |
| redigeratNamn | string | 1..1 | Redigerat namn i formatet "mellannamn efternamn, förnamn". Förkortat till 36 tecken. | 1..36 |
| harRedigeratNamnForkortats | boolean | 1..1 | Anger om redigeratNamn har förkortats. |  |
| avliden | boolean | 1..1 | Anger om patienten är avliden. Sant om personen är markerad som avliden, annars falskt. |  |

#### ArbetsplatsIdentifikation

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| Skicka in ett av följande element: |  |  |  |  |
| arbetsplatskod | string | 1..1 | Del av val. Förskrivarens arbetsplatskod. Valideras. Obligatorisk om arbetsplats inte anges. | 1..20 |
| arbetsplats | Arbetsplats | 1..1 | Del av val. Förskrivarens arbetsplats. Obligatorisk om arbetsplatskod inte anges. |  |

#### Patient

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| patientidentifikation | Patientidentifikation | 1..1 | Patientidentifikationen kan innehålla följande typer: Personnummer från kodverk med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret. |  |

#### Arbetsplats

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| arbetsplatsnamn | string | 1..1 | Namnet på användarens arbetsplats. | 1..64 |
| arbetsplatsort | string | 1..1 | Orten för användarens arbetsplats. | 1..28 |

#### Patientidentifikation

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| kod | string | 1..1 | Patientens personnummer. | 1..12 |
| kodverk | OID | 1..1 | Identifierng av berört kodverk/klassifikation enligt V-TIM 2.2. |  |

#### Vardpersonal

| Namn | Typ | Mult. | Beskrivning | Fältlängder |
|---|---|---|---|---|
| efternamn | string | 1..1 | Användarnamn. Används i kombination med personHsaId för att identifiera användare. | 1..35 |
| fornamn | string | 1..1 | Användarnamn. Används i kombination med personHsaId för att identifiera användare. | 1..35 |
| personHsaId | string | 1..1 | HSA-id för läsande person. | 1..64 |
| vardenhetHsaId | string | 1..1 | HSA-id för läsande vårdenhet. Används för spårbarhet. | 1..64 |
| vardgivareHsaId | string | 1..1 | HSA-id för läsande vårdgivare. Används för spårbarhet. | 1..64 |

#### decimaltal

| Typ | Validering |
|---|---|
| decimal | 3 |

#### resultCodeEnum

| Typ | Validering |
|---|---|
| string | OK ERROR INFO |

#### atkomsttyp

| Typ | Validering |
|---|---|
| string | ENG SAM NOD |

#### OID

| Typ | Validering |
|---|---|
| string | [0-9][0-9.]* |

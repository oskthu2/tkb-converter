# 7 Tjänstekontrakt

Källa: *Tjänstekontraktsbeskrivning, Listning*, version 2.1 (2025-06-13), [TKB_supportprocess_logistics_carelisting.docx](TKB_supportprocess_logistics_carelisting.docx).

Motsvarar TKB kapitel 6 *Tjänstekontrakt* (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### CreateListing

Tjänstekontraktet CreateListing anropas av tjänstekonsument för att förmedla att invånare önskar lista sig /lista om sig på vald listningsbar mottagning/vårdenhet. Aktören för tjänstekonsumenten är invånaren eller vårdnadshavare som på uppdrag av invånaren önskar utföra omlistningen. Tjänstekontraktet får inte anropas av övriga aktörer.

En tjänsteproducent kan bli anropad på tjänstekontraktet CreateListing för en listningsbar mottagning/vårdenhet där invånaren redan är listad. Avsikt för detta kan vara:

- Invånare är redan listad på mottagningen men vill nu också välja fast läkarkontakt (förutsätter att mottagningen erbjuder val av fast läkarkontakt)
- Invånare är redan listad på mottagningen och har också sedan tidigare valt fast läkarkontakt men vill nu välja annan fast läkarkontakt på samma mottagning
- Invånare står sedan tidigare i kö för listning på mottagningen men har ångrat sig och vill gå ur kön

Observera:

För samtliga av dessa situationer bör inte invånarens antal tillåtna omlistningar per 12-månaders period påverkas.

#### 7.1.1 Frivillighet

Tjänstekontraktet är obligatoriskt för tjänsteproducent.

Tjänstekontraktet är frivilligt för tjänstekonsument att stödja. Om tjänstekonsument stödjer kontraktet måste tjänstekonsument även obligatoriskt stödja följande tjänstekontrakt, för att kunna förmedla komplett information till begäran av CreateListing:

- GetListingTypes
- GetAvailableHealthcareFacilities

#### 7.1.2 Version

Aktuell version är 2.0

#### 7.1.3 Meddelandeinformationsmodell (MIM)

![Meddelandeinformationsmodell (MIM) för CreateListing](img_004.jpeg)

#### 7.1.4 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Den aktör som utför handlingen. Aktören kan exempelvis vara invånaren eller vårdnadshavare som utför åtgärden åt invånaren. Inga andra aktörer tillåts nyttja detta tjänstekontakt. | 1..1 |
| actor.actorId | IIType | Id för den aktören som utför handlingen. | 1..1 |
| actor.actorId.root | string | OID som visar typ av id. / Om aktören representeras av invånare eller vårdnadshavare kan OID vara: / ”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704. / ” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV / Om aktören är en organisation ska ett HSAId förmedlas som pekar ut organisationen. Fältet sätts då till ” 1.2.752.129.2.1.4.1” | 1..1 |
| actor.actorId.extension | string | Id för aktören som kan vara ett personnummer eller samordningsnummer om aktören är invånare eller vårdnadshavare, alternativt ett organisations-HSAId om aktören är en organisation. | 1..1 |
| actor.actorTypeEnum | string | Typ av aktör. Typ av aktör kan vara: / CITIZEN = invånaren / GUARDIAN = vårdnadshavare | 1..1 |
| personId | IIType | Invånares personnummer | 1..1 |
| personId.root | String | OID som visar typ av person-id som förmedlas. Kan vara: / ”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704. / ” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV | 1..1 |
| personId.extension | String | Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck. |  |
| healthcareFacilityHSAId | HSAIdType / (string) | Den valda listningsbara mottagningens HSAId. / En producent bör kunna hantera HSAId:n som uttrycks både med versaler eller gemener. / Exempelvis är: / ”se12345-xyz” = ”SE12345-XYZ” | 1..1 |
| listingType | CVType | Kod för listningstyp. Denna kod har tidigare hämtats från de listningstyper som vald region stödjer, exempelvis via tjänstekontraktet GetListingTypes. | 1..1 |
| listingType.code | string | Kod för listningstypen. Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara PV. Regioner har möjlighet att definiera egna regionala listningstyper. Det är i sådant fall upp till regionen att upprätta och förvalta det regionala kodverket. | 1..1 |
| listingType.codeSystem | string | Sätts till den OID, urn eller liknande som visar på från vilket kodverk den angivna koden innefattas i. / Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara 1.2.752.129.5.1.27. / https://inera.atlassian.net/wiki/download/attachments/2648506471/Kv%20nationella%20listningstyper.xlsx?api=v2 | 1..1 |
| listingType.displayName | string | Fältet kan utelämnas av konsument. Det är producentens (regionens listningssystem) ansvar att tillhandahålla listningstypens namn. En producent kan ignorera detta värde om konsument ändå skickar med ett namn på listningtyp. | 0..1 |
| healthcarePersonnel | HSAIdType | Vald vårdpersonals-/husläkares HSAId. / Det är frivilligt för mottagningen att dessutom erbjuda val av vårdpersonal. Mottagningens valbara vårdpersonal fås genom tjänstekontraktet GetAvailableHealthcarePersonnel. / Observera: / Om invånaren redan är listad på mottagningen sedan tidigare ska detta anrop ses som att invånaren endast vill förändra sitt val av fast läkarkontakt. | 0..1 |
| addToQueue | boolean | Förmedlar om invånare vill ställa sig i kö om den tilltänkta listningsbara mottagningen inte tillåts ta emot mer än ett maximalt antal listade invånare och om mottagningen erbjuder möjlighet att ställa sig i listningskö. Huruvida en mottagning erbjuder listningskö eller inte kan hämtas via tjänstekontraktet GetAvailableHealthcareFacilities. / ”TRUE” = Invånare vill ställa sig i listningskö. / ”FALSE” eller att attributet är utelämnat = Invånare vill inte ställa sig i listningskö eller vill gå ur kön. / Observera: / Om invånaren redan står i kö på denna mottagning och addToQueue = FALSE ska detta tolkas som att invånaren vill gå ur kön. | 0..1 |
| homeCounty | IIType | Invånares folkbokföringsregion. / Kan utelämnas om listningen gäller i hemregionen (folkbokföringsregionen), d v s om / logicalAddress = folkbokföringsregion / och / healthcareFacilityHSAId pekar på en mottagning som har vårdavtal med regionen och är listningsbar där. / Annars är fältet obligatoriskt. | 0..1 |
| homeCounty.root | string | OID för länskod. (kv/län -- 1.2.752.129.2.2.1.18) | 1..1 |
| homeCounty.extension | string | Länskod | 1..1 |
| newListingCounty | IIType | Pålistningsregion, d v s den region där vald mottagning har ett vårdavtal och är listningsbar i. / Kan utelämnas om listningen gäller i hemregionen (folkbokföringsregionen) | 0..1 |
| newListingCounty.root | string | OID för länskod. (kv/län -- 1.2.752.129.2.2.1.18) | 1..1 |
| newListingCounty.extension | string | Länskod | 1..1 |
| Svar |  |  |  |
| resultCode | ResultCodeEnum | Kan vara OK, INFO, ERROR alternativt något av följande specifika koder (se även resultText nedan): / ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED / ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT / ERROR_GUARDIAN_CONSENT_NEEDED / ERROR_AGE_LIMIT | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som kan presenteras för slutanvändare i ett användargränssnitt i de fall resultCode == ERROR. / OBSERVERA: / Producent ska returnera specifika felkoder för följande situationer: / Invånares maximalt antal tillåtna omlistningar under en 12-månaders-period har uppnåtts / Den valda vårdenheten som invånare vill lista sig på har uppnått det maximala antalet tillåtna invånare (*) / Omlistningen tillåts inte då det saknas fullvärdigt samtycke (t ex att båda vårdnadshavare har samtyckt om omlistningen) / Invånares ålder är utanför tillåtet åldersspann för listningstypen / (*) / Detta kan inträffa då anropet görs med addToQueue = FALSE och maxtaket för antal tillåtna listningar/invånare på mottagningen uppnåtts. I det fall addToQueue = TRUE och invånare kan placeras i kö ska resultCode=OK returneras. | 0..1 |

#### 7.1.5 Övriga regler

Inga övriga regler finns definierade.

##### 7.1.5.1 Icke funktionella krav

Anropande tjänstekonsument/tjänst ska säkerställa att aktören (invånaren eller vårdnadshavare till invånare) godkänt nytt val av listning (vårdval). Om bytet sker över regiongränserna (utomlänslistning) ska anropande tjänstekonsument/tjänst inhämta samtycke från invånare om att ett utlämnande av listningsinformation mellan berörda regioner tillåts ske. Likaså ska invånare informeras om att rättigheter avseende vårdgarantin kan påverkas av nya valet då invånare listar sig i annan region än sin folkbokföringsregion.

##### 7.1.5.2 SLA-krav

Se generella SLA krav under rubrik 4.2.2 ovan.

#### 7.1.6 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| actor | ActorType |  | 1..1 |
| ../actorId | IIType |  | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../actorType | ActorTypeEnum |  | 1..1 |
| personId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| healthcareFacilityHSAId | HSAIdType |  | 1..1 |
| listingType | CVType |  | 1..1 |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| healthcarePersonnel | HSAIdType |  | 0..1 |
| addToQueue | boolean |  | 0..1 |
| homeCounty | IIType |  | 0..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| newListingCounty | IIType |  | 0..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| **Svar** | | | |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |

#### 7.1.7 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2:CreateListing`

#### 7.1.8 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CreateListingInteraction_2.0_RIVTABP21.wsdl](CreateListingInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [CreateListingResponder_2.0.xsd](CreateListingResponder_2.0.xsd) | Tjänsteschema |
| [supportprocess_logistics_carelisting_2.0.xsd](supportprocess_logistics_carelisting_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TP_CreateListing_2.1.docx](SjD_TP_CreateListing_2.1.docx) | Självdeklaration för tjänsteproducent |

#### 7.1.9 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/createlisting-request](StructureDefinition-createlisting-request.html)
* **Logisk modell (response):** [StructureDefinition/createlisting](StructureDefinition-createlisting.html)
* **Kodsystem:** [CodeSystem/carelisting-actortype-cs](CodeSystem-carelisting-actortype-cs.html)
* **ValueSet:** [ValueSet/carelisting-actortype-vs](ValueSet-carelisting-actortype-vs.html)
* **Kodsystem:** [CodeSystem/carelisting-resultcode-cs](CodeSystem-carelisting-resultcode-cs.html)
* **ValueSet:** [ValueSet/carelisting-resultcode-vs](ValueSet-carelisting-resultcode-vs.html)

### GetAvailableHealthcareFacilities

Tjänstekontraktet GetAvailableHealthcareFacilities anropas av tjänstekonsument för att hämta lista med listningsbara mottagningar som en region erbjuder. Listan kan i anropet filtreras för att endast hämta mottagningar som stödjer ett urval av listningstyper (för region som exponerar flera olika listningstyper) eller en lista med HSAId:n för de mottagningar som ska returneras.

#### 7.2.1 Frivillighet

Tjänstekontraktet är obligatoriskt för tjänsteproducent. 

Tjänstekonsument måste stödja kontraktet om tjänstekonsument också stödjer kontraktet CreateListing. Tjänstekontraktet är annars frivilligt för tjänstekonsument.

#### 7.2.2 Version

Aktuell version är 2.1.

Tillägg sedan version 2.0 är att svaret också ger hur lång kön är per mottagning samt uppskattad väntetid, om mottagningen har kö. Se attributet queueLength nedan.

#### 7.2.3 Meddelandeinformationsmodell (MIM)

![Meddelandeinformationsmodell (MIM) för GetAvailableHealthcareFacilities](img_011.jpeg)

#### 7.2.4 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthcareFacilities | HSAIdType / (string) | En lista med HSAId:n som tjänstekonsument önskar hämta/filtrera på. / En tjänsteproducent ska kunna hantera HSAId:n som uttrycks både med versaler eller gemener. / Exempelvis är: / ”se12345-xyz” = ”SE12345-XYZ” | 0..* |
| listingTypes | CVType | Lista med listningstyper som tjänstekonsument önskar filtrera listningsbara mottagningar på. Se listningstyper i referens [R3] | 0..* |
| listingTypes.code | string | Kod för listningstypen som ska filtreras på. Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet för code vara PV. / Regioner har möjlighet att definiera egna regionala listningstyper. Det är i sådant fall upp till regionen att upprätta och förvalta det regionala kodverket. / De regionala koderna förväntas hämtas av tjänstekonsument via tjänstekontraktet GetListingTypes (adresserat till aktuell region). | 1..1 |
| listingTypes.codeSystem | string | Sätts till den OID, urn eller liknande som visar på från vilket kodverk den angivna koden innefattas. / Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet för codeSystem vara ”1.2.752.129.5.1.27”. / https://inera.atlassian.net/wiki/download/attachments/2648506471/Kv%20nationella%20listningstyper.xlsx?api=v2 | 1..1 |
| listingTypes.displayName | string | Fältet kan utelämnas av konsument. Det är producentens (regionens listningssystem) ansvar att tillhandahålla listningstypens namn. En producent kan ignorera detta värde om konsument ändå skickar med ett namn på listningtyp för filtreringen. Filtreringen ska ske baserat på kombinationen code + codeSystem. | 0..1 |
| Svar |  |  |  |
| healthcareFacilities | HealthcareFacilityType | Lista med de listningsbara mottagningarna, baserat på filtervärden i begäran. | 0..* |
| healthcareFacilities.id | HSAIdType / (string) | HSAId för mottagningen / En tjänstekonsument bör kunna hantera HSAId:n som uttrycks både med versaler och gemener. / Exempelvis är: / ”se12345-xyz” = ”SE12345-XYZ” | 1..1 |
| healthcareFacilities.name | string | Namn på vårdenheten | 1..1 |
| healthcareFacilities.hasQueue | boolean | Visar huruvida mottagningen erbjuder kö när mottagningens maximala kvot av listade invånare har nåtts. / Skall endast sättas till TRUE om mottagningens maximala kvot uppnåtts och mottagningen erbjuder kö till listning, således: / TRUE = Maximala antalet invånare som mottagningen får lista är uppnått samt listningskö erbjuds / FALSE = För övrigt | 1..1 |
| healthcareFacilities.supportedListingTypes | CVType | Lista med olika listningstyper som mottagningen erbjuder. / Om attributet är utelämnat innebär det att mottagningen endast erbjuder listning av typen öppenvårdsmottagning/primärvård. Se listningstyper i Informationsspecifikationen R3. | 0..1 |
| healthcareFacilities.supportedListingTypes.code | string | Kod för listningstypen som mottagningen stödjer. | 1..1 |
| healthcareFacilities.supportedListingTypes.codeSystem | string | OID, urn eller liknande som visar på från vilket kodverk den angivna koden/listningstypen innefattas. / Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet för codeSystem vara ”1.2.752.129.5.1.27”. | 1..1 |
| healthcareFacilities.supportedListingTypes.displayName | string | Benämning av listningstypen. Benämningen ska vara uttryckt på ett invånarvänligt sätt för att kunna förmedlas i invånarens användargränssnitt i e-tjänst. | 1..1 |
| healthcareFacilities.supportsHealthcarePersonnel | boolean | Visar huruvida mottagningen erbjuder möjlighet att i samband med listning även välja specifik vårdpersonal, d v s ”fast läkarkontakt". / Det är frivilligt för region att erbjuda denna möjlighet. Om möjligheten erbjuds behöver regionens listningssystem även stödja tjänstekontraktet GetAvailableHealthcarePersonnel som producent. / TRUE = mottagningen erbjuder fast läkarkontakt. / Utelämnas eller sätts till FALSE om mottagningen inte erbjuder fast läkarkontakt. | 1..1 |
| healthcareFacilities.queueLength | integer | Nytt attribut fr o m version 2.1. / Om mottagningens maxtak på antalet listade invånare har uppnåtts kan mottagningen meddela hur lång kön är just nu. | 0..1 |
| healthcareFacilities.estimatedWaitInQueue | integer | Nytt attribut fr o m version 2.1. / Om mottagningens maxtak på antalet listade invånare har uppnåtts kan mottagningen meddela hur lång den uppskattade väntetiden är tills invånare kan få en listningsplats. Uppskattad väntetid anges i antal dagar och sätts frivilligt av listningssystemet endast då mpttagningens maxtak har uppnåtts och att mottagningen erbjuder kö. | 0..1 |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

#### 7.2.5 Övriga regler

Inga övriga regler finns definierade.

##### 7.2.5.1 Icke funktionella krav

Inga icke-funktionella krav är definierade.

##### 7.2.5.2 SLA-krav

Se generella SLA krav under rubrik 4.2.2 ovan.

#### 7.2.6 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| healthcareFacilities | HSAIdType |  | 0..* |
| listingTypes | CVType |  | 0..* |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| **Svar** | | | |
| healthcareFacilities | HealthcareFacilityType | Vårdinrättning/vårdenhet som ansvarar för en person som listat sig hos dem. Det är denna inrättning som får ekonomisk ersättning för personen. | 0..* |
| ../id | HSAIdType |  | 1..1 |
| ../name | string | Namn på vårdenheten. | 1..1 |
| ../hasQueue | boolean |  | 1..1 |
| ../supportedListingTypes | CVType | Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i. | 0..* |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string |  | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| ../supportsHealthcarePersonnel | boolean |  | 1..1 |
| ../queueLength | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| ../estimatedWaitInQueue | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |

#### 7.2.7 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2:GetAvailableHealthcareFacilities`

#### 7.2.8 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetAvailableHealthcareFacilitiesInteraction_2.1_RIVTABP21.wsdl](GetAvailableHealthcareFacilitiesInteraction_2.1_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetAvailableHealthcareFacilitiesResponder_2.1.xsd](GetAvailableHealthcareFacilitiesResponder_2.1.xsd) | Tjänsteschema |
| [supportprocess_logistics_carelisting_2.1.xsd](supportprocess_logistics_carelisting_2.1.xsd) | Domänschema (delat) |
| [supportprocess_logistics_carelisting_2.1_ext.xsd](supportprocess_logistics_carelisting_2.1_ext.xsd) | Domänschema (delat), utökningar i version 2.1 |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TP_GetAvailableHealthcareFacilities_2.1.docx](SjD_TP_GetAvailableHealthcareFacilities_2.1.docx) | Självdeklaration för tjänsteproducent |

#### 7.2.9 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getavailablehealthcarefacilities-request](StructureDefinition-getavailablehealthcarefacilities-request.html)
* **Logisk modell (response):** [StructureDefinition/getavailablehealthcarefacilities](StructureDefinition-getavailablehealthcarefacilities.html)
* **Kodsystem:** [CodeSystem/carelisting-resultcode-cs](CodeSystem-carelisting-resultcode-cs.html)
* **ValueSet:** [ValueSet/carelisting-resultcode-vs](ValueSet-carelisting-resultcode-vs.html)

### GetAvailableHealthcarePersonnel

Tjänstekontraktet GetAvailableHealthcarePersonnel anropas av tjänstekonsument för att hämta lista med valbar vårdpersonal för specifik listningsbar mottagning, motsvarande den lista med ”fast läkarkontakt” som mottagningen/vårdenheten erbjuder.

#### 7.3.1 Frivillighet

Tjänstekontraktet är frivilligt för tjänsteproducent. Tjänstekonsument ska kunna hantera tjänsteproducent som inte exponerar tjänstekontraktet genom att inte erbjuda valet om fast läkarkontakt i sitt användargränssnitt. Om tjänsteproducenten (regionen) exponerar tjänstekontraktet (och den specifika mottagningen också erbjuder val av fast läkarkontakt) måste tjänstekonsumenten erbjuda valet för invånaren.

#### 7.3.2 Version

Aktuell version är 2.0.

#### 7.3.3 Meddelandeinformationsmodell (MIM)

![Meddelandeinformationsmodell (MIM) för GetAvailableHealthcarePersonnel](img_010.jpeg)

#### 7.3.4 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personId | IIType | Invånares personnummer | 1..1 |
| personId.root | string | OID som visar typ av person-id som förmedlas. Kan vara: / ”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704. / ” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV |  |
| personId.extension | string | Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck. |  |
| healthcareFacility | HSAIdType / (string) | HSAId för den listningsbara mottagningen som erbjuder val av vårdpersonal. / En producent bör kunna hantera HSAId:n som uttrycks både med versaler eller gemener. / Exempelvis är: / ”se12345-xyz” = ”SE12345-XYZ” | 1..1 |
| listingTypes | CVType | Lista med listningstyper som konsument önskar filtrera på. Se listningstyper i referens [R3] | 0..* |
| Svar |  |  |  |
| healthcarePersonnel | HealthcarePersonnelType | Lista med vårdpersonal som kan väljas för listningen för den valda mottagningen i begäran. | 0..* |
| healthcarePersonnel.id | HSAIdType / (string) | HsaId för vårdpersonal | 1..1 |
| healthcarePersonnel.name | string | Namn (för- och efternamn) för vårdpersonal | 1..1 |
| healthcarePersonnel.title | string | Vårdpersonals titel | 0..1 |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

#### 7.3.5 Övriga regler

Inga övriga regler finns definierade.

##### 7.3.5.1 Icke funktionella krav

Inga icke-funktionella krav är definierade.

##### 7.3.5.2 SLA-krav

Se generella SLA krav under rubrik 4.2.2 ovan.

#### 7.3.6 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| personId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| healthcareFacilityHSAId | HSAIdType |  | 1..1 |
| listingTypes | CVType |  | 0..* |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| **Svar** | | | |
| healthcarePersonnel | HealthcarePersonnelType |  | 0..* |
| ../id | HSAIdType |  | 1..1 |
| ../name | string |  | 1..1 |
| ../title | string |  | 0..1 |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |

#### 7.3.7 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2:GetAvailableHealthcarePersonnel`

#### 7.3.8 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetAvailableHealthcarePersonnelInteraction_2.0_RIVTABP21.wsdl](GetAvailableHealthcarePersonnelInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetAvailableHealthcarePersonnelResponder_2.0.xsd](GetAvailableHealthcarePersonnelResponder_2.0.xsd) | Tjänsteschema |
| [supportprocess_logistics_carelisting_2.0.xsd](supportprocess_logistics_carelisting_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TP_GetAvailableHealthcarePersonnel_2.1.docx](SjD_TP_GetAvailableHealthcarePersonnel_2.1.docx) | Självdeklaration för tjänsteproducent |

#### 7.3.9 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getavailablehealthcarepersonnel-request](StructureDefinition-getavailablehealthcarepersonnel-request.html)
* **Logisk modell (response):** [StructureDefinition/getavailablehealthcarepersonnel](StructureDefinition-getavailablehealthcarepersonnel.html)
* **Kodsystem:** [CodeSystem/carelisting-resultcode-cs](CodeSystem-carelisting-resultcode-cs.html)
* **ValueSet:** [ValueSet/carelisting-resultcode-vs](ValueSet-carelisting-resultcode-vs.html)

### GetListingCounty

Tjänstekontraktet GetListingCounty anropas av tjänstekonsument för att hämta invånares nuvarande listningsregion(er). En tjänstekonsument ska adressera anropet av tjänstekontraktet till den region där invånaren är folkbokförd. Tjänstekontraktets syfte är att kunna förmedla om invånare eventuellt är utomlänslistad. Det är folkbokföringsregionens ansvar att hålla reda på i vilken annan region en invånare är listad hos, om invånaren är utomlänslistad. Om en region erbjuder mer än en listningstyp kan det inträffa att svaret innehåller mer än en region – se scenario 3 nedan.

Exempel på scenarios som kan inträffa:

| Scenario | Förutsättning | Utfall |
| :--- | :--- | :--- |
| 1 | Tjänstekontraktet adresseras till invånares folkbokföringsregion. / Invånare är listad på en mottagning i folkbokföringsregionen. | I svaret returneras en region - invånarens folkbokföringsregion. |
| 2 | Tjänstekontraktet adresseras till invånares folkbokföringsregion. / Folkbokföringsregionen erbjuder endast en listningstyp – listning till öppenvård/primärvård. / Invånare är listad på mottagning i annan region. | I svaret returneras en region - regionen som invånare är utomlänslistad hos. |
| 3 | Tjänstekontraktet adresseras till invånares folkbokföringsregion. / Invånare är listad på mottagning i annan region. / Folkbokföringsregionen erbjuder dessutom flera andra regionala listningstyper (i detta exempel möjlighet att dessutom lista sig för tandvård). | I svaret returneras två regioner - regionen som invånare är utomlänslistad hos samt folkbokföringsregion. Tjänstekonsumenten förväntas därmed anropa båda regionerna om detaljer om listningarna ska hämtas (GetListing) |
| 4 | Tjänstekontraktet adresseras till annan region än invånares folkbokföringsregion. | I svaret returneras inga regioner. / Det åligger tjänstekonsumenten att ha vetskap om invånares folkbokföringsregion innan anropet. |
| 5 | Tjänstekontraktet adresseras till invånares folkbokföringsregion. / Invånare har inte aktivt valt listning. / Regionen tillämpar inte passiv listning, d v s tilldelar inte invånare en mottagning automatiskt. | I svaret returneras inga regioner. |

#### 7.4.1 Frivillighet

Tjänstekontraktet är obligatoriskt för tjänsteproducent.

Tjänstekontraktet är frivilligt för tjänstekonsument. Om tjänstekonsument inte stödjer tjänstekontraktet kan inte tjänstekonsumenten erbjuda utomlänslistning eller synliggöra alla invånares aktuella listningar.

#### 7.4.2 Version

Aktuell version är 2.0. 

Tjänstekontraktet är nytt fr o m version 2 av tjänstedomänen men har ändå versionerats till 2 för att tydliggöra att tjänstekontraktet är en del av tjänstedomän version 2.

#### 7.4.3 Meddelandeinformationsmodell (MIM)

![Meddelandeinformationsmodell (MIM) för GetListingCounty](img_009.png)

#### 7.4.4 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Den aktör som utför handlingen. Aktören kan exempelvis vara invånaren eller vårdnadshavare som utför åtgärden åt invånaren. | 1..1 |
| actor.actorId | IIType | Id för den aktören som utför handlingen. | 1..1 |
| actor.actorId.root | string | OID som visar typ av id. / Om aktören representeras av invånare eller vårdnadshavare kan OID vara: / ”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704. / ” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV / Om aktören är en organisation ska ett HSAId förmedlas som pekar ut organisationen. Fältet sätts då till ” 1.2.752.129.2.1.4.1” | 1..1 |
| actor.actorId.extension | string | Id för aktören som kan vara ett personnummer eller samordningsnummer om aktören är invånare eller vårdnadshavare, alternativt ett HSAId om aktören är en organisation. | 1..1 |
| actor.actorTypeEnum | string | Typ av aktör. Typ av aktör kan vara: / CITIZEN = invånaren / GUARDIAN = vårdnadshavare / REGION = Region/sjukvårdshuvudman / PRIVATE_CAREGIVER = Privat vårdgivare med vårdavtal / SELF_OWNED_CAREGIVER = Vårdgivare driven i egen regi / HEALTHCARE_ADVISER = Sjukvårdsrådgivning / Baserat på aktör kan region/listningssystem välja om listningen ska synliggöras. | 1..1 |
| personId | IIType | Invånares personnummer | 1..1 |
| personId.root | string | OID som visar typ av person-id som förmedlas. Kan vara: / ”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704. / ” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV | 1..1 |
| personId.extension | string | Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck. | 1..1 |
| Svar |  |  |  |
| listingCounties | IIType | Lista med regioner som invånare har aktiv listning på. Det är folkbokföringsregionens ansvar att hålla reda på i vilken/vilka regioner som invånare har aktiv(a) listningar hos. | 0..* |
| listingCounties.root | string | OID för länskod. (kv/län -- 1.2.752.129.2.2.1.18) | 1..1 |
| listingCounties.extension | string | Länskod | 1..1 |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

#### 7.4.5 Övriga regler

Inga övriga regler finns definierade.

##### 7.4.5.1 Icke funktionella krav

Inga icke-funktionella krav är definierade.

##### 7.4.5.2 SLA-krav

Se generella SLA krav under rubrik 4.2.2 ovan.

#### 7.4.6 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| actor | ActorType |  | 1..1 |
| ../actorId | IIType |  | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../actorType | ActorTypeEnum |  | 1..1 |
| personId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| **Svar** | | | |
| listingCounties | IIType |  | 0..* |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |

#### 7.4.7 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:supportprocess:logistics:carelisting:GetListingCountyResponder:2:GetListingCounty`

#### 7.4.8 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetListingCountyInteraction_2.0_RIVTABP21.wsdl](GetListingCountyInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetListingCountyResponder_2.0.xsd](GetListingCountyResponder_2.0.xsd) | Tjänsteschema |
| [supportprocess_logistics_carelisting_2.0.xsd](supportprocess_logistics_carelisting_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TP_GetListingCounty_2.1.docx](SjD_TP_GetListingCounty_2.1.docx) | Självdeklaration för tjänsteproducent |

#### 7.4.9 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getlistingcounty-request](StructureDefinition-getlistingcounty-request.html)
* **Logisk modell (response):** [StructureDefinition/getlistingcounty](StructureDefinition-getlistingcounty.html)
* **Kodsystem:** [CodeSystem/carelisting-actortype-cs](CodeSystem-carelisting-actortype-cs.html)
* **ValueSet:** [ValueSet/carelisting-actortype-vs](ValueSet-carelisting-actortype-vs.html)
* **Kodsystem:** [CodeSystem/carelisting-resultcode-cs](CodeSystem-carelisting-resultcode-cs.html)
* **ValueSet:** [ValueSet/carelisting-resultcode-vs](ValueSet-carelisting-resultcode-vs.html)

### GetListing

Tjänstekontraktet GetListing anropas av tjänstekonsument för att hämta invånares nuvarande listningsdetaljer. En invånare kan vara listad hos mer än en region samtidigt, i det fall då hemregionen (folkbokföringsregionen) erbjuder mer än en listningstyp (läs mer om listningstyper i Informationsspecifikation R3). I ett sådant fall behöver tjänstekonsumenten anropa respektive region separat via tjänstekontraktet.

En tjänstekonsument kan hämta vilka regioner en invånare har listningar på genom att anropa tjänstekontraktet GetListingCounty som adresseras till invånares folkbokföringsregion.

#### 7.5.1 Frivillighet

Tjänstekontraktet är obligatoriskt för tjänsteproducent och tjänstekonsument.

#### 7.5.2 Version

Aktuell version är 2.1.

Tillägg i version 2.1 kontra version 2.0 är möjligheten att förmedla vilken köplats invånaren har då invånaren står i kö på mottagningen. Likaså att invånaren också kan få en ungefärlig tid det kan ta innan invånaren erbjuds en listning. Se fälten queuePosition och estimatedWaitInQueue.

När tjänstekontraktsanropet adresseras till invånarens folkbokföringsregion kan regionen förmedla antal återstående omlistningar som invånaren har (remainingChanges).

#### 7.5.3 Meddelandeinformationsmodell (MIM)

![Meddelandeinformationsmodell (MIM) för GetListing](img_007.jpeg)

#### 7.5.4 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | ActorType | Den aktör som utför handlingen. Aktören kan exempelvis vara invånaren eller vårdnadshavare som utför åtgärden åt invånaren. | 1..1 |
| actor.actorId | IIType | Id för den aktören som utför handlingen. | 1..1 |
| actor.actorId.root | string | OID som visar typ av id. / Om aktören representeras av invånare eller vårdnadshavare kan OID vara: / ”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704. / ” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV / Om aktören är en organisation ska ett HSAId förmedlas som pekar ut organisationen. Fältet sätts då till ” 1.2.752.129.2.1.4.1” | 1..1 |
| actor.actorId.extension | string | Id för aktören som kan vara ett personnummer eller samordningsnummer om aktören är invånare eller vårdnadshavare, alternativt ett HSAId om aktören är en organisation. | 1..1 |
| actor.actorTypeEnum | string | Typ av aktör. Typ av aktör kan vara: / CITIZEN = invånaren / GUARDIAN = vårdnadshavare / REGION = Region/sjukvårdshuvudman / PRIVATE_CAREGIVER = Privat vårdgivare med vårdavtal / SELF_OWNED_CAREGIVER = Vårdgivare driven i egen regi / HEALTHCARE_ADVISER = Sjukvårdsrådgivning / Baserat på aktör kan region/listningssystem välja om listningen ska synliggöras. | 1..1 |
| personId | IIType | Invånares personnummer | 1..1 |
| personId.root | string | OID som visar typ av person-id som förmedlas. Kan vara: / ”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704. / ” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV | 1..1 |
| personId.extension | string | Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck. | 1..1 |
| Svar |  |  |  |
| listings | ListingHealthcareFacilityType | Lista med listningsdetaljer för mottagningar som invånare är listad på. Om en region erbjuder sina invånare att kunna lista sig på mer än en listningstyp kan denna lista innehålla mer än en instans med listningsdetaljer (kopplade till en mottagning). | 0..* |
| listings.validFromDate | dateTime | Datum från när listningen började gälla | 0..1 |
| listings.validToDate | dateTime | Datum till när listningen fortfarande gäller | 0..1 |
| listings.listingType | CVType | Listningstyp som listningen gäller. / Se listningstyper i referens [R3] | 1..1 |
| listings.listingType.code | string | Kod för listningstypen. Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara PV. Regioner har möjlighet att definiera egna regionala listningstyper. Det är i sådant fall upp till regionen att upprätta och förvalta det regionala kodverket. | 1..1 |
| listings.listingType.codeSystem |  | Sätts till den OID, urn eller liknande som visar på från vilket kodverk den angivna koden innefattas i. / Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara 1.2.752.129.5.1.27. / https://inera.atlassian.net/wiki/download/attachments/2648506471/Kv%20nationella%20listningstyper.xlsx?api=v2 | 1..1 |
| listings.listingType.displayName | string | Benämningen på listningstypen att visa för invånare i ett användargränssnitt. / För den nationella listningstypen ”PV” ska displayName vara ”Primärvårdslistning”. | 1..1 |
| listings.healthcareFacility | HealthcareFacilityType | Den valda listningsbara mottagningen | 1..1 |
| listings.healthcareFacility.id | HSAIdType / (string) | HSAId för mottagningen / En tjänstekonsument bör kunna hantera HSAId:n som uttrycks både med versaler och gemener. / Exempelvis är: / ”se12345-xyz” = ”SE12345-XYZ” | 1..1 |
| listings.healthcareFacility.name | string | Namn på vårdenheten | 1..1 |
| listings.healthcareFacility.hasQueue | boolean | Visar huruvida mottagningen erbjuder kö när mottagningens maximala kvot av listade invånare har nåtts. / Skall endast sättas till TRUE om mottagningens maximala kvot uppnåtts och mottagningen erbjuder kö till listning, således: / TRUE = Maximala antalet invånare som mottagningen får lista är uppnått samt listningskö erbjuds / FALSE = För övrigt | 1..1 |
| listings.healthcareFacility.supportedListingTypes | CVType | Lista med olika listningstyper som mottagningen erbjuder. / Om attributet är utelämnat innebär det att mottagningen endast erbjuder listning av typen öppenvårdsmottagning/primärvård. Se listningstyper i Informationsspecifikationen R3. | 0..1 |
| listings.healthcareFacility.supportedListingTypes.code | string | Kod för listningstypen som mottagningen stödjer. | 1..1 |
| listings.healthcareFacility.supportedListingTypes.codeSystem | string | OID, urn eller liknande som visar på från vilket kodverk den angivna koden/listningstypen innefattas. / Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet för codeSystem vara ”1.2.752.129.5.1.27”. | 1..1 |
| listings.healthcareFacility.supportedListingTypes.displayName | string | Benämning av listningstypen. Benämningen ska vara uttryckt på ett invånarvänligt sätt för att kunna förmedlas i invånarens användargränssnitt i e-tjänst. | 1..1 |
| listings.healthcareFacility.supportsHealthcarePersonnel | boolean | Visar huruvida mottagningen erbjuder möjlighet att i samband med listning även välja specifik vårdpersonal, d v s ”fast läkarkontakt". / Det är frivilligt för region att erbjuda denna möjlighet. Om möjligheten erbjuds behöver regionens listningssystem även stödja tjänstekontraktet GetAvailableHealthcarePersonnel som producent. / TRUE = mottagningen erbjuder fast läkarkontakt. / Utelämnas eller sätts till FALSE om mottagningen inte erbjuder fast läkarkontakt. | 1..1 |
| listings.healthcareFacility.queueLength | integer | Nytt fält fr o m v2.1. / Om mottagningen erbjuder kö kan mottagningen redovisa hur många invånare som för tillfället står i listningskö till mottagningen. Fältet är frivilligt. / Observera: / Detta fält ingår i datatypen HealthcareFacilityType som återanvänds även i tjänstekontraktet GetAvailableHealthcareFacilities. I kontextet då en konsument hämtar listningsinformation om en invånare (GetListing) är det inte lika relevant för listningssystemet att förmedla detta värde, då invånaren redan är listad på mottagningen eller står i listningskö till mottagningen. | 0..1 |
| listings.healthcareFacility.estimatedWaitInQueue | integer | Nytt fält fr o m v2.1. / Om mottagningen erbjuder kö kan mottagningen redovisa hur lång väntetid som invånare kan förvänta sig. Fältet är frivilligt. / Observera: / Detta fält ingår i datatypen HealthcareFacilityType som återanvänds även i tjänstekontraktet GetAvailableHealthcareFacilities. I kontextet då en konsument hämtar listningsinformation om en invånare (GetListing) är det inte lika relevant för listningssystemet att förmedla detta värde, då invånaren redan är listad på mottagningen eller står i listningskö till mottagningen. | 0..1 |
| listings.healthcarePersonnel |  | Vårdpersonal som är kopplade till listningen. Det är frivilligt för mottagning att erbjuda invånare möjlighet att dessutom välja vårdpersonal i samband med listningen. Om regionen erbjuder denna möjlighet ska regionen även vara producent för tjänstekontraktet GetAvailableHealthcarePersonnel. Det är Regionen kan därefter välja att erbjuda denna funktionalitet per mottagning, genom flaggan supportsHealthcarePersonnel (i typen HealthCareFacilityType). / Observera att en producent tillåts förmedla fast läkarkontakt genom att populera detta fält även om producent inte erbjuder invånaren möjlighet att digitalt välja fast läkarkontakt. / En konsument ska visa den förmedlade fasta läkarkontakten till invånaren, även om producent inte stödjer det frivilliga tjänstekontraktet GetAvailableHealthcarePersonnel. | 0..1 |
| listings.healthcarePersonnel.id | HSAIdType / (string) | HsaId för vårdpersonal | 1..1 |
| listings.healthcarePersonnel.name | string | Namn (för- och efternamn) för vårdpersonal | 1..1 |
| listings.healthcarePersonnel.title | string | Vårdpersonals titel | 0..1 |
| listings.isInQueue | boolean | Flagga för att visa om invånare står i kö för att lista sig på mottagningen eller om invånare har en aktiv listning. / TRUE = Invånare står i kö / FALSE = Invånare har en aktiv listning på mottagningen | 1..1 |
| listings.queuePosition | integer | Nytt fält fr o m v2.1. / Förmedlar vilken plats i listningskön som invånaren har om invånaren tidigare har valt att ställa sig i kö på mottagningen | 0..1 |
| listings.estimatedWaitInQueue | integer | Nytt fält fr o m v2.1. / Förmedlar hur lång uppskattad återstående väntetid invånaren kan förvänta sig om invånaren tidigare ställt sig i listningskön på mottagningen. Den uppskattade väntetiden ska återge ungefär hur länge till invånare uppskattas behöva vänta innan invånaren blir listad på mottagningen. / Uppskattad väntetid anges i antal dagar. | 0..1 |
| listings.remainingChanges | integer | Nytt fält fr o m v2.1. / Förmedlar hur många omlistningar som invånare har kvar att kunna göra. / För listning till primärvård får invånare lista om sig maximalt 3 ggr under en 12-månaders period enligt Socialstyrelsens föreskrifter. | 0..1 |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som kan presenteras för slutanvändare i ett användargränssnitt i de fall resultCode == ERROR. | 0..1 |

#### 7.5.5 Övriga regler

Inga övriga regler finns definierade.

##### 7.5.5.1 Icke funktionella krav

Inga icke-funktionella krav är definierade.

##### 7.5.5.2 SLA-krav

Se generella SLA krav under rubrik 4.2.2 ovan.

#### 7.5.6 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| actor | ActorType |  | 1..1 |
| ../actorId | IIType |  | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../actorType | ActorTypeEnum |  | 1..1 |
| personId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| **Svar** | | | |
| listings | ListingHealthcareFacilityType |  | 0..* |
| ../validFromDate | dateTime |  | 0..1 |
| ../validToDate | dateTime |  | 0..1 |
| ../listingType | CVType |  | 1..1 |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string |  | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| ../healthcareFacility | HealthcareFacilityType | Vårdinrättning/vårdenhet som ansvarar för en person som listat sig hos dem. Det är denna inrättning som får ekonomisk ersättning för personen. | 1..1 |
| ../../id | HSAIdType |  | 1..1 |
| ../../name | string | Namn på vårdenheten. | 1..1 |
| ../../hasQueue | boolean |  | 1..1 |
| ../../supportedListingTypes | CVType | Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i. | 0..* |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../supportsHealthcarePersonnel | boolean |  | 1..1 |
| ../../queueLength | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| ../../estimatedWaitInQueue | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| ../healthcarePersonnel | HealthcarePersonnelType |  | 0..1 |
| ../../id | HSAIdType |  | 1..1 |
| ../../name | string |  | 1..1 |
| ../../title | string |  | 0..1 |
| ../isInQueue | boolean |  | 1..1 |
| ../queuePosition | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| ../estimatedWaitInQueue | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| ../remainingChanges | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |

#### 7.5.7 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:supportprocess:logistics:carelisting:GetListingResponder:2:GetListing`

#### 7.5.8 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetListingInteraction_2.1_RIVTABP21.wsdl](GetListingInteraction_2.1_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetListingResponder_2.1.xsd](GetListingResponder_2.1.xsd) | Tjänsteschema |
| [supportprocess_logistics_carelisting_2.1.xsd](supportprocess_logistics_carelisting_2.1.xsd) | Domänschema (delat) |
| [supportprocess_logistics_carelisting_2.1_ext.xsd](supportprocess_logistics_carelisting_2.1_ext.xsd) | Domänschema (delat), utökningar i version 2.1 |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TP_GetListing_2.1.docx](SjD_TP_GetListing_2.1.docx) | Självdeklaration för tjänsteproducent |

#### 7.5.9 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getlisting-request](StructureDefinition-getlisting-request.html)
* **Logisk modell (response):** [StructureDefinition/getlisting](StructureDefinition-getlisting.html)
* **Kodsystem:** [CodeSystem/carelisting-actortype-cs](CodeSystem-carelisting-actortype-cs.html)
* **ValueSet:** [ValueSet/carelisting-actortype-vs](ValueSet-carelisting-actortype-vs.html)
* **Kodsystem:** [CodeSystem/carelisting-resultcode-cs](CodeSystem-carelisting-resultcode-cs.html)
* **ValueSet:** [ValueSet/carelisting-resultcode-vs](ValueSet-carelisting-resultcode-vs.html)

### GetListingTypes

Tjänstekontraktet GetListingTypes anropas av tjänstekonsument för att hämta de listningstyper som erbjuds invånare i den adresserade regionen. Tjänstekontraktet kan användas i två olika sammanhang.

- Hämta alla listningstyper som en utpekad region erbjuder.
- Hämta de listningstyper som är gällande för en specifik invånare, baserat på invånares folkbokföringsregion

#### 7.6.1 Hämta alla listningstyper som en utpekad region erbjuder

I detta scenario kan tjänstekonsument hämta alla de listningstyper som en region erbjuder regionalt. Tjänstekonsument ska i detta scenario utelämna fälten personnummer och folkbokföringsregion i begäran.

Tjänsteproducent (regions listningssystem) ska returnera samtliga erbjudna listningstyper. Svaret ska även inkludera den på nationell nivå gemensamma listningstypen som motsvarar listning till primärvård/öppenvård (PV). Om region dessutom erbjuder listningstyp som är gemensam i samverkan mellan grupp av regioner ska även denna/dessa returneras (läs mer om listningstyper i Informationsspecifikation R3).

#### 7.6.2 Hämta de listningstyper som är gällande för en specifik invånare, baserat på invånares folkbokföringsregion

I detta scenario baseras tjänsteproducentens svar på en specifik invånare och invånarens folkbokföringsregion. Tjänstekonsument ska således ange både invånares personnummer samt folkbokföringsregion.

Om invånare är folkbokförd i den region som adresseras ska producenten returnera de regionalt gällande listningstyper Enligt regionens regelverk. Producent kan välja att erbjuda olika mängd regionala listningstyper baserat på den specifika individen/invånaren.

Om invånare är folkbokförd i annan region än den adresserade regionen ska producenten returnera den nationellt gemensamma listningstypen som motsvarar listning till primärvård/öppenvård (motsvarande det nationella fria vårdvalet). Tjänsteproducent kan också returnera gemensamt överenskommen listningstyp som grupp av regioner samverkar kring såvida invånare är folkbokförd i någon av de samarbetande regionerna (läs mer om listningstyper i Informationsspecifikation R3).

#### 7.6.3 Frivillighet

Tjänstekontraktet är obligatoriskt för tjänsteproducent/region.

Tjänstekontraktet är frivilligt för tjänstekonsument. Om tjänstekonsument stödjer listning/omlistning (CreateListing) och erbjuder stöd för detta utöver en enstaka isolerad region ska konsument också stödja kontraktet.

#### 7.6.4 Version

Aktuell version är 2.0

#### 7.6.5 Meddelandeinformationsmodell (MIM)

![Meddelandeinformationsmodell (MIM) för GetListingTypes](img_003.png)

#### 7.6.6 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personId | IIType | Invånares personnummer. Tillåts utelämnas om konsument efterfrågar samtliga listningstyper som region (logicalAddress) erbjuder. | 0..1 |
| personId.root | string | OID som visar typ av person-id som förmedlas. Kan vara: / ”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704. / ” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV | 1..1 |
| personId.extension | string | Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck. | 1..1 |
| homeCounty | IIType | Invånares folkbokföringsregion. / Fältet ska utelämnas om konsument ej angivit invånares personnummer. | 0..1 |
| homeCounty.root | string | OID för länskod. (kv/län -- 1.2.752.129.2.2.1.18) | 1..1 |
| homeCounty.extension | string | Länskod | 1..1 |
| Svar |  |  |  |
| listingTypes | CVType | Listningstyper som producent erbjuder. / Se listningstyper i referens [R3] | 0..* |
| listingTypes.code |  | Kod för listningstypen. Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara PV. Regioner har möjlighet att definiera egna regionala listningstyper. Det är i sådant fall upp till regionen att upprätta och förvalta det regionala kodverket. |  |
| listingTypes.codeSystem |  | Sätt till den OID, urn eller liknande som visar på från vilket kodverk den angivna koden innefattas i. / Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara 1.2.752.129.5.1.27. / https://inera.atlassian.net/wiki/download/attachments/2648506471/Kv%20nationella%20listningstyper.xlsx?api=v2 |  |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR | 0..1 |

#### 7.6.7 Övriga regler

Inga övriga regler finns definierade.

##### 7.6.7.1 Icke funktionella krav

Inga icke-funktionella krav är definierade.

##### 7.6.7.2 SLA-krav

Se generella SLA krav under rubrik 4.2.2 ovan.

#### 7.6.8 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| personId | IIType |  | 0..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| homeCountyCode | IIType |  | 0..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| **Svar** | | | |
| listingTypes | CVType |  | 0..* |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |

#### 7.6.9 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2:GetListingTypes`

#### 7.6.10 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetListingTypesInteraction_2.0_RIVTABP21.wsdl](GetListingTypesInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetListingTypesResponder_2.0.xsd](GetListingTypesResponder_2.0.xsd) | Tjänsteschema |
| [supportprocess_logistics_carelisting_2.0.xsd](supportprocess_logistics_carelisting_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TP_GetListingTypes_2.1.docx](SjD_TP_GetListingTypes_2.1.docx) | Självdeklaration för tjänsteproducent |

#### 7.6.11 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getlistingtypes-request](StructureDefinition-getlistingtypes-request.html)
* **Logisk modell (response):** [StructureDefinition/getlistingtypes](StructureDefinition-getlistingtypes.html)
* **Kodsystem:** [CodeSystem/carelisting-resultcode-cs](CodeSystem-carelisting-resultcode-cs.html)
* **ValueSet:** [ValueSet/carelisting-resultcode-vs](ValueSet-carelisting-resultcode-vs.html)

### UpdateListing

Tjänstekontraktet UpdateListing anropas av tjänstekonsument (region) för att meddela annan region om att en utomlänslistning har skett för berörd invånare. Tjänstekonsument är normalt alltid en regions listningssystem.

Tjänstekontraktet anropas normalt som en följd efter en tidigare inträffad händelse. Exempel på scenarios som kan inträffa:

| Förutsättning | Utfall |
| :--- | :--- |
| Invånare är listad i sin hemregion (folkbokföringsregion) innan scenariot. / Invånare väljer att lista sig på annan regions listningsbar mottagning via 1177 Vårdguidens e-tjänster. | 1177 Vårdguidens e-tjänster anropar CreateListing, adresserat till den nyvalda regionen - triggat av förutsättningar, punkt 2. / Nyvald regions listningssystem anropar UpdateListing, adresserat till invånares folkbokföringsregion (invånares folkbokföringsregion erhålls i begäran i CreateListing – attributet homeCounty) / Folkbokföringsregionen håller därefter reda på i vilken region som invånaren är utomlänslistad på och kan returnera denna när folkbokföringsregionen blir anropad på tjänstekontraktet GetListingCounty. |
| Invånare är listad i annan region (Region C) innan scenariot. / Invånare väljer att lista sig på annan regions (Region B) listningsbar mottagning via 1177 Vårdguidens e-tjänster | 1177 Vårdguidens e-tjänster anropar CreateListing, adresserat till den nyvalda regionen (Region B) - triggat av förutsättningar, punkt 2. / Region B’s listningssystem anropar UpdateListing, adresserat till invånares folkbokföringsregion (invånares folkbokföringsregion erhålls i begäran i CreateListing) / Folkbokföringsregions listningssystem anropar UpdateListing, adresserat till Region C (det är folkbokföringsregions skyldighet att hålla reda på var en invånare är utomlänslistad) |
| Invånare är listad i annan region (Region B) innan scenariot. / Invånare väljer att lista tillbaka sig på listningsbar mottagning i hemregionen (folkbokföringsregionen) via 1177 Vårdguidens e-tjänster. | 1177 Vårdguidens e-tjänster anropar CreateListing, adresserat till den nyvalda regionen som i detta fall är folkbokföringsregionen - triggat av förutsättningar, punkt 2. / Folkbokföringsregionens listningssystem anropar UpdateListing, adresserat till den region (Region B) där invånare var utomlänslistad innan scenariot. |

#### 7.7.1 Frivillighet

Tjänstekontraktet är obligatoriskt för regioners listningssystem att implementera – både som tjänsteproducent och tjänstekonsument.

#### 7.7.2 Version

Aktuell version är 2.0.  

Tjänstekontraktet är nytt fr o m version 2.0 av tjänstedomänen men har ändå versionerats till 2 för att tydliggöra att tjänstekontraktet är en del av tjänstedomän version 2.

#### 7.7.3 Meddelandeinformationsmodell (MIM)

![Meddelandeinformationsmodell (MIM) för UpdateListing](img_012.jpeg)

#### 7.7.4 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personId | IIType | Invånares personnummer | 1..1 |
| personId.root | string | OID som visar typ av person-id som förmedlas. Kan vara: / ”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704. / ” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV | 1..1 |
| personId.extension | string | Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck. | 1..1 |
| newListingCounty | IIType | Region i vilken invånare valt att utomlänslista sig hos. / Om länskoden är densamma som för den region som tar emot anropet, då ska anropet tolkas som att en tidigare utomlänslistning har upphört och att folkbokföringsregionen åter har ansvaret för invånaren. Folkbokföringsregionen ska då makulera information om att invånaren är utomlänslistad. Detta scenario kan exempelvis inträffa om den vårdenhet som invånaren utomlänslistat sig på upphör med sin verksamhet. | 1..1 |
| newListingCounty.root | string | OID för regionskod (enligt SCB). / 1.2.752.129.2.2.1.18 | 1..1 |
| newListingCounty.extension | string | Regionskod | 1..1 |
| homeCounty | IIType | Invånares folkbokföringsregion. | 1..1 |
| homeCounty.root | string | OID för regionskod (enligt SCB). / 1.2.752.129.2.2.1.18 | 1..1 |
| homeCounty.extension | string | Regionskod | 1..1 |
| listingType | CVType | Listningstyp som omlistningen (utomlänslistningen) gäller. Fältet ska endast förmedlas om den nya regionen har ett samverkansavtal med folkbokföringsregionen och behöver förmedla gemensamt överenskomna listningstyper som gäller i de båda regionerna. / Se listningstyper i referens [R3] | 0..1 |
| Svar |  |  |  |
| resultCode | ResultCodeEnum | Kan vara OK, INFO, ERROR alternativt något av följande specifika koder (se även resultText nedan): / ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED | 1..1 |
| resultText | string | Kan utelämnas om resultCode = OK. / Producent förväntas skicka ett tillräckligt informativt meddelande som kan presenteras för slutanvändare i ett användargränssnitt i de fall resultCode == ERROR. / OBSERVERA: / Producent ska returnera specifika felkoder för följande situationer: / Invånares maximalt antal tillåtna omlistningar under en 12-månaders-period har uppnåtts / Den valda vårdenheten som invånare vill lista sig på har uppnått det maximala antalet tillåtna invånare (*) / Omlistningen tillåts inte då det saknas fullvärdigt samtycke (t ex att båda vårdnadshavare har samtyckt om omlistningen) / Invånares ålder är utanför tillåtet åldersspann för listningstypen / (*) / Detta kan inträffa då anropet görs med addToQueue = FALSE och maxtaket för antal tillåtna listningar/invånare på mottagningen uppnåtts. I det fall addToQueue = TRUE och invånare kan placeras i kö ska resultCode=OK returneras. | 0..1 |

#### 7.7.5 Övriga regler

Inga övriga regler finns definierade.

##### 7.7.5.1 Icke funktionella krav

Inga icke-funktionella krav är definierade.

##### 7.7.5.2 SLA-krav

Se generella SLA krav under rubrik 4.2.2 ovan.

#### 7.7.6 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| personId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| newListingCounty | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| homeCounty | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| listingType | CVType |  | 0..1 |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| **Svar** | | | |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |

#### 7.7.7 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:supportprocess:logistics:carelisting:UpdateListingResponder:2:UpdateListing`

#### 7.7.8 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [UpdateListingInteraction_2.0_RIVTABP21.wsdl](UpdateListingInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [UpdateListingResponder_2.0.xsd](UpdateListingResponder_2.0.xsd) | Tjänsteschema |
| [supportprocess_logistics_carelisting_2.0.xsd](supportprocess_logistics_carelisting_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_UpdateListing_2.1.docx](SjD_TK_UpdateListing_2.1.docx) | Självdeklaration för tjänstekonsument |
| [SjD_TP_UpdateListing_2.1.docx](SjD_TP_UpdateListing_2.1.docx) | Självdeklaration för tjänsteproducent |

#### 7.7.9 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/updatelisting-request](StructureDefinition-updatelisting-request.html)
* **Logisk modell (response):** [StructureDefinition/updatelisting](StructureDefinition-updatelisting.html)
* **Kodsystem:** [CodeSystem/carelisting-resultcode-cs](CodeSystem-carelisting-resultcode-cs.html)
* **ValueSet:** [ValueSet/carelisting-resultcode-vs](ValueSet-carelisting-resultcode-vs.html)


# 7 Tjänstekontrakt

## GetConsentsForPatient

Tjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation.
Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents).
Ogiltiga intyg (giltigt t o m har passerats, makulerade eller återkallade) returneras ej.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet läser in de giltiga samtycken som finns för patienten per vårdgivare, för att sedan utföra intern kontroll av samtycke.

### Frivillighet

Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för samtyckeshantering och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

### Version

1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** |  |  |  |
| careProviderId | patientconsent:HsaId | Obligatoriskt id på den vårdgivare vars samtycken skall hämtas. | 1..1 |
| patientId | patientconsent:PersonIdValue | Patientens personnummer alternativt samordningsnummer vars samtycken skall hämtas. | 1..1 |
| **Svar** |  |  |  |
| getConsentsForPatient | patientconsent:GetConsentsResult | Lista med giltiga samtycken för patient. | 1..1 |

### Regler

Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till samtyckesinformationen genom att kontrollera att det efterfrågade informationsurvalet matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetConsentsForPatientInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetConsentsForPatientInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientconsent_1.0.xsd](files/schema/ehr_patientconsent_1.0.xsd) | Domänschema (delat) |
| [GetConsentsForPatientResponder_1.0.xsd](files/schema/GetConsentsForPatientResponder_1.0.xsd) | Tjänstespecifikt schema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getconsentsforpatient](StructureDefinition-getconsentsforpatient.html)
* **Logisk modell (request):** [StructureDefinition/getconsentsforpatient-request](StructureDefinition-getconsentsforpatient-request.html)

---

## GetConsentsForCareProvider

Tjänst som läser alla giltiga samtyckesintyg för en viss vårdgivare med grundinformation.
Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll av åtkomst (CheckConsents).
Det är valbart om makulerade och återkallade samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras.
Utgångna samtyckesintyg (giltigt t o m har passerats) returneras ej oavsett makulering eller återkallning.
Det går även att ange en tidpunkt (CreatedOnOrAfter) från när man önskar inhämta uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Här avses tidpunkten då samtycket lagrades i tjänsten.
Tjänsten tillåts att dela upp listan av samtyckesintyg i mindre delar för att minska på belastningen på systemet. Om detta sker kommer flaggan HasMore att vara satt om det finns fler samtyckesintyg att hämta. De resterande samtyckesintygen skall i så fall hämtas med ytterligare anrop till tjänsten tills flaggan HasMore ej längre är satt (false).
Tjänsten returnerar en ny tidpunkt (CreatedOnOrAfter) som anger från och med nästa tidpunkt som samtyckesintygen ej har hämtats. Detta värde kan användas som inparameter i ytterligare anrop till tjänsten för att hämta nästa sekvens av samtyckesintyg.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar alla samtycken det behöver utifrån de vårdgivare som systemet hanterar information från, för att sedan vid behov utföra intern kontroll mot underlaget av samtycken och nödsituationsintyg.
Viktigt att kontrollera att alla samtycken är hämtade genom att kontrollera värdet på flaggan HasMore.

### Frivillighet

Obligatorisk för tjänsteproducent.

### Version

1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** |  |  |  |
| careProviderId | patientconsent:HsaId | HSA-id på den vårdgivare vars samtycken skall hämtas. | 1..1 |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla samtyckesintyg som skall hämtas. Om angivet returneras endast samtyckesintyg som är giltiga i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| getCancelledFlag | xs:boolean | Flagga som avgör om makulerade och återkallade samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras. | 1..1 |
| **Svar** |  |  |  |
| getConsentsForCareProvider | patientconsent:GetAllAssertionsResult | Lista med giltiga samtyckesintyg och eventuellt en lista med ogiltiga samtyckesintyg. Information om det finns fler samtyckesintyg att hämta samt ny starttidpunkt ingår även i svaret. | 1..1 |

### Regler

Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till samtyckesinformationen genom att kontrollera att det efterfrågade informationsurvalet matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetConsentsForCareProviderInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetConsentsForCareProviderInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientconsent_1.0.xsd](files/schema/ehr_patientconsent_1.0.xsd) | Domänschema (delat) |
| [GetConsentsForCareProviderResponder_1.0.xsd](files/schema/GetConsentsForCareProviderResponder_1.0.xsd) | Tjänstespecifikt schema |

### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/getconsentsforcareprovider](StructureDefinition-getconsentsforcareprovider.html)
* **Logisk modell (request):** [StructureDefinition/getconsentsforcareprovider-request](StructureDefinition-getconsentsforcareprovider-request.html)

---

## GetExtendedConsentsForPatient

Tjänst som läser registrerade samtyckesintyg för en viss patient med utökad information.
Det är valbart om ogiltiga (makulerade, återkallade och utgångna) samtyckesintyg skall returneras.
Tjänsten kan användas för att söka fram och administrera patientens samtycken för en viss vårdgivare.

### Frivillighet

Obligatorisk för tjänsteproducent.

### Version

1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** |  |  |  |
| careProviderId | patientconsent:HsaId | HSA-id på den vårdgivare vars samtycken skall hämtas. | 1..1 |
| patientId | patientconsent:PersonIdValue | Patientens personnummer alternativt samordningsnummer vars samtycken skall hämtas. | 1..1 |
| getCancelledFlag | xs:boolean | Flagga som avgör om ogiltiga samtyckesintyg skall returneras. | 1..1 |
| **Svar** |  |  |  |
| getExtendedConsentsForPatient | patientconsent:GetExtendedConsentsResult | Utökad information för samtycke. | 1..1 |

### Regler

Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till samtyckesinformationen genom att kontrollera att det efterfrågade informationsurvalet matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetExtendedConsentsForPatientInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetExtendedConsentsForPatientInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientconsent_1.0.xsd](files/schema/ehr_patientconsent_1.0.xsd) | Domänschema (delat) |
| [GetExtendedConsentsForPatientResponder_1.0.xsd](files/schema/GetExtendedConsentsForPatientResponder_1.0.xsd) | Tjänstespecifikt schema |

### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/getextendedconsentsforpatient](StructureDefinition-getextendedconsentsforpatient.html)
* **Logisk modell (request):** [StructureDefinition/getextendedconsentsforpatient-request](StructureDefinition-getextendedconsentsforpatient-request.html)

---

## CheckConsent

Tjänst som kontrollerar om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör (vårdenhet eller medarbetare).
Med giltigt samtycke avses ett samtycke som fortfarande är giltigt (giltigt t o m har ej passerats), ej makulerat eller återkallat.
Om ett giltigt intyg gällande åtkomst för angiven aktör hittas, kommer tjänsten att svara OK.

### Frivillighet

Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för samtyckeshantering och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

### Version

1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | Beror på ingående samtyckestjänsters tillgänglighet. Önskas högre tillgänglighet kan konsumerande system mellanlagra data i cache som anpassas till krav på aktualitet. |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att utföra en kontroll på de senaste registrerade intygsuppgifterna i samtyckestjänsten. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** |  |  |  |
| accessingActor | patientconsent:AccessingActor | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | patientconsent:PersonIdValue | Patientens personnummer alternativt samordningsnummer vars information aktören önskar åtkomst till. | 1..1 |
| **Svar** |  |  |  |
| checkConsent | patientconsent:CheckResult | Status för om ett giltigt intyg gällande åtkomst för angiven aktör hittades. | 1..1 |

### Regler

Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CheckConsentInteraction_1.0_RIVTABP21.wsdl](files/wsdl/CheckConsentInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientconsent_1.0.xsd](files/schema/ehr_patientconsent_1.0.xsd) | Domänschema (delat) |
| [CheckConsentResponder_1.0.xsd](files/schema/CheckConsentResponder_1.0.xsd) | Tjänstespecifikt schema |

### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/checkconsent](StructureDefinition-checkconsent.html)
* **Logisk modell (request):** [StructureDefinition/checkconsent-request](StructureDefinition-checkconsent-request.html)

---

## RegisterExtendedConsent

Tjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens information från andra vårdgivare enligt PDL.
Intyget avser patientens aktiva medgivande (samtycke), alternativt nödsituation då HoS personal bedömer att behov av uppgifterna finns för nödvändig vård av patient som inte kan ge aktivt medgivande.
Det går även att registrera patientens företrädare.
Tjänsten kräver utökad information (metainformation) kring skapande av intyget.

### Frivillighet

Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för samtyckeshantering och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

### Version

1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av samtycke skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor till samtyckestjänsten. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** |  |  |  |
| assertionId | patientconsent:Id | Unik, global identifierare för intyget. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| assertionType | patientconsent:AssertionType | Typ av intyg som ger direktåtkomst till information från andra vårdgivare enligt PDL. Kan vara patientens samtycke eller nödsituation. | 1..1 |
| scope | patientconsent:Scope | Omfånget/tillämpningsområde på intyget. | 1..1 |
| patientId | patientconsent:PersonIdValue | Patientens personnummer alternativt samordningsnummer. | 1..1 |
| careProviderId | patientconsent:HsaId | Id på den vårdgivare som intyget gäller för/kopplas till. | 1..1 |
| careUnitId | patientconsent:HsaId | Id på den vårdenhet som intyget gäller för/kopplas till. | 1..1 |
| employeeId | patientconsent:HsaId | Medarbetar id. Om samtycket är personligt anges id för den medarbetare som samtycket skall gälla för. Om samtycket gäller all behörig personal på angiven vårdenhet, skall inget medarbetarid anges. | 0..1 |
| startDate | xs:dateTime | Ej obligatoriskt startdatum för intygets giltighetstid. Om ett startdatum är angivet gäller intyget fr.o.m denna tidpunkt, annars gäller samtycket fr.o.m aktuell tidpunkt (registreringstidpunkt). | 0..1 |
| endDate | xs:dateTime | Ej obligatoriskt slutdatum för intygets giltighetstid. Om ett slutdatum är angivet gäller intyget t.o.m denna tidpunkt. Om inget slutdatum anges, gäller samtycket tills det blir återkallat eller makulerat. | 0..1 |
| representedBy | patientconsent:PersonIdValue | Ej obligatorisk företrädare/vårdnadshavare som företräder patienten. | 0..1 |
| registrationAction | patientconsent:Action | Identifierar de personer som begärt och registrerat intyget samt tidpunkter för dessa. | 1..1 |
| **Svar** |  |  |  |
| registerExtendedConsent | patientconsent:Result | Status för om tjänsten utfördes. | 1..1 |

### Regler

Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som samtycket avser genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [RegisterExtendedConsentInteraction_1.0_RIVTABP21.wsdl](files/wsdl/RegisterExtendedConsentInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientconsent_1.0.xsd](files/schema/ehr_patientconsent_1.0.xsd) | Domänschema (delat) |
| [RegisterExtendedConsentResponder_1.0.xsd](files/schema/RegisterExtendedConsentResponder_1.0.xsd) | Tjänstespecifikt schema |

### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/registerextendedconsent](StructureDefinition-registerextendedconsent.html)
* **Logisk modell (request):** [StructureDefinition/registerextendedconsent-request](StructureDefinition-registerextendedconsent-request.html)

---

## CancelExtendedConsent

Tjänst som återkallar ett samtycke i samtyckestjänsten. Intyget raderas inte från samtyckestjänsten utan markeras som återkallad (ej längre giltig) för historikens skull. En återkallan kan ej återtas.

### Frivillighet

Obligatorisk för tjänsteproducent.

### Version

1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att återkallan av samtycket skett då anropet genomförts utan fel. Återkallan speglas omedelbart i svar från frågor genom tjänsterna. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** |  |  |  |
| assertionId | patientconsent:Id | Identifierare för det intyg som skall återkallas. | 1..1 |
| cancellationAction | patientconsent:Action | Identifierar de personer som begärt och registrerat återkallan samt tidpunkter för dessa. En anledning till återkallan i fritext kan även ges. | 1..1 |
| **Svar** |  |  |  |
| cancelExtendedConsent | patientconsent:Result | Status för om tjänsten utfördes. | 1..1 |

### Regler

Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som samtycket gäller genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till vårdgivaren som äger samtyckesinformationen skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CancelExtendedConsentInteraction_1.0_RIVTABP21.wsdl](files/wsdl/CancelExtendedConsentInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientconsent_1.0.xsd](files/schema/ehr_patientconsent_1.0.xsd) | Domänschema (delat) |
| [CancelExtendedConsentResponder_1.0.xsd](files/schema/CancelExtendedConsentResponder_1.0.xsd) | Tjänstespecifikt schema |

### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/cancelextendedconsent](StructureDefinition-cancelextendedconsent.html)
* **Logisk modell (request):** [StructureDefinition/cancelextendedconsent-request](StructureDefinition-cancelextendedconsent-request.html)

---

## DeleteExtendedConsent

Tjänst som makulerar ett samtycke i samtyckestjänsten. Makulering av samtycke används enbart för borttagning av felregistrerade samtycken.
Samtycket raderas inte från samtyckestjänst utan markeras som makulerad (ej längre giltig) för historikens skull. En makulering kan ej återtas.

### Frivillighet

Obligatorisk för tjänsteproducent.

### Version

1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att makulering av samtycke skett då anropet genomförts utan fel. Makuleringen speglas omedelbart i svar från frågor genom tjänsterna. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** |  |  |  |
| assertionId | patientconsent:Id | Identifierar det intyg som skall makuleras. | 1..1 |
| deletionAction | patientconsent:Action | Identifierar de personer som begärt och utfört makulering samt tidpunkter för dessa. En anledning till makuleringen i fritext kan även ges. | 1..1 |
| **Svar** |  |  |  |
| deleteExtendedConsent | patientconsent:Result | Status för om tjänsten utfördes. | 1..1 |

### Regler

Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som samtycket gäller genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till vårdgivaren som äger samtyckesinformationen skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteExtendedConsentInteraction_1.0_RIVTABP21.wsdl](files/wsdl/DeleteExtendedConsentInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_patientconsent_1.0.xsd](files/schema/ehr_patientconsent_1.0.xsd) | Domänschema (delat) |
| [DeleteExtendedConsentResponder_1.0.xsd](files/schema/DeleteExtendedConsentResponder_1.0.xsd) | Tjänstespecifikt schema |

### FHIR-artefakter

* **Logisk modell (response):** [StructureDefinition/deleteextendedconsent](StructureDefinition-deleteextendedconsent.html)
* **Logisk modell (request):** [StructureDefinition/deleteextendedconsent-request](StructureDefinition-deleteextendedconsent-request.html)

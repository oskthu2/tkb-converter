# 7 Tjänstekontrakt

## 7.1 GetFmb

### GetFmb

Tjänsten returnerar beslutsunderlag från FMB (Försäkringsmedicinskt beslutsstöd).

**Version:** 1.0

### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Anges inga parametrar i begäran returneras samtliga aktiva underlag.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** |  |  |  |
| underlagsId | IIType | Anger om endast ett eller ett antal underlag skall hämtas och i så fall vilka. Anges inget underlagsId returneras alla underlag. | 0..* |
| diagnosKod | CV | Anger om beslutsunderlag endast skall hämtas för en eller ett antal diagnoskoder. Anges med ICD-10-SE kodverket. Anges ingen diagnoskod returneras alla underlag. | 0..* |
| avenEjAktiva | Boolean | Anger om även ej aktiva beslutsunderlag skall hämtas. Anges ej attributet hämtas endast aktiva. | 0..1 |
| **Svar** |  |  |  |
| beslutsunderlag | BeslutsunderlagType | Beslutsunderlag innehåller information om beslutsunderlag som kan användas vid bedömning om sjukskrivning. Ett beslutunderlag kan användas som underlag för bedömning när samtliga villkor kopplades till klassen är uppfyllda. | 0..* |
| ../underlagsId | IItype | Globalt unik identifierare för beslutsunderlaget. | 1..1 |
| ../giltighetstid | IVL | Tid då en rekommendation är giltig. Starttiden i intervallet skall alltid anges. Om sluttid ej anges är beslutsrekommendationen aktiv. Ett beslutsunderlag som inte är aktiv skall innehålla ett slutdatum, som ligger tidigare än aktuellt datum, eller ett startdatum som ligger senare än aktuellt datum. | 1..1 |
| ../../start | Date | Starttid | 1..1 |
| ../../slut | Date | Sluttid | 0..1 |
| ../version | int | Versionsnummer för ett beslutsunderlag. Versionen räknas upp när ett beslutsunderlag förändrats i sin innebörd eller ändrar giltighetstid. | 1..1 |
| ../textuelltUnderlag | String | Varje beslutsunderlag beskrivs i textuell form, som omfattar alla villkor och rekommendationer som omfattas av beslutsunderlag samt annan information som är relevant i beslutsfattandet även om den informationen inte finns representerad i kodad form. | 0..1 |
| ../sjukskrivningstidTest | String | Totala sjukskrivningstidens längd med början från första intygsdag. Textuell representation som alltid är ifylld även där sjukskrivningstiden inte kan kvantifieras. | 1..1 |
| ../sjukskrivningstid | PQType | Totala sjukskrivningstidens längd med början från första intygsdag. Anges ej om sjukskrivningstiden inte kan kvantifieras. | 0..1 |
| ../../value | string | Värde för tidsangivelsen | 1..1 |
| ../../unit | string | Enhet för tidsangivelsen enligt UCUM, månad="mo", vecka = "wk", dag = "d" | 1..1 |
| ../sjukskrivningsgrad | CVType | Anger grad av sjukskrivning. Exempel på värden: Heltid, Deltid | 1..1 |
| ../senastAndrad | dateTime | Anger när ett beslutsunderlag senast ändrats | 1..1 |
| ../rehabiliteringsInformation | RehabiliteringsInformationType |  | 0..1 |
| ../../beskrivning | String | Text som beskriver en rehabiliteringsåtgärd | 1..1 |
| ../huvudDiagnos | HuvudDiagnosType | Den diagnos för vilken beslutsunderlaget gäller. | 1..* |
| ../../värde | CVType | Huvuddiagnos som anges med kod. Anges med ICD-10-SE kodverket. | 1..1 |
| ../villkor* | VillkorType | Villkor för att ett beslutsunderlag skall vara uppfyllt. | 1..1 |
| ../../urvalArbetsbelastning | UrvalArbetsbelastningType | Anges om villkoret är beroende av en eller flera koder för arbetsbelastning | 0..1 |
| ../../../arbetsbelastning | ArbetsbelastningType | Anger koder för arbetsbelastning för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Arbetsbelastning som anges med ett lokalt småkodverk. | 1..1 |
| ../../urvalKomplicerandeFaktor | UrvalKomplicerandeFaktorType | Anges om villkoret är beroende av en eller flera koder för komplicerande faktorer | 0..* |
| ../../../komplicerandeFaktor | KomplicerandeFaktorType | Anger koder för komplicerande faktorer för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Komplicerandefaktor som anges med en kod. (Kod för den typ av observation som avses.) | 1..1 |
| ../../urvalPlaneradAtgard | UrvalPlaneradAtgardType | Anges om villkoret är beroende av en eller flera koder för planerade åtgärder | 0..* |
| ../../../planeradAtgard | PlaneradAtgardType | Anger koder för planerade åtgärder för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Åtgärd som anges med en kod | 1..1 |
| ../../urvalPagaendeAtgard | UrvalPagaendeAtgardType | Anges om villkoret är beroende av en eller flera koder för pågående åtgärder | 0..* |
| ../../../pagaendeAtgard | PagaendeAtgardType | Anger koder för pågående åtgärder för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Åtgärd som anges med en kod | 1..1 |
| ../../urvalSamsjuklighet | UrvalSamsjuklighetType | Anges om villkoret är beroende av en eller flera koder för samsjuklighet | 0..* |
| ../../../samsjuklighet | SamsjuklighetType | Anger koder för samsjuklighet för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Diagnos som anges med kod. (Kod för den typ av observation som avses.) Anges med ICD-10-SE kodverket | 1..1 |
| ../../UrvalSjukdomsforlopp | UrvalSjukdomsforloppType | Anges om villkoret är beroende av en eller flera koder för sjukdomsforlopp | 0..1 |
| ../../../sjukdomsforlopp | SjukdomsforloppType | Anger koder för sjukdomsforlopp för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType |  | 1..1 |
| ../../urvalSvarighetsgrad | UrvalSvarighetsgradType | Anges om villkoret är beroende av en eller flera koder för svårighetsgrad | 0..1 |
| ../../../svarighetsgrad | SvarighetsgradType | Anger koder för svårighetsgrad för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Svårighetsgrad som anges med ett lokalt småkodverk. Giltiga värden är Lindrig, Medelsvår eller Svår. | 1..1 |
| ../../../utfordAtgard | UtfordAtgardType | Anger koder för utförda åtgärder för vilka minst en måste vara sann. | 1..* |
| ../../../../kod | CVType | Åtgärd som anges med en kod | 1..1 |
| version | versionType | Versioninformation för hela FMB | 1..1 |
| ../senasteVersionsuppdatering | dateTime | Anger när ett beslutsunderlag senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret som föranlett ett nytt datum. | 1..1 |
| ../senasteAndring | dateTime | Anger när ett beslutsunderlag senast uppdaterades, både mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret. | 1..1 |

### Övriga regler

**Villkor**

Villkor samlar underliggande faktorer som måste vara uppfyllda för att ett beslutsunderlag skall gälla. Dessa faktorer består av klasserna UrvalSvårighetsgrad, UrvalSjukdomsförlopp, UrvalKomplicerandeFaktor, UrvalSamsjuklighet, UrvalPlaneradårgärd, UrvalUtfördÅtgärd, UrvalPågåendeÅtgärd, UrvalTillstånd och UrvalArbetsbesastning. Dessa klasser består i sin tur av ett givet urval av koder. Förekomsten av en "urvals-klass" är att betrakta som ett OCH-villkor, det vill säga varje urval måste vara sant för att patienten skall uppfylla villkoret. Exempelvis kan ett villkor ha ett underliggande UrvalArbetsbesastning med en ingående Arbetsbelastning = "hög" samt UrvalSjukdomsforlopp med en ingående Sjukdomsforlopp=" kontinuerliga symtom". Detta betyder att villkoret är uppfyllt om patienten har hög arbetsbelastning OCH kontinuerliga symtom. I det fall ett urval samlar fler än en kod är detta att betrakta som ett ELLER-villkor mellan dessa ingående koder, det vill säga om ett urval innehåller två eller flera koder är ett villkor uppfyllt om en av dessa koder är sann för patienten i fråga. Exempelvis kan ett villkor ha ett underliggande UrvalArbetsbesastning som innehåller både en Arbetsbeslatning="måttlig" och Arbetsbelastning= "hög". Detta betyder att villkoret är uppfyllt om patienten har en arbetsbelastning som är "måttlig" ELLER "hög".

Om ett beslutsunderlag alltid är sant för en huvuddiagnos saknar villkoret underliggande klasser.

### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetFmbInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetFmbInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetFmbResponder_1.0.xsd](files/schema/GetFmbResponder_1.0.xsd) | Tjänstespecifikt schema |
| [processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.xsd](files/schema/processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.xsd) | Domänschema (delat) |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getfmb](StructureDefinition-getfmb.html)
* **Logisk modell (request):** [StructureDefinition/getfmb-request](StructureDefinition-getfmb-request.html)

---

## 7.2 GetDiagnosInformation

### GetDiagnosInformation

Tjänsten returnerar generell information om diagnoser. Sådan information kan gälla för en eller flera diagnoser samtidigt.

**Version:** 1.0

### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** |  |  |  |
| diagnosKod | CV | Anger om endast diagnosinformation skall hämtas för en eller ett antal diagnoskoder. Anges ej parametern returneras diagnosinformation för alla diagnoskoder. | 0..* |
| avenEjAktiva | Boolean | Anger om även ej aktiv diagnosinformation skall hämtas. Anges ej villkoret returneras endast aktiva. | 0..1 |
| **Svar** |  |  |  |
| diagnosInformation | diagnosInformationType |  | 0..* |
| ../informationsId | II | Identitet för diagnosinformationen | 1..1 |
| ../giltighetsTid | IVL | Tid då diagnosinformationen är giltig. Starttiden i intervallet skall alltid anges. Om sluttid ej anges är diagnosinformationen aktiv. Diagnosinformation som inte är aktiv skall innehålla ett slutdatum, som ligger tidigare än aktuellt datum, eller ett startdatum som ligger senare än aktuellt datum. | 1..1 |
| ../../start | Date | Starttid | 1..1 |
| ../../slut | Date | Sluttid | 0..1 |
| ../version | Int | Versionsnummer för diagnosinformationen. Versionen räknas upp när diagnosinformationen förändrats i sin innebörd eller ändrar giltighetstid. | 1..1 |
| ../rubrik | string | Rubriken för diagnosinformationen | 1..1 |
| ../aktivitetsbegransningBeskrivning | string | En beskrivande text för aktivitetsbegränsningar förknippade med diagnosen. | 0..1 |
| ../funktionsnedsattningsBeskrivning | string | En beskrivande text för funktionsnedsättningar förknippade med diagnosen. | 0..1 |
| ../senastAndrad | dateTime | Anger när ett beslutsunderlag senast ändrats | 1..1 |
| ../huvuddiagnos | HuvuddiagnosType |  | 1..* |
| ../../varde | CVtype | Diagnos som anges med kod. (Kod för den typ av observation som avses.) Anges med ICD-10-SE kodverket. | 1..1 |
| ../aktivitetsbegransning | AktivitetsbegransningType | Innehåller information om en eller flera aktivitetsbegränsning som vanligt förekommer för den eller de diagnoser som diagnosgruppen omfattar. | 0..* |
| ../../kod | CVtype | Kod som anger Aktivitetsbegränsning | 1..1 |
| ../funktionsnedsattning | FunktionsnedsattningType | Innehåller information om en eller flera funktionsnedsättningar som vanligt förekommer för den eller de diagnoser som diagnosgruppen omfattar. | 0..* |
| ../../kod | CVtype | Kod som anger Funktionsnedsättning | 1..1 |
| ../ovrigFmbInformation | OvrigFmbInformationType |  | 0..1 |
| ../../symtomPrognosBehandling | String | Allmän information om symtom, prognos samt behandling. | 0..1 |
| ../../generellInformation | String | Information av betydelse för bedömning av behovet av sjukskrivning. | 0..1 |
| version | versionType | Versioninformation för hela FMB | 1..1 |
| ../senasteVersionsuppdatering | dateTime | Anger när diagnosinformation senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret som föranlett ett nytt datum. | 1..1 |
| ../senasteAndring | dateTime | Anger när diagnosinformation senast uppdaterades, både mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret. | 1..1 |

### Övriga regler

Inga övriga regler finns.

### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetDiagnosInformationInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetDiagnosInformationInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetDiagnosInformationResponder_1.0.xsd](files/schema/GetDiagnosInformationResponder_1.0.xsd) | Tjänstespecifikt schema |
| [processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.xsd](files/schema/processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.xsd) | Domänschema (delat) |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getdiagnosinformation](StructureDefinition-getdiagnosinformation.html)
* **Logisk modell (request):** [StructureDefinition/getdiagnosinformation-request](StructureDefinition-getdiagnosinformation-request.html)

---

## 7.3 GetVersions

### GetVersions

Tjänsten returnerar tidpunkten när fmb och diagnosinformation senast versionsuppdaterades, respektive senast ändrades.

**Version:** 1.0

### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** |  |  |  |
| _(Inga inparametrar)_ |  |  |  |
| **Svar** |  |  |  |
| versioner |  |  | 1..1 |
| ../fmbSenasteVersionsuppdatering | DateTime | Anger när ett beslutsunderlag senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret som föranlett ett nytt datum. | 1..1 |
| ../fmbSenasteAndring | DateTime | Anger när ett beslutsunderlag senast uppdaterades, både mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret. | 1..1 |
| ../diagnosInformationSenasteVersionsuppdatering | DateTime | Anger när diagnosinformation senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret som föranlett ett nytt datum. | 1..1 |
| ../diagnosInformationSenasteAndring | DateTime | Anger när diagnosinformation senast uppdaterades; både mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret. | 1..1 |

### Övriga regler

En versionsuppdatering innebär att något av de underliggande beslutsunderlagen respektive diagnosinformationen skapades, togs bort eller bytte innebörd (major release). En ändring kan vara en versionsuppdatering eller en mindre förändring av en textuell beskrivning där innebörden är oförändrad (minor release).

Genom att lagra den versionsinformation som returneras i elementet "version" i tjänsterna GetDiagnosisInformation respektive GetFMB kan en konsument därefter anropa GetVersions för att få reda på om någon information i respektive tjänst förändrats och gör endast ett anrop mot dessa tjänster om tjänsten getVersions returnerar ett nyare datum. Konsumenter kan också avgöra om man vill göra en hämtning till följd av en minor release eller endast vid major release.

Om man konsumerar tjänsterna med filterparametrar för en viss diagnos/grupp av diagnoser eller ett urval av beslutsunderlag är det inte säkert att just dessa har uppdaterats när datumen i tjänsten GetVersions uppdateras. För att avgöra det behöver frågan ställas om till respektive tjänst.

### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetVersionsInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetVersionsInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetVersionsResponder_1.0.xsd](files/schema/GetVersionsResponder_1.0.xsd) | Tjänstespecifikt schema |
| [processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.xsd](files/schema/processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.xsd) | Domänschema (delat) |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getversions](StructureDefinition-getversions.html)

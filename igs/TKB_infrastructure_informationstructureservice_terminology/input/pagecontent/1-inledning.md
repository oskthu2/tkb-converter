# 1 Inledning

Källa: *Tjänstekontraktsbeskrivning Terminologitjänst*, version PA1 (2013-10-30), [Tjanstekontraktsbeskrivning_Terminologitjanst.docx](Tjanstekontraktsbeskrivning_Terminologitjanst.docx).

### Dokumentinformation

Terminologitjänst
Tjänstekontraktsbeskrivning
Version PA1
2013-10-30
#### Revisionshistorik

| Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- |
| PA1 | 2013-10-30 | Första version för granskning | Eva Biberg, Mawell / Torbjörn Dahlin, Mawell |  |
#### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Terminologitjänst | Obligatoriskt |  |

#### Kompletterande dokument i källan

| Dokument | Fil |
|---|---|
| Arkitekturella beslut – Terminologitjänst (referens R1) | [Arkitekturella_beslut_Terminologitjanst.docx](Arkitekturella_beslut_Terminologitjanst.docx) |
| Informationsspecifikation Terminologitjänst | [Informationsspecifikation_Terminologitjanst.docx](Informationsspecifikation_Terminologitjanst.docx) |

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen infrastructure:informationstructureservice:terminology. Den svenska benämningen är ”Terminologitjänst”.
Tjänstekontraktsbeskrivningen är ett teknikoberoende, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Översikt
Kontrakten i denna domän ger tillgång till en terminologitjänst som stödjer ett modernt arbete med klassifikationer och begreppssystem så som Snomed CT. Dessa tjänster är designade för att kunna stödja dynamiska urval av begrepp och termer både för användning av andra tjänstekontrakt och för framtagande av användargränssnitt och applikationer i den nationella arkitekturen. Tjänstekontrakten ger möjlighet att ha olika termer för samma begrepp vilket skulle kunna användas för att presentera klinisk information på olika språk eller exempelvis skilja på allmänspråkliga definitioner och kliniskt fackspråk. Den bakomliggande informationsmodellen ger även möjlighet att hantera begreppsrelationer inom eller mellan olika begreppssystem. Exempelvis kan man söka sig igenom Snomed CTs begreppshierarki längs vissa typer av relationsbegrepp, eller översätta begrepp mellan olika system (exempelvis ICD-10 till Snomed CT under förutsättning att denna mappning finns tillgänglig).

### 1.2 Ordlista

| Term | Beskrivning |
| :--- | :--- |
| Terminologi | I detta dokument omfattar termen terminologi både klassifikationer (exempelvis ICD-10) och begreppssystem (exempelvis Snomed CT). |
| Term | I detta dokument används ordet ”term” i en vidare betydelse än den allmänspråkliga betydelsen. Term kan i detta fall bestå av ett ord som beskriver det avsedda begreppet, men i vissa fall krävs det flera ord för att kunna peka ut begreppet entydigt. I dessa fall avser detta dokument med ”term” då alla ord som krävs för att beskriva begreppet. |

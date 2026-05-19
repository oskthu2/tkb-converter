## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen infrastructure: eservicesupply: forminteraction. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.1

#### Oförändrade tjänstekontrakt
CancelForm
CreateForm
CreateFormRequest
GetForm
GetFormQuestionPage
GetForms
GetFormTemplates

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
DeleteFormTemplate

#### Förändrade tjänstekontrakt
GetFormTemplate
SaveForm
SaveFormPage
SaveFormTemplate
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.
Kompatibilitet mellan versionerna 1.0 och 2.x

| Tjänstekontrakt |  | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- | :--- |
| GetForms |  | 2.x | 1.0 | Ej kompatibel |
| GetForms |  | 1.0 | 2.x | Ej kompatibel |
| GetForm |  | 2.x | 1.0 | Ej kompatibel |
| GetForm |  | 1.0 | 2.x | Ej kompatibel |
| CreateForm |  | 2.x | 1.0 | Ej kompatibel |
| CreateForm |  | 1.0 | 2.x | Ej kompatibel |
| SaveFormPage |  | 2.x | 1.0 | Ej kompatibel |
| SaveFormPage |  | 1.0 | 2.x | Ej kompatibel |
| SaveForm |  | 2.x | 1.0 | Ej kompatibel |
| SaveForm |  | 1.0 | 2.x | Ej kompatibel |
| CancelForm |  | 2.x | 1.0 | OK |
| CancelForm |  | 1.0 | 2.x | OK |
| GetFormQuestionPage |  | 2.x | 1.0 | Ej kompatibel |
| GetFormQuestionPage |  | 1.0 | 2.x | Ej kompatibel |
| CreateFormRequest |  | 2.x | 1.0 | Ej kompatibel |
| CreateFormRequest |  | 1.0 | 2.x | Ej kompatibel |
| SaveFormTemplate |  | 2.x | 1.0 | Ej kompatibel |
| SaveFormTemplate |  | 1.0 | 2.x | Ej kompatibel |
| Nya kontrakt i v.2.0 |  |  |  |  |
| GetFormTemplate |  | 2.0 | - | Ny fr.o.m. 2.0 |
| GetFormTemplate |  | - | 2.0 | Ny fr.o.m. 2.0 |
| GetFormTemplates |  | 2.0 | - | Ny fr.o.m. 2.0 |
| GetFormTemplates |  | - | 2.0 | Ny fr.o.m. 2.0 |
Kompatibilitet mellan minor-versionerna 2.0 och 2.1
Konsumenter och producenter som kommunicerar med varandra och implementerar olika minor-versioner (2.0 eller 2.1) är syntaktiskt/tekniskt kompatibla med varandra. Dock påverkas kommunikationen semantiskt.
Följande behöver beaktas:

| Tjänstekontrakt | Konsument | Producent | Semantisk diskrepans |
| :--- | :--- | :--- | :--- |
| GetFormTemplate | 2.0 | 2.1 | Om formulärmallen har skapats av en 2.1 producent och innehåller media (exempelvis bilder eller videos) på formulärsidonivå (TemplatePage) eller kopplat till en grupp med frågor (TemplateQuestionBlock) kommer dessa att bli osynliga för konsumenten. / Formler för resultatberäkningar som tidigare sparats i en formulärmall av en 2.1 konsument kommer att skickas med i svaret av en 2.1 producent. Resultatberäkningarna kommer dock att vara osynliga för en 2.0 konsument. |
| GetFormTemplate | 2.1 | 2.0 | OK |
| SaveForm | 2.0 | 2.1 | Producenten kan i detta scenario inte avgöra huruvida formulärsvaren är besvarade av invånaren själv eller av vårdnadshavare eller ombud (aktör). Producent måste anta att det är invånaren själv som svarat. |
| SaveForm | 2.1 | 2.0 | Om konsumenten förmedlar en aktör i anropet kan producenten inte tillgodogöra sig det. Aktören blir osynlig för producenten. |
| SaveFormPage | 2.0 | 2.1 | Producenten kan i detta scenario inte avgöra huruvida formulärsvaren är besvarade av invånaren själv eller av vårdnadshavare eller ombud (aktör). Producent måste anta att det är invånaren själv som svarat. |
| SaveFormPage | 2.1 | 2.0 | Om konsumenten förmedlar en aktör i anropet kan producenten inte tillgodogöra sig det. Aktören blir osynlig för producenten. |
| SaveFormTemplate | 2.0 | 2.1 | OK |
| SaveFormTemplate | 2.1 | 2.0 | Konsument kommer inte att kunna spara media (exempelvis bilder eller videos) på formulärsidonivå (TemplatePage) eller kopplat till en grupp med frågor (TemplateQuestionBlock). Dessa kommer att ignoreras av producenten |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.


# 2 Generella regler - ehr: patientsummary v1.0.0

* [**Table of Contents**](toc.md)
* **2 Generella regler**

## 2 Generella regler

# 2 Generella regler

Källa: **Tjänstekontraktsbeskrivning Patientöversikt**, utgåva PA1 (2012-11-16), [Tjanstekontrakt_EHR_Patientoversikt_Beskrivning.doc](Tjanstekontrakt_EHR_Patientoversikt_Beskrivning.doc).

### 2.1 Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### 2.2 EHR-extrakt

För specifikation hur EHR-extract (ehr_extract) utformas och ska innehålla hänvisas till

* RIV Informationsspecifikation NPÖ v.2.2.0.pdf
* Kodverk_och_OIDer_i_NPÖ_version_2.3xls
* Version 2.1.3 av dokumenten 
* Meddelandestruktur__Läkemedel_NPÖ_SSEN13606
* Meddelandestruktur__Undersökningsresultat_NPÖ_SSEN13606
* Meddelandestruktur__Uppmärksamhetssignal_NPÖ_SSEN13606
* Meddelandestruktur__Vård-_och_omsorgsplan_NPÖ_SSEN13606
* Meddelandestruktur_Funktionstillstånd_NPÖ_SSEN13606
* Meddelandestruktur_Vård-_och_omsorgsdokument_NPÖ_SSEN13606
* Meddelandestruktur_Vård-_och_omsorgskontakt_NPÖ_SSEN13606
* Meddelandestruktur_Vård_-och_omsorgstjänst_NPÖ_SSEN13606
 
* Version 2.1.4 av dokumenten 
* Meddelandestruktur_Diagnos_NPÖ_SSEN13606
* Meddelandestruktur_Vård-_och_omsorgstagare_NPÖ_SSEN13606
 

Dessa dokument finns tillgängliga via Ineras NPÖ-förvaltning.

Förutom kraven i dokumentet ovan gäller följande

* Värdet för ”ehr_system” ska vara id:et för vårdsystemet (HSA-id för EHR-källsystemet)
* Ett ”rc_id” får inte innehålla mer än 50 tecken.
* Varje ”rc_id” ska vara globalt unikt och i ett extrakt måste vara unikt, vilket alltså innebär att det inte går att skicka historiska poster i samma extrakt.
* Radbrytningar, där det är applicerbart, kan anges med `&#10;`.
* Tabbar, där det är applicerbart, kan anges med `&#9;`.

### 2.3 Statusrapportering

Statusrapportering levereras genom ”response_detail”. Koder som kan användas är

* E: Fel som innebär att anropet inte kunde bearbetas och ingen information returneras.
* W: 
* För GetEhrExtract: Varning innebär att problem uppstod som kan påverka det som returneras, men åtminstone partiell information finns.
* För ReceiveEhrExtract: Varning innebär att problem uppstod vid hanteringen, men ingen information har förlorats.
 
* I: Denna typ av meddelande kan skickas oavsett hur bearbetning av anropet fungerat

Vid fel hos tjänsteproducenten ska återrapportering (genom ”response_detail”) göras och följande anges

* type_code=E
* code=INTERNAL
* text=beskrivning om felet

Om anropet till tjänsteproducenten inte följer tjänstekontraktsbeskrivningen ska återrapportering (genom ”response_detail”) göras och följande anges

* type_code=E
* code=CONTRACT
* text=beskrivning om vad i kontraktet som inte uppfylls

Om tjänsteproducenten inte har den efterfrågade informationen ska återrapportering (genom ”response_detail”) göras och följande anges

* type_code=I
* code=NOINSTANCE
* text=”Patientinformation saknas” (eller motsvarande text)

Om tjänsteproducenten för tillfället inte är tillgänglig, t.ex. på grund av tillfälligt servicefönster, ska återrapportering (genom ”response_detail”) göras och följande anges

* type_code=I
* code=SERVICE_TEMPORARILY_UNAVAILABLE
* text=”Tjänsten är för tillfället inte tillgänglig” (eller motsvarande text)

För exempel hänvisas till XML-filer som finns i paketeringen av den här tjänsten.

### 2.4 Adressering kopplat till EngagemangsIndex

Om ett system vill dela patientinformation med hjälp av GetEhrExtract ska indexpost(er) i EngagemangsIndex först skapas. Den logiska adressen i en sådan indexpost ska ha samma värde som ”ehr_system” i svaret från GetEhrExtract.

Om information delas genom tjänsten ReceiveEhrExtract och den delade informationen ska vara åtkomlig genom tjänsten GetEhrExtract gäller liknande regler för indexpost/ehr_system/EngagemangsIndex. Exempel: Ett källsystem lagrar sin information i NPÖ genom tjänsten ReceiveEhrSystem. NPÖ skapar då indexpost(er) i EngagemangsIndex och den logiska adressen i indexpost(erna) sätts till värdet för ”ehr_system” (hämtas ur innehållet i anropet till ReceiveEhrExtract). Tjänsteplattformen konfigureras (för logisk adress lika med skickat ”ehr_system”) att dirigera anropen GetEhrExtract till NPÖ.

Om värdet för ”ehr_system” av någon anledning behöver ändras måste EngagemangsIndex uppdateras. (Observera att en ändring av ”ehr_system” därmed direkt påverkar vilken logisk adress som används vid anrop till GetEhrExtract, vilket får konsekvenser för dirigeringen i tjänsteplattformen.)


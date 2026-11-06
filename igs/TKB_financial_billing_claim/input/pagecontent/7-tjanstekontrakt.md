# 7 Tjänstekontrakt

Källa: *Tjänstekontraktsbeskrivning Utomlänsfakturering*, version 1.1 (2025-10-13), [TKB_financial_billing_claim.docx](TKB_financial_billing_claim.docx).

Motsvarar TKB kapitel 6 *Tjänstekontrakt* (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### ProcessClaimSpecification

Tjänstekontraktet ProcessClaimSpecification används för att skicka fakturaunderlag då fakturering ska göras från en patients vårdregion till patientens hemregion.

Fakturan skapas vid sidan om, i ett ekonomisystem, och innehåller inga patientuppgifter utan dessa finns angivna i fakturaunderlaget. Fakturan innehåller en referens till fakturaunderlaget för att hålla ihop dem.

Tjänstekontraktet används även vid kreditering av fakturaunderlag (som görs vid felaktig faktura och/eller felaktigt fakturaunderlag).

#### 7.1.1 Version

1.1

#### 7.1.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn” med fotnot ². Dessa schematronregler beskrivs mer i detalj i kapitlet ”Övriga regler” nedan.

I beskrivningen anges det namn på klass/attribut som används i meddelandemodellen med fet stil. Olika färgkoder på raderna betyder:

| en till en (1..1,), |
| :--- |
| noll eller en till många (0..*, 1..*) |

Angivelse om fältet är obligatoriskt, obligatoriskt under nämnda förutsättningar, frivilligt, ska bli obligatoriskt senast 20xx-01, ska bli obligatoriskt under nämnda förutsättningar senast 20xx-01 anges i kolumnen Beskrivning. Med 20xx-01 menas att datumet när dessa uppgifter måste lämnas i fakturaunderlaget ännu inte är beslutat. Flera regioner har meddelat att det finns en omställningstid innan dessa uppgifter kan lämnas.

##### 7.1.2.1 Begäran

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| processClaimSpecification | processClaimSpecificationType | Fakturaunderlag vård |  |
| id ² | string | Fakturaunderlag vård, id<br/>En unik identitet som används för att identifiera fakturabilaga vid fakturering av utomläns vård.<br/>Prefixet (ZVF) finns för att underlätta skanning av fakturabilagans id.<br/>Kodens uppbyggnad: prefix, organisationsnummer, datum samt en räknare med 999999 möjligheter.<br/>ZVF1234567890ÅÅMMNNNNNN.<br/>Obligatoriskt. | 1..1 |
| issueDate | DateType | Fakturaunderlag vård, datum<br/>Datum då fakturaunderlag för vård skapades.<br/>Obligatoriskt. | 1..1 |
| issueTime | TimeStampType | Fakturaunderlag vård, tid<br/>Tidpunkt då fakturaunderlag för vård skapades.<br/>Frivillig uppgift. | 0..1 |
| typeOfInvoice ² | string | Fakturatyp<br/>Kod som identifierar typ av faktura.<br/>Kod enligt Svefaktura och SFTIs övriga fakturor.<br/>380=Faktura<br/>381=Kreditnota<br/>Obligatoriskt. | 1..1 |
| invoiceId | String | Fakturanummer<br/>Varje ny faktura ska ges en unik identitet. Numret bör vara unikt under hela arkiveringsperioden.<br/>Fakturanumret ska vara utan mellanslag och bindestreck.<br/>För att ge ett dokument en unik identitet kan GDTI användas. GDTI (GS1-dokumentidentitet, Global<br/>Document Type Identifier) är ett alfanumeriskt fält som innehåller från 14 upp till 30 siffror. Antal positioner enligt standard SFTI E-handel.<br/>Ett unikt nummer som används för att identifiera fakturan.<br/>Frivillig uppgift. | 0..1 |
| invoiceDateOfIssue | DateType | Fakturadatum<br/>Datum när fakturan utfärdades.<br/>Frivillig uppgift. | 0..1 |
| referenceToInvoice | string | Referens till faktura<br/>Används vid kreditering för att referera till den faktura som ska krediteras.<br/>Referensen anges med fakturans unika identitet (fakturanumret).<br/>Ska lämnas när fakturan är en kreditfaktura.<br/>Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| referenceToProcessClaimSpecificationId ² | string | Referens till fakturaunderlag vård id<br/>Vid kreditering av poster på kreditfaktura ska en referens anges till det id som finns på<br/>originalfakturans fakturaunderlag.<br/>Obligatoriskt när fakturan är en kreditfaktura. | 0..1 |
| payableAmount ² | AmountType | Fakturabelopp<br/>Total debitering avseende en faktura och i enlighet med<br/>leveransvillkoren.<br/>Obligatoriskt. | 1..1 |
| ../amount | decimal | Belopp<br/>Beloppet ska vara exakt samma belopp som på fakturan.<br/>Obligatoriskt. | 1..1 |
| ../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217”<br/>Obligatoriskt. | 1..1 |
| unspecified | UnspecifiedType | Ospecificerat<br/>Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.<br/>Frivillig uppgift. | 0..* |
| ../text | string |  | 1..1 |
| ../type | string |  | 0..1 |
| supplierParty | SupplierPartyType | Leverantör<br/>Obligatoriskt. | 1..1 |
| ../identification ² | IIType | Leverantörens identitet<br/>Identiteten ska kunna härledas till motsvarande namn, adress mm under hela den föreskrivna arkiveringstiden.<br/>Identitet för part som definieras som juridisk säljare enligt ett kommersiellt avtal.<br/>root:<br/>Organisationsnummer= 1.3.7<br/>GLN-nummer = 2.51.1.6<br/>extension:<br/>organisationsnumret eller GLN-numret<br/>Obligatoriskt med organisationsnummer.<br/>GLN-nummer kan även finnas med som frivillig identitet. | 1..2 |
| ../sellerContact | ContactType | Leverantörens kontaktuppgifter<br/>Frivillig uppgift. | 0..1 |
| ../../name | string | Namn på person eller avdelning som avser kontakt för leverantör.<br/>Frivillig uppgift. | 0..1 |
| ../../telephone | string | Leverantörens telefonnummer<br/>Telefonnummer oredigerat.<br/>Frivillig uppgift. | 0..1 |
| ../../electronicMail | string | Leverantörens epost<br/>Adress till ett e-postkonto.<br/>Frivillig uppgift. | 0..1 |
| customerParty | CustomerPartyType | Köpare | 1..1 |
| ../identification ² | IIType | Köparens identitet<br/>Identiteten ska kunna härledas till motsvarande namn,<br/>adress mm under hela den föreskrivna arkiveringstiden.<br/>Identitet för part som definieras som juridisk köpare<br/>enligt ett kommersiellt avtal.<br/>root:<br/>Organisationsnummer= 1.3.7<br/>GLN-nummer =2.51.1.6<br/>extension:<br/>organisationsnumret eller GLN-numret<br/>Obligatoriskt med organisationsnummer.<br/>GLN-nummer kan även finnas med som frivillig identitet. | 1..2 |
| ../buyerContact | ContactType | Köparens kontaktuppgifter<br/>Frivillig uppgift. | 0..1 |
| ../../name | string | Namn på person eller avdelning som avser kontakt för köpare.<br/>Frivillig uppgift. | 0..1 |
| ../../telephone | string | Köparens telefonnummer<br/>Telefonnummer oredigerat.<br/>Frivillig uppgift. | 0..1 |
| ../../electronicMail | string | Köparens epost<br/>Adress till ett e-postkonto.<br/>Frivillig uppgift. | 0..1 |
| healthcareServicesSpecificationLine | HealthcareServicesSpecificationLineType | Fakturaunderlag vård, rad | 0..* |
| ../patientInformation | PatientInformationType | Patient | 1..1 |
| ../../patientIdentity | IIType | Patient id<br/>Personnummer, samordningsnummer eller reservnummer ska anges.<br/>Personnummer och samordningsnummer enligt den svenska folkbokföringen.<br/>root<br/>personnummer=“1.2.752.129.2.1.3.1”<br/>samordningsnummer=<br/>”1.2.752.129.2.1.3.3”<br/>reservnummer=<br/>lokal reservnummer oid (ex. SLL: 1.2.752.97.3.1.3) alt. organisationsnummer om lokal reservnummer oid ej finns.<br/>extension<br/>Person- samordnings- eller reservnumret<br/>Format:<br/>Personnummer: ÅÅÅÅMMDDNNNN<br/>Samordningsnr.: ÅÅÅÅMMDDNNNN<br/>Lokala reservnummer=Olika format för varje region och därmed krav på flexibel hantering.<br/>Nationellt reservnummer: XXYYMMDDNNGC<br/>Obligatoriskt fält. | 1..1 |
| ../../patientOtherInformation |  | Patient, övrig information | 1..1 |
| ../../../county ² | CVType | Länskod<br/>Koden avser det län där patientens folkbokföringsadress<br/>finns.  Avser patientens folkbokförings län vid<br/>vårdkontakten enligt förteckningen ”Rikets indelningar”<br/>utgiven av Statistiska Centralbyrån (SCB).<br/>För asylsökande sätts code till 99 och codeSystem utelämnas.<br/>code: Enligt SCB, 2 siffror<br/>codeSystem: 1.2.752.129.2.2.1.18<br/>Obligatoriskt. | 1..1 |
| ../../../municipality ² | CVType | Kommunkod<br/>Koden avser den kommun där patientens folkbokföringsadress finns.  Avser patientens folkbokföringskommun vid vårdkontakten enligt förteckningen ”Rikets indelningar” utgiven av Statistiska Centralbyrån (SCB).<br/>För asylsökande sätts 9901 (i kombination med länskod 99) och codeSystem utelämnas.<br/>code: Enligt SCB, 4 siffror<br/>codesystem: 1.2.752.129.2.2.1.17<br/>Obligatoriskt. | 1..1 |
| ../../../listingLocalAuthoritiesNumber ² | IIType | Listningsregion<br/>HSA-id för patientens listningsregion. Anges i de fall patienten är utomlänspatient och listad i den vårdande regionen.<br/>Ska bli obligatoriskt fält under nämnda förutsättningar senast<br/>20xx-01.<br/>root: 1.2.752.129.2.1.4.1 | 0..1 |
| ../../../LMACardNumber | String | LMA kortnummer<br/>Identitet på LMA-kort som används av asylsökande. Migrationsverkets dossiernummer vilket är unikt för varje individ.<br/>Format: XXXXXXXX (8 siffror).<br/>Ska ifyllas när debitering<br/>sker av asylsökande mellan regioner.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../gender ² | CVType | Kön<br/>Patientens kön enligt skatteverket.<br/>Kategorisering enligt Socialstyrelsen och ISO 5218.<br/>code:<br/>0=Okänt.<br/>1=Man.<br/>2=Kvinna.<br/>9=Obestämt.<br/>codesystem: ”1.2.752.129.2.2.1.1”<br/>Frivillig uppgift. | 0..1 |
| ../../../EUCardNumber | String | EU-kortets nummer<br/>Kort för EU-medborgare som berättigar till vård enligt nationell prislista. (för hantering mot privata vårdgivare)<br/>Identitet på EU-kort.<br/>Format (exempel 20 tecken): XXXXXXXXXXXXXXXXXXXX<br/>Frivillig uppgift. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat<br/>Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.<br/>Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../healthcarePerformed | HealthcarePerformedType | Vårdinsats | 1..* |
| ../../lineId | positiveInteger | Post id vårdinsats<br/>Löpande numrering av vårdinsatser inom en faktura.<br/>Radnummer ska vara ett löpnummer i stigande ordning.<br/>Ex 1, 2, 3, 4 osv Alt 10, 20, 30, …<br/>Vid kreditering används detta fält som referens eftersom vårdkontaktsid ej är obligatoriskt.<br/>Obligatoriskt. | 1..1 |
| ../../careContactId ² | string | Vårdkontakts-id<br/>En unik identitet på besöket/vårdkontakten.<br/>Hämtas ofta från journalsystemet. Via koden kan samtliga fakturor identifieras som skett på en vårdkontakt.<br/>Ska alltid anges inom sluten vård.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../referenceToLineId | positiveInteger | Referens till PostId Vårdinsats<br/>Vid kreditering av poster på kreditfaktura ska en referens<br/>anges till det radnummer som finns på vårdkontakterna på originalfakturans fakturaunderlag.<br/>Ska lämnas när fakturan är en kreditfaktura.<br/>Några regioner behöver en omställningstid innan denna uppgift kan ifyllas (Uppföljning sker inom nätverksgruppen).<br/>Ska bli obligatorisk under nämnda förutsättningar senast<br/>20xx-01. | 0..1 |
| ../../reasonForCredit ² | string | Orsak till kreditering<br/>Kod för olika orsaker till kreditering. Anges vid kreditering.<br/>Denna uppgift underlättar hur köpande region ska hantera kreditinformationen i uppföljningssystem och vårddatabas. Anges för kreditfakturor.<br/>Ska bli obligatorisk under nämnda förutsättningar senast 20xx-01.<br/>Koder:<br/>1= Kreditering då debiterad patient inte tillhör den region som fakturerats. Exempel: En patient faktureras som har flyttat från den region som fått fakturan innan vården har skett.<br/>2=Kreditering av en transaktion där priset är fel angivit. Exempel. Det har blivit fel pris fakturerat på en behandling som ska faktureras enligt DRG. Den debiterade vårdinsatsen krediteras i sin helhet och ersätts med en ny fakturering.<br/>3=Kreditering av en transaktion där det är fel produkt. Exempel: Det har blivit fel pris på grund av att det medicinska underlaget är fel och därmed har fel DRG-kod fakturerats. Den debiterade vårdinsatsen krediteras i sin helhet och ersätts med en ny fakturering.<br/>4=Kreditering av en transaktion på grund av att det skett en delfakturering tidigare. Exempel: Det sker en löpande patientspecifik debitering i avvaktan på att en DRG-kod fastställs för vårdkontakten. Kreditering sker av tidigare fakturerade patientspecifika debiteringar och ersätts med ny faktura för fastställd DRG-kod. (Rutin för delfakturering regleras i samverkansavtalen) Se även not nedan.<br/>5=Kreditering av en transaktion där vård har skett av en annan region utan att det funnits en giltig remiss/betalningsförbindelse. Exempel: En region har vårdat en patient inom den slutna vården utan att det har funnits en giltig remiss/betalningsförbindelse. I detta fall kan den region där patienten är skriven neka att betala denna vård och därmed behöver vårdinsatsen krediteras.<br/>6=Kreditering av en felaktig transaktion då vårdkontakten har fakturerats sex månader efter vårdens tidpunkt.  Exempel: En faktura på en debiterad vårdkontakt skickas från den behandlande regionen senare än 6 månader efter tidpunkt för vården. Riksavtalet ger då möjlighet för köpande region att få denna krediterad.<br/>7=Kreditering av en transaktion där dubbelfakturering skett. Exempel: En vårdkontakt har fakturerats dubbelt. Det dubbelt debiterade vården krediteras.<br/>8=Kreditering av en felaktig transaktion då vårdkontakten har fakturerats datummässigt tidigare än behandlingsdatum. Exempel: En faktura på en debiterad vårdkontakt har besöksdatum/inskrivningsdatum efter fakturadatum.  Fakturan är ex skickad den 15 maj 2016 och vården är relaterad till den 20 maj.<br/>9=Kreditering då fakturering har skett av ett besök eller en åtgärd som inte är debiteringsbar. Exempel: En telefonrådgivning har debiterats vilket inte är debiteringsbart enligt riksavtalet.<br/>Not: Se punkt 4: I samband med debitering av vårddagar för en patient som ligger inlagd i sluten vård vid ett månadsbryt ska en månads debitering av vårddagar ske på en unik faktura när delfakturering sker. (Rutin för delfakturering regleras ofta i samverkansavtalen) Samtliga månaders debitering av en vårdkontakt i hålls samman av samma Vårdkontakts-id. Ingen kreditering ska ske. | 0..1 |
| ../../unspecified | UnspecifiedType | Ospecificerat<br/>Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.<br/>Frivillig uppgift. | 0..* |
| ../../../text | string |  | 1..1 |
| ../../../type | string |  | 0..1 |
| ../../paymentCommitment | PaymentCommitmentType | Betalningsförbindelse | 0..1 |
| ../../../remittanceNumber | string | Remiss-id<br/>Remissens ursprungliga remiss-id.<br/>Uppgiften lämnas när en remiss finns.<br/>Ska bli obligatoriskt fält under nämnda förutsättningar senast<br/>20xx-01. | 0..1 |
| ../../../paymentCommitmentNumber | string | Betalningsförbindelse-id<br/>Ursprunglig identitet för betalningsförbindelse.<br/>Uppgiften lämnas när en remiss finns.<br/>Ska bli obligatoriskt fält under nämnda förutsättningar senast<br/>20xx-01. | 0..1 |
| ../../../typeOfAgreement ² | string | Betalningsförbindelsetyp avtal<br/>Anger den typ av avtal enligt Riksavtalet som reglerar betalningen.<br/>Uppgiften lämnas när en remiss finns.<br/>1=Riksavtal<br/>2=Regionavtal<br/>3=Mellanlänsavtal<br/>Observera att kodverket kv_betalningsförbindelsetyp avtal (Oid 1.2.752.129.2.2.2.44) förvaltas inom domänen Remisshantering. Eventuella behov av korrigeringar ska kommuniceras med dem.<br/>Ska bli obligatoriskt fält under nämnda förutsättningar senast<br/>20xx-01. | 0..1 |
| ../../../typeOfChapter ² | string | Betalningsförbindelsetyp kapitel<br/>Anger kodifiering utifrån Riksavtalets kapitel som reglerar betalning.<br/>Uppgiften lämnas när en remiss finns.<br/>1=Kapitel 2 Vård efter initiativ från hemregionen<br/>2=Kapitel 2 Vårdgaranti<br/>3=Kapitel 3 Akutvård<br/>4=Kapitel 4 Patientens val<br/>5=Kapitel 5 Medicinsk service<br/>6=Kapitel 6 Hjälpmedel<br/>7=Kapitel 7 Transporter och resor<br/>Observera att kodverket kv_ betalningsförbindelsetyp kapitel (Oid 1.2.752.129.5.1.37) förvaltas inom domänen Remisshantering. Eventuella behov av korrigeringar ska kommuniceras med dem.<br/>Ska bli obligatoriskt fält under nämnda förutsättningar senast<br/>20xx-01. | 0..1 |
| ../../../agreementInRiksavtalet | string | Avtalspost i Riksavtalet<br/>Kapitel och punkt som avses i Riksavtalet.<br/>Fältet ifylls endast i de fall vården har utförts utan remiss men med stöd av särskilt kapitel och avsnitt i Riksavtalet.<br/>Giltiga värden:<br/>3.1= Kap 3.1 Akut- och förlossningsvård<br/>3.2 = Kap 3.2 Vård av vissa patienter<br/>4.1 = Kapitel 4.1 Öppen vård utan krav på remiss<br/>4.3 = Kapitel 4.3 Hemsjukvård<br/>4.4 = Kapitel 4.4 Abort<br/>Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| ../../../typeOfReimbursement ² | string | Betalningsförbindelse, ersättningstyp<br/>Anger ersättningstyp. Uppgiften lämnas när en remiss finns.<br/>1=Ersättning från patientens hemregion enligt reglerna i Riksavtalet.<br/>2=Ersättning från patientens<br/>hemregion enligt hemregionens kontrakt med vårdgivaren.<br/>Ska bli obligatoriskt fält under nämnda förutsättningar senast<br/>20xx-01. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat<br/>Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.<br/>Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../healthcareCategory | HealthcareCategoryType | Vårdkategori | 1..1 |
| ../../../ typeOfCare2 | CVType | Vård- och omsorgsform<br/>Kategorisering av öppen respektive sluten vård enligt Socialstyrelsens termbank. Sluten vård är hälso-och sjukvård när den ges till patient vars tillstånd kräver<br/>resurser som inte kan tillgodoses inom öppen vård eller hemsjukvård.<br/>Öppen vård bedrivs i allmänhet under dagtid. Vid behov av övernattning leder det i regel till inskrivning i sluten<br/>vård.<br/>Sluten vård bedrivs dygnet runt och kräver inskrivning. Öppen vård är hälso-och sjukvård när den ges till patient vars tillstånd medger att aktuell vårdinsats förväntas avslutas inom ett begränsat antal timmar.<br/>Urval ur HSA kodverk ”Vård- och omsorgsform”<br/>code:<br/>01=öppenvård<br/>02=slutenvård<br/>codeSystem: ”1.2.752.29.4.16”<br/>Obligatoriskt. | 1..1 |
| ../../../publicCare | boolean | Offentlig vård<br/>Offentlig eller privat vård.<br/>Offentlig vård är vård som är offentligt finansierad och bedrivs av region/kommun.<br/>Privat vård är vård som är offentligt finansierad och bedrivs av privat vårdgivare.<br/>true = offentlig vård<br/>false = privat vård<br/>Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../plannedHealthcare | boolean | Planerad vård<br/>Kategorisering enligt Socialstyrelsens termbank.<br/>Definitioner:<br/>Oplanerat vårdtillfälle: vårdtillfälle för vilket tid inte har avtalats<br/>Oplanerat öppenvårdsbesök: öppenvårdsbesök för vilket tid inte har avtalats<br/>Planerat vårdtillfälle: vårdtillfälle för vilket tid har avtalats<br/>Planerat öppenvårdsbesök: öppenvårdsbesök för vilket tid har avtalats<br/>true = planerad vård<br/>false = ej planerad vård<br/>Obligatoriskt. | 1..1 |
| ../../../typeOfVisit ² | string | Typ av besök<br/>1 = nybesök<br/>2 = återbesök<br/>Telefonrådgivning kategoriseras som återbesök.<br/>Med nybesök avses enligt Socialstyrelsens termbank<br/>besök som inte har medicinskt samband med tidigare besök vid samma vårdcentral, klinik eller motsvarande.<br/>Vid ett återbesök finns ett medicinskt samband.<br/>Frivillig uppgift. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat<br/>Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.<br/>Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../timespan | TimespanType | Tidsomfång | 1..1 |
| ../../../healthcareVisitDateTime | HealthcareVisitDateTimeType | Besökstid | 1..1 |
| ../../../../careVisitDate ² | DateType | Inskrivnings- eller besöksdatum för vård<br/>Besöksdatum för fakturerat besök/vårdkontakt.<br/>Obligatorisk vid öppen vård. Patientens<br/>inskrivningsdatum. Obligatorisk vid sluten vård.<br/>Format: ÅÅÅÅMMDD<br/>Obligatoriskt fält. | 1..1 |
| ../../../../careVisitTime | TimeStampType | Inskrivnings- eller besökstid<br/>Exakt tid, timme och minut när inskrivning/besöket skedde. För att få tydlighet i en persons vårdkonsumtion<br/>på en dag.<br/>Format: ÅÅÅÅMMDDttmmss<br/>Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../ healthcareDischargeDateTime | HealthcareDischargeDateTimeType | Utskrivningsdatum och tid<br/>Patientens utskrivningsdag och tidpunkt.<br/>Obligatoriskt fält vid sluten vård när patienten har blivit utskriven.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../careDischargeDate ² | DateType | Utskrivningsdatum från vård<br/>I de fall det är en delfakturering för en<br/>inneliggande patient ska detta fält vara blankt.<br/>Format: ÅÅÅÅMMDD<br/>Obligatoriskt. | 1..1 |
| ../../../../careDischargeTime | TimeStampType | Utskrivningstid<br/>Exakt tid, timme och minut när utskrivning skedde. För att få tydlighet i en persons vårdkonsumtion på en dag.<br/>Ifylla vid utskrivning från sluten vård.<br/>Format: ÅÅÅÅMMDDttmmss<br/>Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| ../../../invoicePeriod ² | DatePeriodType | Fakturaperiod<br/>Periodens startdatum:<br/>Startdatum för en period i samband med delfakturering.<br/>Ex i samband med att en patient vårdas över månadsgräns.<br/>Periodens slutdatum:<br/>Slutdatum för en period i samband med delfakturering.<br/>Ex i samband med att patient vårdas över månadsgräns.<br/>Format för både start och end: ÅÅÅÅMMDD<br/>Ifylls när delfakturering sker utifrån samverkansavtal m.m.<br/>Om fakturaperiod anges krävs ingen diagnoskod i sluten vård.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../numberOfDays | NumberOfDaysType | Antal dagar | 0..1 |
| ../../../../onLeave | positiveInteger | Antalet permissionsdagar<br/>Fältet ifylls endast vid sluten vård och avser det antal permissionsdagar som en patient haft under vårdtillfället.<br/>Avser antalet permissionsdagar som ingår i ett vårdtillfälle om patienten haft permission.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../inCare | positiveInteger | Antal vårddagar<br/>Det antal vårddagar som kostnaden debiteras för.<br/>Permissionsdagar ska vara frånräknade.<br/>När in- och utskrivning sker samma dag räknas vårdtiden som en dag.<br/>Ska alltid ifyllas vid sluten vård.<br/>Fältet ifylls även om inte vårddagskostnad debiteras ex vid DRG-debitering.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../healthcareUnit | HealthcareUnitType | Vårdenhet | 1..1 |
| ../../../careUnitId | II | Id<br/>Vårdenhetens identitet<br/>Identitet på den vårdenhet som har utfört, alternativt är medicinskt ansvarig för, den vård som en patient har erhållit. Det är HSA-id för vårdenheten som ska anges. Anges i formatet: SEorganisationsnummer-kod.<br/>root<br/>“1.2.752.129.2.1.4.1”<br/>extension<br/>Exempel SE2321000115-094882.<br/>Ska bli obligatoriskt senast 20xx-01. | 0..1 |
| ../../../careUnitName | string | Namn<br/>Namnet på vårdenheten som utfört vården.<br/>En vårdenhet är en organisatorisk enhet som tillhandahåller hälso- och<br/>sjukvård. Rekommenderas att namnsättning sker enligt<br/>HSA-id. I de fall HSA-id kod anges ska alltid namnsättningen följa koden.<br/>Obligatorisk. | 1..1 |
| ../../../professionCodeForHealthcare ² | string | Yrkeskod<br/>Yrkeskod för hälso- och sjukvårdspersonal som utfört behandlingen.<br/>Yrkeskod ska anges enligt kodverk Kv yrkeskod, OID 1.2.752.129.5.1.29.<br/>Kodverket följer Socialstyrelsens hosp-yrkeskoder men kompletteras med:<br/>Undersköterska (US),<br/>Teampersonal inkl. läkarmedverkan (TP), Teampersonal utan läkarmedverkan (TO), Övrig personal (OV).<br/>Uppgiften ska lämnas inom öppen vård.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat<br/>Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.<br/>Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../categorization | CategorizationType | Kategorisering | 0..1 |
| ../../../productCategory ² | string | Produktkategori<br/>Kategorisering för typ av prissättning/avgift.<br/>Används för att kunna kategorisera olika typer av debiteringar.<br/>01=DRG-kod CC-kod för Nord-DRG.<br/>02 =DRG-kod för Nord DRG.<br/>03= Patientspecifikt.<br/>04=Kontaktersättning.<br/>99= Övrigt<br/>Ska bli obligatoriskt senast 20xx-01. | 0..1 |
| ../../../priceList ² | string | Prislista kod<br/>Kod för typ av prislista.<br/>En gemensam kodifiering av aktuella samverkansavtal tas fram. Ifylls när faktureringen följer aktuellt samverkansavtal.<br/>Följande avtal finns:<br/>1. Norra Sverige<br/>2. Uppsala/Örebro<br/>3. Stockholm/Gotland<br/>4. Sydöstra Sverige<br/>5. Västra Sverige<br/>6. Södra Sverige<br/>Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| ../../../DRGCost | DRGCostType | DRG-kostnad<br/>Minst en av DRG-kostnad eller Patient specifik åtgärd (se nedan) måste anges. | 0..1 |
| ../../../../DRGCode | CVType | DRG produktkod<br/>Debiterad DRG-kod<br/>Enbart kod enligt DRG sätts i elementet originalText. Koden innehåller fyra tecken, ingen förklarande text skickas i elementet.<br/>Ska ifyllas när debiteringen avser pris för DRG.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../DRGPrice | AmounType | DRG pris<br/>DRG-pris enligt prislista.<br/>Det finns olika prislistor beroende på vilket avtal som fakturering sker från.<br/>Uppgiften ifylls när vårdinsatsens debitering avser fakturering enligt DRG-priser.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../../extendedAllowanceCareTime | AmountType | Ytterfallsersättning, vårdtid<br/>Ytterfallsersättning för den tid patienten har vårdats.<br/>Belopp för ytterfallsersättning, vårdtid<br/>Om vårdtiden avviker mot prislistans framräknade trimgräns/ytterfallsgräns kan ytterfallsersättning debiteras enligt avtal. När detta ska ske är reglerat i samverkansavtalen.<br/>Ofta faktureras detta på egen<br/>faktura. Det är viktigt att korrekt vårdkontakts-id anges dvs samma id som vid fakturerad vårdkontakt.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser.<br/>Exempel:<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../../extendedAllowanceCost | AmountType | Ytterfallsersättning, kostnad<br/>Ytterfallsersättning för höga kostnader utöver patientens vårdtid. Belopp för ytterfallsersättning, kostnad.<br/>Om kostnaden avviker mot prislistans  framräknade trimgräns/ytterfallsgräns kan ytterfallsersättning debiteras enligt avtal. När detta ska ske är reglerat i samverkansavtalen.<br/>Ofta faktureras detta på egen<br/>faktura. Det är viktigt att korrekt vårdkontakts-id anges dvs samma id som vid fakturerad vårdkontakt.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientSpecificCare | PatientSpecificCareType | Patient specifik åtgärd<br/>Minst en av Patient specifik åtgärd eller DRG-kostnad (se ovan) måste anges.<br/>Patientspecifika åtgärder enligt särskilda prislistor. Det kan förekomma ett flertal patientspecifika åtgärder<br/>kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. För varje åtgärd ska ett pris anges.<br/>Debitering av vårddagskostnader, besök, mm ska även framgå här. | 0..* |
| ../../../../patientSpecificCareCode | string | Typ av patient specifik åtgärd<br/>Kod när debiteringen avser patientspecifika åtgärder, besök, vårddagar mm.<br/>Uppgiften ifylls när vårdinsatsens debitering inte avser fakturering enligt DRG-priser.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../patientSpecificCareCodeName | string | Patientspecifik åtgärd, namn<br/>Namn för patientspecifik åtgärd när kod för patientspecifik åtgärd har registrerats.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../numberOfPatientSpecificCare | integer | Antal patientspecifik åtgärd<br/>Antalsuppgifter för patientspecifika åtgärder, vårddagar,<br/>besök mm. Antalet åtgärder, vårddagar mm som debiteringen innehåller.<br/>Ifylls alltid i samband med patientspecifik debitering.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../patientSpecificCarePrice | AmountType | Patientspecifik åtgärd, pris<br/>Pris för patientspecifika åtgärder enligt särskilda prislistor när inte debiteringen sker utifrån DRG-priser.<br/>Det kan förekomma ett flertal patientspecifika åtgärder kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. För varje åtgärd ska ett pris anges.<br/>Även belopp för vårddagskostnad, besök mm anges här.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../../patientSpecificCareTotalAmount ² | AmountType | Patientspecifik åtgärd, totalbelopp<br/>Totalbelopp för Patientspecifik åtgärd när detta har debiterats.<br/>Ifylls alltid i samband med patientspecifik debitering.<br/>Pris för patientspecifika åtgärder enligt särskilda prislistor. Det kan förekomma ett flertal patientspecifika åtgärder kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen.<br/>Även belopp för den totala vårddags-kostnaden, besökskostnaden anges här.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../../unspecified | UnspecifiedType | Ospecificerat<br/>Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.<br/>Frivillig uppgift. | 0..* |
| ../../../../../text | string |  | 1..1 |
| ../../../../../type | string |  | 0..1 |
| ../../invoicedAmountDetails | InvoicedAmountDetailsType | Fakturerat | 1..1 |
| ../../../patientCareInvoiceGrossAmount ² | AmountType | Patient vårdkontakt, fakturerat belopp brutto<br/>Fakturerat bruttobelopp för vårdinsats.<br/>Belopp efter avdrag av patientavgift. Om fakturerad vårdinsats avser patientspecifika åtgärder ska beloppet<br/>motsvara samtliga detaljrader för patientspecifika priser.<br/>Formel: ”DRG-pris”+”Ytterfallsersättning,<br/>vårdtid”+”Ytterfallsersättning, kostnad” + alla ”Patientspecifik åtgärd, totalbelopp”–”Patientavgift erlagd<br/>öppenvård”.<br/>Samtliga belopp presenteras positivt i filen.<br/>I de flesta fall är det tomt i ett av fälten DRG-pris eller Patientspecifik<br/>åtgärd, totalbelopp.<br/>OBS! I vissa samverkansavtal ska<br/>inte Patientavgift erlagd öppenvård reducera priset.<br/>Obligatoriskt fält. | 1..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientCareInvoiceNetAmount ² | AmountType | Patient vårdkontakt, fakturerat belopp netto<br/>Fakturerat bruttobelopp för vårdinsats netto.<br/>Fakturerat belopp efter avdrag/rabatter. Summan av kolumnen ska stämma med fakturerat belopp enl<br/>fakturan. Om fakturan avser patientspecifika åtgärder<br/>ska fakturerad vårdinsats motsvara samtliga detaljrader<br/>för patientspecifika priser<br/>Formel: ”Patient vårdkontakt, fakturerat belopp<br/>brutto”+”Patient vårdkontakt, påslag/avgifter”-”Patient<br/>vårdkontakt, avdrag 6 % momskompensation”-”Patient<br/>vårdkontakt, rabatt”.<br/>Samtliga belopp presenteras positivt i filen. Vilka uppgifter som ifylls beror på vilket samverkansavtal fakturering sker efter.<br/>Obligatoriskt fält. | 1..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientCareAllowance | AmountType | Patient vårdkontakt, avdrag 6 % momskompensation<br/>Avdrag (momskompensation) för 6 % moms som säljaren kan söka statsbidrag för vid köp från privat<br/>vårdgivare. Ifylls endast vid privat vård och detta är reglerat i samverkansavtal.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientCareDiscount | AmountType | Patient vårdkontakt, rabatt<br/>I fältet ska anges belopp för rabatt i de fall detta finns. Rabatter regleras i samverkansavtalen.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: 1.0.4217 | 1..1 |
| ../../../patientCareCharge | AmountType | Patient vårdtillfälle, påslag och avgifter<br/>I fältet ska anges påslag för avgifter mm i det fall detta finns. Påslag/avgifter regleras i samverkansavtalen.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../outPatientCareFee | AmountType | Patientavgift öppenvård<br/>Patientavgiften för öppenvård enligt vårdande regions prislista.<br/>Information om vilken patientavgift som är beslutad för aktuell debitering. Kan anges om beloppet avviker från<br/>Patientavgift erlagd öppenvård.<br/>Fältet är frivillig uppgift. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../outPatientCareFeePaid | AmountType | Patientavgift erlagd öppenvård<br/>Patientavgift för öppenvård som erlagts av patienten.<br/>Den del som patienten betalt. Beloppet kan avvika<br/>jämfört med fältet ”Patientavgift öppenvård” pga frikort<br/>mm.<br/>Ska endast ifyllas när patientavgiften påverkar fakturerat belopp.<br/>När uppgift ska lämnas styrs av de olika samverkansavtalen.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientFeeReducedCategory ² | string | Patientavgift nedsatt, kategori<br/>Kategorisering av varför patient inte betalar full avgift. Ska endast lämnas när patientavgiften påverkar priset<br/>enligt prislista.<br/>Detta regleras i samverkansavtalen.<br/>Giltiga koder:<br/>01=Frikort<br/>02=Barn och ungdom<br/>03=Rådgivning, födelsekontroll<br/>04=Antibiotikafri behandling<br/>05=Person över 85 år<br/>99=Övrigt<br/>Obligatoriskt fält under nämnda förutsättningar senast<br/>20xx-01. | 0..1 |
| ../../../patientFreePassCauseIndicator | boolean | Patientavgift Frikortsgrundad indikator<br/>Frikortsgrundande patientavgift. Information om debiterad vård är frikortsberättigad i säljande region.<br/>Möjlighet att fånga en erlagd patientavgift för central hantering och bevakning av frikortsbelopp i köpande region.<br/>True = är frikortsgrundad<br/>false = ej frikortsgrundad<br/>Frivillig uppgift. | 0..1 |
| ../../../inpatientCareFee | AmountType | Patientavgift, slutenvård<br/>Patientens patientavgift för behandlingen i sluten vård.<br/>Möjlighet att i framtiden fånga patientavgiften även i sluten vård.<br/>Frivillig uppgift. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.<br/>code: SEK<br/>codeSystem: ”1.0.4217” | 1..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat<br/>Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.<br/>Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../activity | ActivityType | Verksamhet | 1..1 |
| ../../../medicalFieldCode | string | Medicinskt verksamhetsområde<br/>Treställig kod från Socialstyrelsen<br/>Klinikkod (specialitet), medicinskt ansvarig enligt kodverk från Socialstyrelsen.<br/>Obligatoriskt fält. | 1..1 |
| ../../../businessClassification | CVType | Verksamhetskod<br/>Fyrställig kod för den typ av verksamhet som bedrivs enligt HSA:s verksamhetskodverk.<br/>Uppgiften kan inhämtas från HSA, men det är viktigt att i så fall även titta på verksamhetskoder för vårdenhetens ingående enheter samt att först därefter välja den verksamhetskod som är aktuell för det specifika vårdtillfället.<br/>code: Ur HSAs kodverk Verksamhetskod codesystem: 1.2.752.129.2.2.1.3<br/>Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../careLevel ² | string | Vårdnivå<br/>Kategorisering av vårdnivå.<br/>Vårdnivå för aktuell vårdkontakt anges.<br/>Primärvård avser hälso- och sjukvårdsverksamhet där öppenvård ges utan avgränsning när det gäller sjukdomar, ålder eller patientgrupper. Primärvården svarar för behovet av sådana åtgärder i form av medicinsk bedömning och behandling, omvårdnad, förebyggande arbete och rehabilitering som inte kräver särskilda medicinska eller tekniska resurser eller någon annan särskild kompetens.<br/>Länssjukvård avser olika typer av specialistvård som täcker de flesta områden exklusive vård enligt regionsjukvård och nationell högspecialiserad vård.<br/>Regionsjukvård avser vård som bedrivs vid Sveriges universitetssjukhus. Benämns i Riksavtalet för utomlänsvård som samverkansregionsjukvård.<br/>Nationell högspecialiserad vård är vård inom områden som Socialstyrelsen har gett särskilt tillstånd till och ges endast hos ett fåtal vårdgivare som kan uppfylla kraven på kompetens, tillgänglighet och arbete i multidisciplinära team.<br/>1=Primärvård<br/>2=Länssjukvård<br/>3=Regionsjukvård<br/>4=Nationell högspecialiserad vård<br/>Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat<br/>Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.<br/>Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../diagnosis ² | DiagnosisType | Diagnos | 0..1 |
| ../../../inpatientCareDiagnosis | PatientDiagnosisType | Diagnos slutenvård<br/>Diagnos ska lämnas för sluten somatisk vård. (Ej psykiatrisk vård)<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../mainDiagnosis ² | DiagnosisCodeType | Huvuddiagnos<br/>Huvuddiagnos, Diagnos 1. Ska registreras för somatisk<br/>sluten vård.  (Ej psykiatrisk vård).<br/>Huvuddiagnosen är det tillstånd (sjukdom, skada etc.) vars behandling och utredning varit<br/>huvudorsaken till patientens sjukhusvistelse.<br/>Obligatoriskt fält om fältet Diagnos slutenvård används. | 1..1 |
| ../../../../../diagnosisCode | CVType | Diagnoskod<br/>Kod för diagnos.<br/>Det kodsystem som styr vilken diagnos som angivits.<br/>I sluten vård ska det alltid vara kod enligt ICD10-SE.<br/>I öppen vård bör det vara enligt<br/>ICD10-SE men även andra koddiagnoser kan finnas.<br/>Code:<br/>codesystem: ”1.2.752.116.1.1.1.1.3”<br/>Obligatoriskt fält. | 1..1 |
| ../../../../biDiagnosis | DiagnosisCodeType | Bidiagnos<br/>Diagnos 2-x . Det kan förekomma ett flertal bidiagnoser kopplade till ett sjukdomsfall. Dessa uppgifter måste<br/>således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..* |
| ../../../../../diagnosisCode | CVType | Diagnoskod<br/>Kod för diagnos.<br/>Det kodsystem som styr vilken diagnos som angivits.<br/>I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE men även<br/>andra koddiagnoser kan finnas.<br/>Code:<br/>codesystem: ”1.2.752.116.1.1.1.1.3”<br/>Obligatoriskt fält. | 1..1 |
| ../../../outpatientCareDiagnosis | PatientDiagnosisType | Diagnos öppenvård<br/>Anges för öppen specialistvård när denna uppgift finns. Ska inte lämnas för primärvård och psykiatrisk vård.<br/>Obligatoriskt fält under nämna förutsättningar. | 0..1 |
| ../../../../mainDiagnosis | DiagnosisCodeType | Huvuddiagnos<br/>Huvuddiagnos, Diagnos 1. Ska registreras för somatisk öppenvård när denna uppgift finns. Ska inte lämnas för primärvård och psykiatrisk öppenvård.<br/>Huvuddiagnosen är det tillstånd (sjukdom, skada etc.) vars behandling och utredning varit huvudorsaken till patientens sjukhusvistelse.<br/>Obligatoriskt fält om fältet Diagnos öppenvård används. | 1..1 |
| ../../../../../diagnosisCode | CVType | Diagnoskod<br/>Det kodsystem som styr vilken diagnos som angivits.<br/>I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE med även andra koddiagnoser kan finnas.<br/>Code:<br/>codesystem: ”1.2.752.116.1.1.1.1.3”<br/>Obligatoriskt fält. | 1..1 |
| ../../../../biDiagnosis | DiagnosisCodeType | Bidiagnos<br/>Diagnos 2-x .Det kan förekomma ett flertal bidiagnoser<br/>kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen.<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..* |
| ../../../../../diagnosisCode | CVType | Diagnoskod<br/>Kod för diagnos.<br/>Det kodsystem som styr vilken diagnos som angivits.<br/>I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE men även<br/>andra koddiagnoser kan finnas.<br/>Code:<br/>codesystem: ”1.2.752.116.1.1.1.1.3”<br/>Obligatoriskt fält. | 1..1 |
| ../../treatment | TreatmentType | Åtgärd | 0..1 |
| ../../../typeOfTreatment | CVType | Åtgärdskod<br/>Det kan förekomma ett flertal åtgärder och därmed åtgärdskoder kopplade till ett sjukdomsfall. Dessa<br/>uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. Åtgärder<br/>ska inte lämnas för primärvård och psykiatrisk vård.<br/>Enligt socialstyrelsens klassifikation av vårdåtgärder (KVÅ).<br/>Code:<br/>codesystem:” 1.2.752.116.1.3.2.1.4”<br/>Obligatoriskt fält under nämnda förutsättningar. | 0..* |
| ../../../ATC | CVType | ATC kod<br/>Läkemedel enligt ATC-kod.<br/>Betydande kostnader för läkemedel i en behandling kan specificerat med ATC-koder.<br/>Code:<br/>codesystem: ”1.2.752.129.2.2.3.1.1”<br/>Frivillig uppgift. | 0..* |
| ../../../unspecified | UnspecifiedType | Ospecificerat<br/>Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm.<br/>Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| Svar |  |  |  |

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnum | Status enligt generell regel. | 1..1 |
| comment | string | Meddelande enligt generell regel | 0..1 |

#### 7.1.3 Övriga regler

Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraintsMock).

I schematronfilen contraintsMock.xml är id på regeln förkortad med R innan numret (tabellen nedan anger ÖR då R krockar med förkortningen för referenser i detta dokument).

Gemensamt för alla övriga regler som valideras mha schematron är att om fältet inte är obligatoriskt och inte finns med i nyttolasten så kommer regeln att inte ge ett fel.

Tjänstekonsument och tjänsteproducent ska validera begäran enligt följande regler:

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |

| ÖR1 [sch] | ProcessClaimSpecification | Inga tomma element tillåts |
| :--- | :--- | :--- |
| ÖR2 [sch] | issueDate (Fakturaunderlag vård, datum och tid) | Datumet får inte vara i framtiden |
| ÖR3 [sch] | supplierParty<br/>(id säljare och köpare) | Obligatoriskt med 1.3.7 (organisationsnummer) för root, och 10 tecken för extension.<br/>Man kan även skicka med ett sekundärt 2.51.1.6 (GLN).<br/>Med ett värde på 13 tecken för 2.51.1.6. |
| ÖR4 [sch] | typeOfInvoice (fakturatyp) | Giltiga värden: 380, 381 |
| ÖR5 [sch] | payableAmount (fakturabelopp) | Total summa fakturerat i fakturan är fel.<br/>Fakturabelopp och fakturerat belopp netto skiljer sig åt med mer än en krona. |
| ÖR6 [sch] | PatientCareInvoiceNetAmount (Patient vårdtillfälle, fakturerat belopp netto) | Nettofakturerat är fel.<br/>patientCareInvoiceNetAmount = patientCareInvoiceGrossAmount + patientCareCharge – patientCareAllowance – patientCareDiscount |
| ÖR7 [sch] | patientId (patient id) | Endast ett av personnummer, samordningsnummer, reservnummer tillåtet |
| ÖR8 [sch] | county (län) | Exakt 2 tecken. |
| ÖR9 [sch] | municipality (kommun) | Exakt 4 tecken. |
| ÖR10 [sch] | gender (kön) | Giltiga värden:<br/>0,1,2,9 |
| ÖR11 [sch] | careContactId (vårdkontakt id) | Obligatoriskt för slutenvård |
| ÖR12[sch] | typeOfAgreement (betalningsförbindelsetyp avtal) | Giltiga värden: 1, 2, 3 |
| ÖR13 [sch] | typeOfChapter (betalningsförbindelsetyp kapitel) | Giltiga värden:<br/>1, 2, 3, 4, 5, 6, 7 |
| ÖR14 [sch] | typeOfReimbursement (Betalningsförbindelse, ersättningstyp) | Giltiga värden: 1, 2 |
| ÖR15 [sch] | typeOfCare (slutenvård öppenvård) | Giltiga värden:<br/>01, 02 |
| ÖR16 [sch] | typeOfVisit (typ av besök) | Giltiga värden:<br/>1, 2 |
| ÖR17 [sch] | careVisitDate (Inskrivnings-/besöksdatum för vård) | Får inte vara senare än bilagedatum |
| ÖR18 [sch] | careDischargeDate (utskrivningsdatum från vård) | Får inte vara tidigare än Besöksdatum |
| ÖR19 [sch] | invoicePeriod (fakturaperiod) | Både start och slutperiod ska vara med i Fakturaperiod |
| ÖR20 [sch] | invoicePeriod.start och invoicePeriod.end | Fakturaperiod får inte vara senare än bilagedatumet |
| ÖR21 [sch] | invoicePeriod.end | Fakturaperiod slutdatum får inte vara tidigare än fakturaperiod startdatum |
| ÖR22 [sch] | professionCodeForHealthcare (yrkeskod) | Giltiga värden:<br/>AP AT AU BM BA DT FT HK KP LG LK NA OP OT PS PT RC RS SG SF SJ TH TL US TP TO OV |
| ÖR23 [sch] | professionCodeForHealthcare (yrkeskod) | Yrkeskod är obligatoriskt för öppenvård |
| ÖR24 [sch] | productCategory (produktkategori) | Giltiga värden:<br/>01, 02, 03, 04, 99 |
| ÖR25 [sch] | priceList (prislista, kod) | Giltiga värden:<br/>1, 2, 3, 4, 5, 6 |
| ÖR26 [sch] | patientSpecificCareTotalAmount (Patientspecifik åtgärd, totalbelopp) | Summa ”Patientspecifik åtgärd, totalbelopp” är fel.<br/>patientSpecificCareTotalAmount = numberOfPatientSpecificCare * patientSpecificCarePrice |
| ÖR27 [sch] | patientCareInvoiceGrossAmount (Patient vårdkontakt, fakturerat belopp brutto) | Brutto fakturerat är fel.<br/>PatientCareInvoiceGrossAmount = DRGPrice + ExtendedAllowanceCareTime + ExtendedAllowanceCost + PatientSpecificCareTotalAmount – OutPatientCareFeePaid |
| ÖR28 [sch] | patientCareInvoiceNetAmount (Patient vårdkontakt, fakturerat belopp netto) | Netto fakturerat är fel.<br/>patientCareInvoiceNetAmount = patientCareInvoiceGrossAmount + patientCareCharge – patientCareAllowance – patientCareDiscount |
| ÖR29 [sch] | patientFeeReducedCategory (Patientavgift nedsatt, kategori) | Giltiga värden:<br/>01, 02, 03, 04, 05, 99 |
| ÖR30 [sch] | careLevel (vårdnivå) | Giltiga värden:<br/>1, 2, 3, 4 |
| ÖR31 [sch] | inPatientCareDiagnosis.mainDiagnosis | Huvuddiagnos är obligatoriskt för slutenvård om inte invoicePeriod har angetts. |
| ÖR32 [sch] | diagnosis (diagnos) | Code och codeSystem ska finnas.<br/>Ersätts av R39 |
| ÖR33 [sch] | diagnosis, treatment, medicalFieldCode (diagnoser, åtgärder) | Diagnoser och åtgärder får ej förekomma när medicalFieldCode börjar med 9 |
| ÖR34 [sch] | listingLocalAuthoritiesNumber.root(listningsregion) | Måste vara satt till oid för hsaid (1.2.752.129.2.1.4.1) |
| ÖR35 [sch] | currency (valuta) | Valuta måste vara SEK, codeSystem måste vara 1.0.4217 |
| ÖR36 [sch] | reasonForCredit (orsak till kreditering) | Giltiga värden:<br/>1, 2, 3, 4, 5, 6, 7, 8, 9 |
| ÖR37 [sch] | id (fakturaunderlag id) | Id måste börja på ZVF samt ha en längd på 23 tecken. |
| ÖR38 [sch] | careDischargeDate (utskrivningsdatum) | Utskrivningsdatum får inte vara senare än Bilagedatum |
| ÖR39 [sch] | CVType.code, CVType.codeSystem | Verifierar att code och codeSystem är satt för alla CVType.<br/>Undantag för county och municipality som har egna regler (ÖR40 och ÖR41)<br/>Undantag även för DRGCode som har en egen regel ÖR42 |
| ÖR40 [sch] | counte.code, county.codeSystem | code och codeSystem måste ha giltiga värden.<br/>Undantag för code 99 då codeSystem ej skickas med. |
| ÖR41 [sch] | municipality.code, municipality.codeSystem | code och codeSystem måste ha giltiga värden.<br/>Undantag för code 9901 då codeSystem ej skickas med. |
| ÖR42 [sch] | DRGCode | Verifierar att DRGCode har originalText satt och endast originalText. |
| ÖR43 [sch] | lineID | Verifierar att lineId är unikt och i stigande ordning. |
| ÖR44 [sch] | categorization | Verifierar att minst en patientspecifik åtgärd eller DRG-kostnad anges. |
| ÖR45 [sch] | DRGCost | Verifierar att DRGPrice och DRGCode anges för varje DRGCost |
| ÖR46 [sch] | customerParty | Obligatoriskt med 1.3.7 (organisationsnummer) för root, och 10 tecken för extension.<br/>Man kan även skicka med ett sekundärt 2.51.1.6 (GLN).<br/>Med ett värde på 13 tecken för 2.51.1.6. |
| ÖR47 [sch] | patientSpecificCare | Om patientSpecificCare finns så måste elementen patientSpecificCareCode, patientSpecificCareCodeName, patientSpecificCarePrice samt numberOfPatientSpecificCare finnas. |
| ÖR48 [sch] | identification<br/>(id säljare och köpare) | Verifierar längd på identification/extension som skall vara 10 tecken för 1.3.7 och 13 tecken för 2.51.1.6 |
| ÖR49 [sch] | medicalFieldCode | Verifierar medicalFieldCode gentemot mvo.xml som skall stämma överens med Socialstyrelsens register över godkända medicinska verksamhetskoder. |
| ÖR50 [sch] | agreementInRiksavtalet | Giltiga värden: 3.1, 3.2, 4.1, 4.3, 4.4 |
| ÖR51 [sch] | inCare (Antal vårddagar) | Obligatoriskt vid slutenvård. |
| ÖR52 [sch] | referenceToProcessClaimSpecificationId | Obligatoriskt vid kreditfaktura. |
|  |  |  |

| Regler i svaret | Regler i svaret | Regler i svaret |
| :--- | :--- | :--- |
| OK |  | Transaktionen har utförts enligt uppdraget i begäran. |
| INFO |  | Används ej i ProcessClaimSpecification |
| ERROR |  | Transaktionen har INTE kunnat utföras enligt anrop p.g.a. logiskt fel.<br/>Fältet comment ska sättas till den rapport som skapas av schematron-reglerna eller schema-validering.<br/>Meddelandet anses inte mottaget.<br/>Exempel meddelande i comment (schematron):<br/>Error: Total summa: 729001 fakturerat i fakturan är fel<br/>Location:<br/>/urn1:ProcessClaimSpecification/urn1:claimSpecification<br/>/urn2:payableAmount/urn2:amount<br/>Id: R5<br/>Test: . = sum(//urn2:invoicedAmountDetails/ urn2:patientCareInvoiceNetAmount/urn2:amount) |

##### 7.1.3.1 Icke funktionella krav

Inga övriga icke funktionella krav.

###### 7.1.3.1.1 SLA-krav

Inga avvikande SLA-krav.

#### 7.1.4 Annan information om kontraktet

Ingen övrig information om kontraktet.

#### 7.1.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| claimSpecification | ProcessClaimSpecificationType |  | 1..1 |
| ../id | string |  | 1..1 |
| ../issueDate | DateType |  | 1..1 |
| ../issueTime | TimeType |  | 0..1 |
| ../typeOfInvoice | string |  | 1..1 |
| ../invoiceId | string |  | 0..1 |
| ../invoiceDateOfIssue | DateType |  | 0..1 |
| ../referenceToInvoice | string |  | 0..1 |
| ../referenceToProcessClaimSpecificationId | string |  | 0..1 |
| ../payableAmount | AmountType |  | 1..1 |
| ../../amount | decimal |  | 1..1 |
| ../../currency | CVType |  | 1..1 |
| ../../../code | string |  | 0..1 |
| ../../../codeSystem | string |  | 0..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../unspecified | UnspecifiedType |  | 0..* |
| ../../text | string |  | 1..1 |
| ../../type | string |  | 0..1 |
| ../supplierParty | SupplierPartyType |  | 1..1 |
| ../../identification | IIType |  | 1..2 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 1..1 |
| ../../sellerContact | ContactType |  | 0..1 |
| ../../../name | string |  | 0..1 |
| ../../../telephone | string |  | 0..1 |
| ../../../electronicMail | string |  | 0..1 |
| ../customerParty | CustomerPartyType |  | 1..1 |
| ../../identification | IIType |  | 1..2 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 1..1 |
| ../../buyerContact | ContactType |  | 0..1 |
| ../../../name | string |  | 0..1 |
| ../../../telephone | string |  | 0..1 |
| ../../../electronicMail | string |  | 0..1 |
| ../healthCareServicesSpecificationLine | HealthcareServicesSpecificationLineType |  | 0..* |
| ../../patientInformation | PatientInformationType |  | 1..1 |
| ../../../patientIdentity | IIType |  | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 1..1 |
| ../../../patientOtherInformation | PatientOtherInformationType |  | 1..1 |
| ../../../../county | CVType |  | 1..1 |
| ../../../../../code | string |  | 0..1 |
| ../../../../../codeSystem | string |  | 0..1 |
| ../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../displayName | string |  | 0..1 |
| ../../../../../originalText | string |  | 0..1 |
| ../../../../municipality | CVType |  | 1..1 |
| ../../../../../code | string |  | 0..1 |
| ../../../../../codeSystem | string |  | 0..1 |
| ../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../displayName | string |  | 0..1 |
| ../../../../../originalText | string |  | 0..1 |
| ../../../../listingLocalAuthoritiesNumber | IIType |  | 0..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 1..1 |
| ../../../../LMACardNumber | string |  | 0..1 |
| ../../../../gender | CVType |  | 0..1 |
| ../../../../../code | string |  | 0..1 |
| ../../../../../codeSystem | string |  | 0..1 |
| ../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../displayName | string |  | 0..1 |
| ../../../../../originalText | string |  | 0..1 |
| ../../../../EUCardNumber | string |  | 0..1 |
| ../../../../unspecified | UnspecifiedType |  | 0..* |
| ../../../../../text | string |  | 1..1 |
| ../../../../../type | string |  | 0..1 |
| ../../healthcarePerformed | HealthcarePerformedType |  | 1..* |
| ../../../lineId | positiveInteger |  | 1..1 |
| ../../../careContactId | string |  | 0..1 |
| ../../../referenceToLineId | positiveInteger |  | 0..1 |
| ../../../reasonForCredit | string |  | 0..1 |
| ../../../unspecified | UnspecifiedType |  | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../../paymentCommitment | PaymentCommitmentType |  | 0..1 |
| ../../../../remittanceNumber | string |  | 0..1 |
| ../../../../paymentCommitmentNumber | string |  | 0..1 |
| ../../../../typeOfAgreement | string |  | 0..1 |
| ../../../../typeOfChapter | string |  | 0..1 |
| ../../../../agreementInRiksavtalet | string |  | 0..1 |
| ../../../../typeOfReimbursement | string |  | 0..1 |
| ../../../../unspecified | UnspecifiedType |  | 0..* |
| ../../../../../text | string |  | 1..1 |
| ../../../../../type | string |  | 0..1 |
| ../../../healthcareCategory | HealthcareCategoryType |  | 1..1 |
| ../../../../typeOfCare | CVType |  | 1..1 |
| ../../../../../code | string |  | 0..1 |
| ../../../../../codeSystem | string |  | 0..1 |
| ../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../displayName | string |  | 0..1 |
| ../../../../../originalText | string |  | 0..1 |
| ../../../../publicCare | boolean |  | 0..1 |
| ../../../../plannedHealthcare | boolean |  | 1..1 |
| ../../../../typeOfVisit | string |  | 0..1 |
| ../../../../unspecified | UnspecifiedType |  | 0..* |
| ../../../../../text | string |  | 1..1 |
| ../../../../../type | string |  | 0..1 |
| ../../../timespan | TimespanType |  | 1..1 |
| ../../../../healthcareVisitDateTime | HealthcareVisitDateTimeType |  | 1..1 |
| ../../../../../careVisitDate | DateType |  | 1..1 |
| ../../../../../careVisitTime | TimeType |  | 0..1 |
| ../../../../healthcareDischargeDateTime | HealthcareDischargeDateType |  | 0..1 |
| ../../../../../careDischargeDate | DateType |  | 1..1 |
| ../../../../../careDischargeTime | TimeType |  | 0..1 |
| ../../../../invoicePeriod | DatePeriodType |  | 0..1 |
| ../../../../../start | DateType |  | 0..1 |
| ../../../../../end | DateType |  | 0..1 |
| ../../../../numberOfDays | NumberOfDaysType |  | 0..1 |
| ../../../../../onLeave | positiveInteger |  | 0..1 |
| ../../../../../inCare | positiveInteger |  | 0..1 |
| ../../../healthcareUnit | HealthcareUnitType |  | 1..1 |
| ../../../../careUnitId | IIType |  | 0..1 |
| ../../../../../root | string |  | 1..1 |
| ../../../../../extension | string |  | 1..1 |
| ../../../../careUnitName | string |  | 1..1 |
| ../../../../professionCodeForHealthcare | string |  | 0..1 |
| ../../../../unspecified | UnspecifiedType |  | 0..* |
| ../../../../../text | string |  | 1..1 |
| ../../../../../type | string |  | 0..1 |
| ../../../categorization | CategorizationType |  | 0..1 |
| ../../../../productCategory | string |  | 0..1 |
| ../../../../priceList | string |  | 0..1 |
| ../../../../DRGCost | DRGCostType |  | 0..1 |
| ../../../../../DRGCode | CVType |  | 0..1 |
| ../../../../../../code | string |  | 0..1 |
| ../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../displayName | string |  | 0..1 |
| ../../../../../../originalText | string |  | 0..1 |
| ../../../../../DRGPrice | AmountType |  | 0..1 |
| ../../../../../../amount | decimal |  | 1..1 |
| ../../../../../../currency | CVType |  | 1..1 |
| ../../../../../../../code | string |  | 0..1 |
| ../../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../../displayName | string |  | 0..1 |
| ../../../../../../../originalText | string |  | 0..1 |
| ../../../../../extendedAllowanceCareTime | AmountType |  | 0..1 |
| ../../../../../../amount | decimal |  | 1..1 |
| ../../../../../../currency | CVType |  | 1..1 |
| ../../../../../../../code | string |  | 0..1 |
| ../../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../../displayName | string |  | 0..1 |
| ../../../../../../../originalText | string |  | 0..1 |
| ../../../../../extendedAllowanceCost | AmountType |  | 0..1 |
| ../../../../../../amount | decimal |  | 1..1 |
| ../../../../../../currency | CVType |  | 1..1 |
| ../../../../../../../code | string |  | 0..1 |
| ../../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../../displayName | string |  | 0..1 |
| ../../../../../../../originalText | string |  | 0..1 |
| ../../../../patientSpecificCare | PatientSpecificCareType |  | 0..* |
| ../../../../../patientSpecificCareCode | string |  | 0..1 |
| ../../../../../patientSpecificCareCodeName | string |  | 0..1 |
| ../../../../../numberOfPatientSpecificCare | integer |  | 0..1 |
| ../../../../../patientSpecificCarePrice | AmountType |  | 0..1 |
| ../../../../../../amount | decimal |  | 1..1 |
| ../../../../../../currency | CVType |  | 1..1 |
| ../../../../../../../code | string |  | 0..1 |
| ../../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../../displayName | string |  | 0..1 |
| ../../../../../../../originalText | string |  | 0..1 |
| ../../../../../patientSpecificCareTotalAmount | AmountType |  | 0..1 |
| ../../../../../../amount | decimal |  | 1..1 |
| ../../../../../../currency | CVType |  | 1..1 |
| ../../../../../../../code | string |  | 0..1 |
| ../../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../../displayName | string |  | 0..1 |
| ../../../../../../../originalText | string |  | 0..1 |
| ../../../../../unspecified | UnspecifiedType |  | 0..* |
| ../../../../../../text | string |  | 1..1 |
| ../../../../../../type | string |  | 0..1 |
| ../../../invoicedAmountDetails | InvoicedAmountDetailsType |  | 1..1 |
| ../../../../patientCareInvoiceGrossAmount | AmountType |  | 1..1 |
| ../../../../../amount | decimal |  | 1..1 |
| ../../../../../currency | CVType |  | 1..1 |
| ../../../../../../code | string |  | 0..1 |
| ../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../displayName | string |  | 0..1 |
| ../../../../../../originalText | string |  | 0..1 |
| ../../../../patientCareInvoiceNetAmount | AmountType |  | 1..1 |
| ../../../../../amount | decimal |  | 1..1 |
| ../../../../../currency | CVType |  | 1..1 |
| ../../../../../../code | string |  | 0..1 |
| ../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../displayName | string |  | 0..1 |
| ../../../../../../originalText | string |  | 0..1 |
| ../../../../patientCareAllowance | AmountType |  | 0..1 |
| ../../../../../amount | decimal |  | 1..1 |
| ../../../../../currency | CVType |  | 1..1 |
| ../../../../../../code | string |  | 0..1 |
| ../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../displayName | string |  | 0..1 |
| ../../../../../../originalText | string |  | 0..1 |
| ../../../../patientCareDiscount | AmountType |  | 0..1 |
| ../../../../../amount | decimal |  | 1..1 |
| ../../../../../currency | CVType |  | 1..1 |
| ../../../../../../code | string |  | 0..1 |
| ../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../displayName | string |  | 0..1 |
| ../../../../../../originalText | string |  | 0..1 |
| ../../../../patientCareCharge | AmountType |  | 0..1 |
| ../../../../../amount | decimal |  | 1..1 |
| ../../../../../currency | CVType |  | 1..1 |
| ../../../../../../code | string |  | 0..1 |
| ../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../displayName | string |  | 0..1 |
| ../../../../../../originalText | string |  | 0..1 |
| ../../../../outPatientCareFee | AmountType |  | 0..1 |
| ../../../../../amount | decimal |  | 1..1 |
| ../../../../../currency | CVType |  | 1..1 |
| ../../../../../../code | string |  | 0..1 |
| ../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../displayName | string |  | 0..1 |
| ../../../../../../originalText | string |  | 0..1 |
| ../../../../outPatientCareFeePaid | AmountType |  | 0..1 |
| ../../../../../amount | decimal |  | 1..1 |
| ../../../../../currency | CVType |  | 1..1 |
| ../../../../../../code | string |  | 0..1 |
| ../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../displayName | string |  | 0..1 |
| ../../../../../../originalText | string |  | 0..1 |
| ../../../../patientFeeReducedCategory | string |  | 0..1 |
| ../../../../patientFreePassCauseIndicator | boolean |  | 0..1 |
| ../../../../inpatientCareFee | AmountType |  | 0..1 |
| ../../../../../amount | decimal |  | 1..1 |
| ../../../../../currency | CVType |  | 1..1 |
| ../../../../../../code | string |  | 0..1 |
| ../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../displayName | string |  | 0..1 |
| ../../../../../../originalText | string |  | 0..1 |
| ../../../../unspecified | UnspecifiedType |  | 0..* |
| ../../../../../text | string |  | 1..1 |
| ../../../../../type | string |  | 0..1 |
| ../../../activity | ActivityType |  | 1..1 |
| ../../../../medicalFieldCode | string |  | 1..1 |
| ../../../../businessClassification | CVType |  | 0..1 |
| ../../../../../code | string |  | 0..1 |
| ../../../../../codeSystem | string |  | 0..1 |
| ../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../displayName | string |  | 0..1 |
| ../../../../../originalText | string |  | 0..1 |
| ../../../../careLevel | string |  | 0..1 |
| ../../../../unspecified | UnspecifiedType |  | 0..* |
| ../../../../../text | string |  | 1..1 |
| ../../../../../type | string |  | 0..1 |
| ../../../diagnosis | DiagnosisType |  | 0..1 |
| ../../../../inpatientCareDiagnosis | PatientDiagnosisType |  | 0..1 |
| ../../../../../mainDiagnosis | DiagnosisCodeType |  | 1..1 |
| ../../../../../../diagnosisCode | CVType |  | 1..1 |
| ../../../../../../../code | string |  | 0..1 |
| ../../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../../displayName | string |  | 0..1 |
| ../../../../../../../originalText | string |  | 0..1 |
| ../../../../../biDiagnosis | DiagnosisCodeType |  | 0..* |
| ../../../../../../diagnosisCode | CVType |  | 1..1 |
| ../../../../../../../code | string |  | 0..1 |
| ../../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../../displayName | string |  | 0..1 |
| ../../../../../../../originalText | string |  | 0..1 |
| ../../../../outpatientCareDiagnosis | PatientDiagnosisType |  | 0..1 |
| ../../../../../mainDiagnosis | DiagnosisCodeType |  | 1..1 |
| ../../../../../../diagnosisCode | CVType |  | 1..1 |
| ../../../../../../../code | string |  | 0..1 |
| ../../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../../displayName | string |  | 0..1 |
| ../../../../../../../originalText | string |  | 0..1 |
| ../../../../../biDiagnosis | DiagnosisCodeType |  | 0..* |
| ../../../../../../diagnosisCode | CVType |  | 1..1 |
| ../../../../../../../code | string |  | 0..1 |
| ../../../../../../../codeSystem | string |  | 0..1 |
| ../../../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../../../displayName | string |  | 0..1 |
| ../../../../../../../originalText | string |  | 0..1 |
| ../../../treatment | TreatmentType |  | 0..1 |
| ../../../../typeOfTreatment | CVType |  | 0..* |
| ../../../../../code | string |  | 0..1 |
| ../../../../../codeSystem | string |  | 0..1 |
| ../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../displayName | string |  | 0..1 |
| ../../../../../originalText | string |  | 0..1 |
| ../../../../ATC | CVType |  | 0..* |
| ../../../../../code | string |  | 0..1 |
| ../../../../../codeSystem | string |  | 0..1 |
| ../../../../../codeSystemName | string |  | 0..1 |
| ../../../../../codeSystemVersion | string |  | 0..1 |
| ../../../../../displayName | string |  | 0..1 |
| ../../../../../originalText | string |  | 0..1 |
| ../../../../unspecified | UnspecifiedType |  | 0..* |
| ../../../../../text | string |  | 1..1 |
| ../../../../../type | string |  | 0..1 |
| **Svar** | | | |
| resultCode | ResultCodeEnum |  | 1..1 |
| comment | string |  | 0..1 |

#### 7.1.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:financial:billing:claim:ProcessClaimSpecificationResponder:1:ProcessClaimSpecification`

#### 7.1.7 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ProcessClaimSpecificationInteraction_1.1_RIVTABP21.wsdl](ProcessClaimSpecificationInteraction_1.1_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [ProcessClaimSpecificationResponder_1.1.xsd](ProcessClaimSpecificationResponder_1.1.xsd) | Tjänsteschema |
| [financial_billing_claim_1.1.xsd](financial_billing_claim_1.1.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [constraints.xml](constraints.xml) | Schematron-regler (ÖR1–ÖR52, i filen R1–R52) |
| [constraintsMock.xml](constraintsMock.xml) | Schematron-regler för mock-producent (test-suite) |
| [mvo.xml](mvo.xml) | Godkända medicinska verksamhetskoder (används av ÖR49) |
| [sjalvdeklaration_for_tjanstekonsument_processclaimspecification.docx](sjalvdeklaration_for_tjanstekonsument_processclaimspecification.docx) | Självdeklaration (tjänstekonsument) |
| [sjalvdeklaration_for_tjansteproducent_processclaimspecification.docx](sjalvdeklaration_for_tjansteproducent_processclaimspecification.docx) | Självdeklaration (tjänsteproducent) |

#### 7.1.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/processclaimspecification-request](StructureDefinition-processclaimspecification-request.html)
* **Logisk modell (response):** [StructureDefinition/processclaimspecification](StructureDefinition-processclaimspecification.html)
* **Kodsystem:** [CodeSystem/financial-billing-claim-resultcode-cs](CodeSystem-financial-billing-claim-resultcode-cs.html)
* **ValueSet:** [ValueSet/financial-billing-claim-resultcode-vs](ValueSet-financial-billing-claim-resultcode-vs.html)


#### Fotnoter

² Schematronregel finns, se avsnitt Övriga regler (fotnot 2 i TKB:n).

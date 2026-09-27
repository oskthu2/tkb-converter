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
| id ² | string | Fakturaunderlag vård, id / En unik identitet som används för att identifiera fakturabilaga vid fakturering av utomläns vård. / Prefixet (ZVF) finns för att underlätta skanning av fakturabilagans id. / Kodens uppbyggnad: prefix, organisationsnummer, datum samt en räknare med 999999 möjligheter. / ZVF1234567890ÅÅMMNNNNNN. / Obligatoriskt. | 1..1 |
| issueDate | DateType | Fakturaunderlag vård, datum / Datum då fakturaunderlag för vård skapades. / Obligatoriskt. | 1..1 |
| issueTime | TimeStampType | Fakturaunderlag vård, tid / Tidpunkt då fakturaunderlag för vård skapades. / Frivillig uppgift. | 0..1 |
| typeOfInvoice ² | string | Fakturatyp / Kod som identifierar typ av faktura. / Kod enligt Svefaktura och SFTIs övriga fakturor. / 380=Faktura / 381=Kreditnota / Obligatoriskt. | 1..1 |
| invoiceId | String | Fakturanummer / Varje ny faktura ska ges en unik identitet. Numret bör vara unikt under hela arkiveringsperioden. / Fakturanumret ska vara utan mellanslag och bindestreck. / För att ge ett dokument en unik identitet kan GDTI användas. GDTI (GS1-dokumentidentitet, Global / Document Type Identifier) är ett alfanumeriskt fält som innehåller från 14 upp till 30 siffror. Antal positioner enligt standard SFTI E-handel. / Ett unikt nummer som används för att identifiera fakturan. / Frivillig uppgift. | 0..1 |
| invoiceDateOfIssue | DateType | Fakturadatum / Datum när fakturan utfärdades. / Frivillig uppgift. | 0..1 |
| referenceToInvoice | string | Referens till faktura / Används vid kreditering för att referera till den faktura som ska krediteras. / Referensen anges med fakturans unika identitet (fakturanumret). / Ska lämnas när fakturan är en kreditfaktura. / Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| referenceToProcessClaimSpecificationId ² | string | Referens till fakturaunderlag vård id / Vid kreditering av poster på kreditfaktura ska en referens anges till det id som finns på / originalfakturans fakturaunderlag. / Obligatoriskt när fakturan är en kreditfaktura. | 0..1 |
| payableAmount ² | AmountType | Fakturabelopp / Total debitering avseende en faktura och i enlighet med / leveransvillkoren. / Obligatoriskt. | 1..1 |
| ../amount | decimal | Belopp / Beloppet ska vara exakt samma belopp som på fakturan. / Obligatoriskt. | 1..1 |
| ../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” / Obligatoriskt. | 1..1 |
| unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../text | string |  | 1..1 |
| ../type | string |  | 0..1 |
| supplierParty | SupplierPartyType | Leverantör / Obligatoriskt. | 1..1 |
| ../identification ² | IIType | Leverantörens identitet / Identiteten ska kunna härledas till motsvarande namn, adress mm under hela den föreskrivna arkiveringstiden. / Identitet för part som definieras som juridisk säljare enligt ett kommersiellt avtal. / root: / Organisationsnummer= 1.3.7 / GLN-nummer = 2.51.1.6 / extension: / organisationsnumret eller GLN-numret / Obligatoriskt med organisationsnummer. / GLN-nummer kan även finnas med som frivillig identitet. | 1..2 |
| ../sellerContact | ContactType | Leverantörens kontaktuppgifter / Frivillig uppgift. | 0..1 |
| ../../name | string | Namn på person eller avdelning som avser kontakt för leverantör. / Frivillig uppgift. | 0..1 |
| ../../telephone | string | Leverantörens telefonnummer / Telefonnummer oredigerat. / Frivillig uppgift. | 0..1 |
| ../../electronicMail | string | Leverantörens epost / Adress till ett e-postkonto. / Frivillig uppgift. | 0..1 |
| customerParty | CustomerPartyType | Köpare | 1..1 |
| ../identification ² | IIType | Köparens identitet / Identiteten ska kunna härledas till motsvarande namn, / adress mm under hela den föreskrivna arkiveringstiden. / Identitet för part som definieras som juridisk köpare / enligt ett kommersiellt avtal. / root: / Organisationsnummer= 1.3.7 / GLN-nummer =2.51.1.6 / extension: / organisationsnumret eller GLN-numret / Obligatoriskt med organisationsnummer. / GLN-nummer kan även finnas med som frivillig identitet. | 1..2 |
| ../buyerContact | ContactType | Köparens kontaktuppgifter / Frivillig uppgift. | 0..1 |
| ../../name | string | Namn på person eller avdelning som avser kontakt för köpare. / Frivillig uppgift. | 0..1 |
| ../../telephone | string | Köparens telefonnummer / Telefonnummer oredigerat. / Frivillig uppgift. | 0..1 |
| ../../electronicMail | string | Köparens epost / Adress till ett e-postkonto. / Frivillig uppgift. | 0..1 |
| healthcareServicesSpecificationLine | HealthcareServicesSpecificationLineType | Fakturaunderlag vård, rad | 0..* |
| ../patientInformation | PatientInformationType | Patient | 1..1 |
| ../../patientIdentity | IIType | Patient id / Personnummer, samordningsnummer eller reservnummer ska anges. / Personnummer och samordningsnummer enligt den svenska folkbokföringen. / root / personnummer=“1.2.752.129.2.1.3.1” / samordningsnummer= / ”1.2.752.129.2.1.3.3” / reservnummer= / lokal reservnummer oid (ex. SLL: 1.2.752.97.3.1.3) alt. organisationsnummer om lokal reservnummer oid ej finns. / extension / Person- samordnings- eller reservnumret / Format: / Personnummer: ÅÅÅÅMMDDNNNN / Samordningsnr.: ÅÅÅÅMMDDNNNN / Lokala reservnummer=Olika format för varje region och därmed krav på flexibel hantering. / Nationellt reservnummer: XXYYMMDDNNGC / Obligatoriskt fält. | 1..1 |
| ../../patientOtherInformation |  | Patient, övrig information | 1..1 |
| ../../../county ² | CVType | Länskod / Koden avser det län där patientens folkbokföringsadress / finns.  Avser patientens folkbokförings län vid / vårdkontakten enligt förteckningen ”Rikets indelningar” / utgiven av Statistiska Centralbyrån (SCB). / För asylsökande sätts code till 99 och codeSystem utelämnas. / code: Enligt SCB, 2 siffror / codeSystem: 1.2.752.129.2.2.1.18 / Obligatoriskt. | 1..1 |
| ../../../municipality ² | CVType | Kommunkod / Koden avser den kommun där patientens folkbokföringsadress finns.  Avser patientens folkbokföringskommun vid vårdkontakten enligt förteckningen ”Rikets indelningar” utgiven av Statistiska Centralbyrån (SCB). / För asylsökande sätts 9901 (i kombination med länskod 99) och codeSystem utelämnas. / code: Enligt SCB, 4 siffror / codesystem: 1.2.752.129.2.2.1.17 / Obligatoriskt. | 1..1 |
| ../../../listingLocalAuthoritiesNumber ² | IIType | Listningsregion / HSA-id för patientens listningsregion. Anges i de fall patienten är utomlänspatient och listad i den vårdande regionen. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. / root: 1.2.752.129.2.1.4.1 | 0..1 |
| ../../../LMACardNumber | String | LMA kortnummer / Identitet på LMA-kort som används av asylsökande. Migrationsverkets dossiernummer vilket är unikt för varje individ. / Format: XXXXXXXX (8 siffror). / Ska ifyllas när debitering / sker av asylsökande mellan regioner. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../gender ² | CVType | Kön / Patientens kön enligt skatteverket. / Kategorisering enligt Socialstyrelsen och ISO 5218. / code: / 0=Okänt. / 1=Man. / 2=Kvinna. / 9=Obestämt. / codesystem: ”1.2.752.129.2.2.1.1” / Frivillig uppgift. | 0..1 |
| ../../../EUCardNumber | String | EU-kortets nummer / Kort för EU-medborgare som berättigar till vård enligt nationell prislista. (för hantering mot privata vårdgivare) / Identitet på EU-kort. / Format (exempel 20 tecken): XXXXXXXXXXXXXXXXXXXX / Frivillig uppgift. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../healthcarePerformed | HealthcarePerformedType | Vårdinsats | 1..* |
| ../../lineId | positiveInteger | Post id vårdinsats / Löpande numrering av vårdinsatser inom en faktura. / Radnummer ska vara ett löpnummer i stigande ordning. / Ex 1, 2, 3, 4 osv Alt 10, 20, 30, … / Vid kreditering används detta fält som referens eftersom vårdkontaktsid ej är obligatoriskt. / Obligatoriskt. | 1..1 |
| ../../careContactId ² | string | Vårdkontakts-id / En unik identitet på besöket/vårdkontakten. / Hämtas ofta från journalsystemet. Via koden kan samtliga fakturor identifieras som skett på en vårdkontakt. / Ska alltid anges inom sluten vård. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../referenceToLineId | positiveInteger | Referens till PostId Vårdinsats / Vid kreditering av poster på kreditfaktura ska en referens / anges till det radnummer som finns på vårdkontakterna på originalfakturans fakturaunderlag. / Ska lämnas när fakturan är en kreditfaktura. / Några regioner behöver en omställningstid innan denna uppgift kan ifyllas (Uppföljning sker inom nätverksgruppen). / Ska bli obligatorisk under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../reasonForCredit ² | string | Orsak till kreditering / Kod för olika orsaker till kreditering. Anges vid kreditering. / Denna uppgift underlättar hur köpande region ska hantera kreditinformationen i uppföljningssystem och vårddatabas. Anges för kreditfakturor. / Ska bli obligatorisk under nämnda förutsättningar senast 20xx-01. / Koder: / 1= Kreditering då debiterad patient inte tillhör den region som fakturerats. Exempel: En patient faktureras som har flyttat från den region som fått fakturan innan vården har skett. / 2=Kreditering av en transaktion där priset är fel angivit. Exempel. Det har blivit fel pris fakturerat på en behandling som ska faktureras enligt DRG. Den debiterade vårdinsatsen krediteras i sin helhet och ersätts med en ny fakturering. / 3=Kreditering av en transaktion där det är fel produkt. Exempel: Det har blivit fel pris på grund av att det medicinska underlaget är fel och därmed har fel DRG-kod fakturerats. Den debiterade vårdinsatsen krediteras i sin helhet och ersätts med en ny fakturering. / 4=Kreditering av en transaktion på grund av att det skett en delfakturering tidigare. Exempel: Det sker en löpande patientspecifik debitering i avvaktan på att en DRG-kod fastställs för vårdkontakten. Kreditering sker av tidigare fakturerade patientspecifika debiteringar och ersätts med ny faktura för fastställd DRG-kod. (Rutin för delfakturering regleras i samverkansavtalen) Se även not nedan. / 5=Kreditering av en transaktion där vård har skett av en annan region utan att det funnits en giltig remiss/betalningsförbindelse. Exempel: En region har vårdat en patient inom den slutna vården utan att det har funnits en giltig remiss/betalningsförbindelse. I detta fall kan den region där patienten är skriven neka att betala denna vård och därmed behöver vårdinsatsen krediteras. / 6=Kreditering av en felaktig transaktion då vårdkontakten har fakturerats sex månader efter vårdens tidpunkt.  Exempel: En faktura på en debiterad vårdkontakt skickas från den behandlande regionen senare än 6 månader efter tidpunkt för vården. Riksavtalet ger då möjlighet för köpande region att få denna krediterad. / 7=Kreditering av en transaktion där dubbelfakturering skett. Exempel: En vårdkontakt har fakturerats dubbelt. Det dubbelt debiterade vården krediteras. / 8=Kreditering av en felaktig transaktion då vårdkontakten har fakturerats datummässigt tidigare än behandlingsdatum. Exempel: En faktura på en debiterad vårdkontakt har besöksdatum/inskrivningsdatum efter fakturadatum.  Fakturan är ex skickad den 15 maj 2016 och vården är relaterad till den 20 maj. / 9=Kreditering då fakturering har skett av ett besök eller en åtgärd som inte är debiteringsbar. Exempel: En telefonrådgivning har debiterats vilket inte är debiteringsbart enligt riksavtalet. / Not: Se punkt 4: I samband med debitering av vårddagar för en patient som ligger inlagd i sluten vård vid ett månadsbryt ska en månads debitering av vårddagar ske på en unik faktura när delfakturering sker. (Rutin för delfakturering regleras ofta i samverkansavtalen) Samtliga månaders debitering av en vårdkontakt i hålls samman av samma Vårdkontakts-id. Ingen kreditering ska ske. | 0..1 |
| ../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../text | string |  | 1..1 |
| ../../../type | string |  | 0..1 |
| ../../paymentCommitment | PaymentCommitmentType | Betalningsförbindelse | 0..1 |
| ../../../remittanceNumber | string | Remiss-id / Remissens ursprungliga remiss-id. / Uppgiften lämnas när en remiss finns. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../paymentCommitmentNumber | string | Betalningsförbindelse-id / Ursprunglig identitet för betalningsförbindelse. / Uppgiften lämnas när en remiss finns. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../typeOfAgreement ² | string | Betalningsförbindelsetyp avtal / Anger den typ av avtal enligt Riksavtalet som reglerar betalningen. / Uppgiften lämnas när en remiss finns. / 1=Riksavtal / 2=Regionavtal / 3=Mellanlänsavtal / Observera att kodverket kv_betalningsförbindelsetyp avtal (Oid 1.2.752.129.2.2.2.44) förvaltas inom domänen Remisshantering. Eventuella behov av korrigeringar ska kommuniceras med dem. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../typeOfChapter ² | string | Betalningsförbindelsetyp kapitel / Anger kodifiering utifrån Riksavtalets kapitel som reglerar betalning. / Uppgiften lämnas när en remiss finns. / 1=Kapitel 2 Vård efter initiativ från hemregionen / 2=Kapitel 2 Vårdgaranti / 3=Kapitel 3 Akutvård / 4=Kapitel 4 Patientens val / 5=Kapitel 5 Medicinsk service / 6=Kapitel 6 Hjälpmedel / 7=Kapitel 7 Transporter och resor / Observera att kodverket kv_ betalningsförbindelsetyp kapitel (Oid 1.2.752.129.5.1.37) förvaltas inom domänen Remisshantering. Eventuella behov av korrigeringar ska kommuniceras med dem. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../agreementInRiksavtalet | string | Avtalspost i Riksavtalet / Kapitel och punkt som avses i Riksavtalet. / Fältet ifylls endast i de fall vården har utförts utan remiss men med stöd av särskilt kapitel och avsnitt i Riksavtalet. / Giltiga värden: / 3.1= Kap 3.1 Akut- och förlossningsvård / 3.2 = Kap 3.2 Vård av vissa patienter / 4.1 = Kapitel 4.1 Öppen vård utan krav på remiss / 4.3 = Kapitel 4.3 Hemsjukvård / 4.4 = Kapitel 4.4 Abort / Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| ../../../typeOfReimbursement ² | string | Betalningsförbindelse, ersättningstyp / Anger ersättningstyp. Uppgiften lämnas när en remiss finns. / 1=Ersättning från patientens hemregion enligt reglerna i Riksavtalet. / 2=Ersättning från patientens / hemregion enligt hemregionens kontrakt med vårdgivaren. / Ska bli obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../healthcareCategory | HealthcareCategoryType | Vårdkategori | 1..1 |
| ../../../ typeOfCare2 | CVType | Vård- och omsorgsform / Kategorisering av öppen respektive sluten vård enligt Socialstyrelsens termbank. Sluten vård är hälso-och sjukvård när den ges till patient vars tillstånd kräver / resurser som inte kan tillgodoses inom öppen vård eller hemsjukvård. / Öppen vård bedrivs i allmänhet under dagtid. Vid behov av övernattning leder det i regel till inskrivning i sluten / vård. / Sluten vård bedrivs dygnet runt och kräver inskrivning. Öppen vård är hälso-och sjukvård när den ges till patient vars tillstånd medger att aktuell vårdinsats förväntas avslutas inom ett begränsat antal timmar. / Urval ur HSA kodverk ”Vård- och omsorgsform” / code: / 01=öppenvård / 02=slutenvård / codeSystem: ”1.2.752.29.4.16” / Obligatoriskt. | 1..1 |
| ../../../publicCare | boolean | Offentlig vård / Offentlig eller privat vård. / Offentlig vård är vård som är offentligt finansierad och bedrivs av region/kommun. / Privat vård är vård som är offentligt finansierad och bedrivs av privat vårdgivare. / true = offentlig vård / false = privat vård / Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../plannedHealthcare | boolean | Planerad vård / Kategorisering enligt Socialstyrelsens termbank. / Definitioner: / Oplanerat vårdtillfälle: vårdtillfälle för vilket tid inte har avtalats / Oplanerat öppenvårdsbesök: öppenvårdsbesök för vilket tid inte har avtalats / Planerat vårdtillfälle: vårdtillfälle för vilket tid har avtalats / Planerat öppenvårdsbesök: öppenvårdsbesök för vilket tid har avtalats / true = planerad vård / false = ej planerad vård / Obligatoriskt. | 1..1 |
| ../../../typeOfVisit ² | string | Typ av besök / 1 = nybesök / 2 = återbesök / Telefonrådgivning kategoriseras som återbesök. / Med nybesök avses enligt Socialstyrelsens termbank / besök som inte har medicinskt samband med tidigare besök vid samma vårdcentral, klinik eller motsvarande. / Vid ett återbesök finns ett medicinskt samband. / Frivillig uppgift. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../timespan | TimespanType | Tidsomfång | 1..1 |
| ../../../healthcareVisitDateTime | HealthcareVisitDateTimeType | Besökstid | 1..1 |
| ../../../../careVisitDate ² | DateType | Inskrivnings- eller besöksdatum för vård / Besöksdatum för fakturerat besök/vårdkontakt. / Obligatorisk vid öppen vård. Patientens / inskrivningsdatum. Obligatorisk vid sluten vård. / Format: ÅÅÅÅMMDD / Obligatoriskt fält. | 1..1 |
| ../../../../careVisitTime | TimeStampType | Inskrivnings- eller besökstid / Exakt tid, timme och minut när inskrivning/besöket skedde. För att få tydlighet i en persons vårdkonsumtion / på en dag. / Format: ÅÅÅÅMMDDttmmss / Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../ healthcareDischargeDateTime | HealthcareDischargeDateTimeType | Utskrivningsdatum och tid / Patientens utskrivningsdag och tidpunkt. / Obligatoriskt fält vid sluten vård när patienten har blivit utskriven. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../careDischargeDate ² | DateType | Utskrivningsdatum från vård / I de fall det är en delfakturering för en / inneliggande patient ska detta fält vara blankt. / Format: ÅÅÅÅMMDD / Obligatoriskt. | 1..1 |
| ../../../../careDischargeTime | TimeStampType | Utskrivningstid / Exakt tid, timme och minut när utskrivning skedde. För att få tydlighet i en persons vårdkonsumtion på en dag. / Ifylla vid utskrivning från sluten vård. / Format: ÅÅÅÅMMDDttmmss / Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| ../../../invoicePeriod ² | DatePeriodType | Fakturaperiod / Periodens startdatum: / Startdatum för en period i samband med delfakturering. / Ex i samband med att en patient vårdas över månadsgräns. / Periodens slutdatum: / Slutdatum för en period i samband med delfakturering. / Ex i samband med att patient vårdas över månadsgräns. / Format för både start och end: ÅÅÅÅMMDD / Ifylls när delfakturering sker utifrån samverkansavtal m.m. / Om fakturaperiod anges krävs ingen diagnoskod i sluten vård. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../numberOfDays | NumberOfDaysType | Antal dagar | 0..1 |
| ../../../../onLeave | positiveInteger | Antalet permissionsdagar / Fältet ifylls endast vid sluten vård och avser det antal permissionsdagar som en patient haft under vårdtillfället. / Avser antalet permissionsdagar som ingår i ett vårdtillfälle om patienten haft permission. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../inCare | positiveInteger | Antal vårddagar / Det antal vårddagar som kostnaden debiteras för. / Permissionsdagar ska vara frånräknade. / När in- och utskrivning sker samma dag räknas vårdtiden som en dag. / Ska alltid ifyllas vid sluten vård. / Fältet ifylls även om inte vårddagskostnad debiteras ex vid DRG-debitering. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../healthcareUnit | HealthcareUnitType | Vårdenhet | 1..1 |
| ../../../careUnitId | II | Id / Vårdenhetens identitet / Identitet på den vårdenhet som har utfört, alternativt är medicinskt ansvarig för, den vård som en patient har erhållit. Det är HSA-id för vårdenheten som ska anges. Anges i formatet: SEorganisationsnummer-kod. / root / “1.2.752.129.2.1.4.1” / extension / Exempel SE2321000115-094882. / Ska bli obligatoriskt senast 20xx-01. | 0..1 |
| ../../../careUnitName | string | Namn / Namnet på vårdenheten som utfört vården. / En vårdenhet är en organisatorisk enhet som tillhandahåller hälso- och / sjukvård. Rekommenderas att namnsättning sker enligt / HSA-id. I de fall HSA-id kod anges ska alltid namnsättningen följa koden. / Obligatorisk. | 1..1 |
| ../../../professionCodeForHealthcare ² | string | Yrkeskod / Yrkeskod för hälso- och sjukvårdspersonal som utfört behandlingen. / Yrkeskod ska anges enligt kodverk Kv yrkeskod, OID 1.2.752.129.5.1.29. / Kodverket följer Socialstyrelsens hosp-yrkeskoder men kompletteras med: / Undersköterska (US), / Teampersonal inkl. läkarmedverkan (TP), Teampersonal utan läkarmedverkan (TO), Övrig personal (OV). / Uppgiften ska lämnas inom öppen vård. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../categorization | CategorizationType | Kategorisering | 0..1 |
| ../../../productCategory ² | string | Produktkategori / Kategorisering för typ av prissättning/avgift. / Används för att kunna kategorisera olika typer av debiteringar. / 01=DRG-kod CC-kod för Nord-DRG. / 02 =DRG-kod för Nord DRG. / 03= Patientspecifikt. / 04=Kontaktersättning. / 99= Övrigt / Ska bli obligatoriskt senast 20xx-01. | 0..1 |
| ../../../priceList ² | string | Prislista kod / Kod för typ av prislista. / En gemensam kodifiering av aktuella samverkansavtal tas fram. Ifylls när faktureringen följer aktuellt samverkansavtal. / Följande avtal finns: / 1. Norra Sverige / 2. Uppsala/Örebro / 3. Stockholm/Gotland / 4. Sydöstra Sverige / 5. Västra Sverige / 6. Södra Sverige / Ska bli obligatoriskt fält under nämnda förutsättningar senast 20xx-01. | 0..1 |
| ../../../DRGCost | DRGCostType | DRG-kostnad / Minst en av DRG-kostnad eller Patient specifik åtgärd (se nedan) måste anges. | 0..1 |
| ../../../../DRGCode | CVType | DRG produktkod / Debiterad DRG-kod / Enbart kod enligt DRG sätts i elementet originalText. Koden innehåller fyra tecken, ingen förklarande text skickas i elementet. / Ska ifyllas när debiteringen avser pris för DRG. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../DRGPrice | AmounType | DRG pris / DRG-pris enligt prislista. / Det finns olika prislistor beroende på vilket avtal som fakturering sker från. / Uppgiften ifylls när vårdinsatsens debitering avser fakturering enligt DRG-priser. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../../extendedAllowanceCareTime | AmountType | Ytterfallsersättning, vårdtid / Ytterfallsersättning för den tid patienten har vårdats. / Belopp för ytterfallsersättning, vårdtid / Om vårdtiden avviker mot prislistans framräknade trimgräns/ytterfallsgräns kan ytterfallsersättning debiteras enligt avtal. När detta ska ske är reglerat i samverkansavtalen. / Ofta faktureras detta på egen / faktura. Det är viktigt att korrekt vårdkontakts-id anges dvs samma id som vid fakturerad vårdkontakt. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. / Exempel: / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../../extendedAllowanceCost | AmountType | Ytterfallsersättning, kostnad / Ytterfallsersättning för höga kostnader utöver patientens vårdtid. Belopp för ytterfallsersättning, kostnad. / Om kostnaden avviker mot prislistans  framräknade trimgräns/ytterfallsgräns kan ytterfallsersättning debiteras enligt avtal. När detta ska ske är reglerat i samverkansavtalen. / Ofta faktureras detta på egen / faktura. Det är viktigt att korrekt vårdkontakts-id anges dvs samma id som vid fakturerad vårdkontakt. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientSpecificCare | PatientSpecificCareType | Patient specifik åtgärd / Minst en av Patient specifik åtgärd eller DRG-kostnad (se ovan) måste anges. / Patientspecifika åtgärder enligt särskilda prislistor. Det kan förekomma ett flertal patientspecifika åtgärder / kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. För varje åtgärd ska ett pris anges. / Debitering av vårddagskostnader, besök, mm ska även framgå här. | 0..* |
| ../../../../patientSpecificCareCode | string | Typ av patient specifik åtgärd / Kod när debiteringen avser patientspecifika åtgärder, besök, vårddagar mm. / Uppgiften ifylls när vårdinsatsens debitering inte avser fakturering enligt DRG-priser. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../patientSpecificCareCodeName | string | Patientspecifik åtgärd, namn / Namn för patientspecifik åtgärd när kod för patientspecifik åtgärd har registrerats. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../numberOfPatientSpecificCare | integer | Antal patientspecifik åtgärd / Antalsuppgifter för patientspecifika åtgärder, vårddagar, / besök mm. Antalet åtgärder, vårddagar mm som debiteringen innehåller. / Ifylls alltid i samband med patientspecifik debitering. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../patientSpecificCarePrice | AmountType | Patientspecifik åtgärd, pris / Pris för patientspecifika åtgärder enligt särskilda prislistor när inte debiteringen sker utifrån DRG-priser. / Det kan förekomma ett flertal patientspecifika åtgärder kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. För varje åtgärd ska ett pris anges. / Även belopp för vårddagskostnad, besök mm anges här. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../../patientSpecificCareTotalAmount ² | AmountType | Patientspecifik åtgärd, totalbelopp / Totalbelopp för Patientspecifik åtgärd när detta har debiterats. / Ifylls alltid i samband med patientspecifik debitering. / Pris för patientspecifika åtgärder enligt särskilda prislistor. Det kan förekomma ett flertal patientspecifika åtgärder kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. / Även belopp för den totala vårddags-kostnaden, besökskostnaden anges här. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../../amount | decimal | Belopp | 1..1 |
| ../../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../../text | string |  | 1..1 |
| ../../../../../type | string |  | 0..1 |
| ../../invoicedAmountDetails | InvoicedAmountDetailsType | Fakturerat | 1..1 |
| ../../../patientCareInvoiceGrossAmount ² | AmountType | Patient vårdkontakt, fakturerat belopp brutto / Fakturerat bruttobelopp för vårdinsats. / Belopp efter avdrag av patientavgift. Om fakturerad vårdinsats avser patientspecifika åtgärder ska beloppet / motsvara samtliga detaljrader för patientspecifika priser. / Formel: ”DRG-pris”+”Ytterfallsersättning, / vårdtid”+”Ytterfallsersättning, kostnad” + alla ”Patientspecifik åtgärd, totalbelopp”–”Patientavgift erlagd / öppenvård”. / Samtliga belopp presenteras positivt i filen. / I de flesta fall är det tomt i ett av fälten DRG-pris eller Patientspecifik / åtgärd, totalbelopp. / OBS! I vissa samverkansavtal ska / inte Patientavgift erlagd öppenvård reducera priset. / Obligatoriskt fält. | 1..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientCareInvoiceNetAmount ² | AmountType | Patient vårdkontakt, fakturerat belopp netto / Fakturerat bruttobelopp för vårdinsats netto. / Fakturerat belopp efter avdrag/rabatter. Summan av kolumnen ska stämma med fakturerat belopp enl / fakturan. Om fakturan avser patientspecifika åtgärder / ska fakturerad vårdinsats motsvara samtliga detaljrader / för patientspecifika priser / Formel: ”Patient vårdkontakt, fakturerat belopp / brutto”+”Patient vårdkontakt, påslag/avgifter”-”Patient / vårdkontakt, avdrag 6 % momskompensation”-”Patient / vårdkontakt, rabatt”. / Samtliga belopp presenteras positivt i filen. Vilka uppgifter som ifylls beror på vilket samverkansavtal fakturering sker efter. / Obligatoriskt fält. | 1..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientCareAllowance | AmountType | Patient vårdkontakt, avdrag 6 % momskompensation / Avdrag (momskompensation) för 6 % moms som säljaren kan söka statsbidrag för vid köp från privat / vårdgivare. Ifylls endast vid privat vård och detta är reglerat i samverkansavtal. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientCareDiscount | AmountType | Patient vårdkontakt, rabatt / I fältet ska anges belopp för rabatt i de fall detta finns. Rabatter regleras i samverkansavtalen. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: 1.0.4217 | 1..1 |
| ../../../patientCareCharge | AmountType | Patient vårdtillfälle, påslag och avgifter / I fältet ska anges påslag för avgifter mm i det fall detta finns. Påslag/avgifter regleras i samverkansavtalen. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../outPatientCareFee | AmountType | Patientavgift öppenvård / Patientavgiften för öppenvård enligt vårdande regions prislista. / Information om vilken patientavgift som är beslutad för aktuell debitering. Kan anges om beloppet avviker från / Patientavgift erlagd öppenvård. / Fältet är frivillig uppgift. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../outPatientCareFeePaid | AmountType | Patientavgift erlagd öppenvård / Patientavgift för öppenvård som erlagts av patienten. / Den del som patienten betalt. Beloppet kan avvika / jämfört med fältet ”Patientavgift öppenvård” pga frikort / mm. / Ska endast ifyllas när patientavgiften påverkar fakturerat belopp. / När uppgift ska lämnas styrs av de olika samverkansavtalen. / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../patientFeeReducedCategory ² | string | Patientavgift nedsatt, kategori / Kategorisering av varför patient inte betalar full avgift. Ska endast lämnas när patientavgiften påverkar priset / enligt prislista. / Detta regleras i samverkansavtalen. / Giltiga koder: / 01=Frikort / 02=Barn och ungdom / 03=Rådgivning, födelsekontroll / 04=Antibiotikafri behandling / 05=Person över 85 år / 99=Övrigt / Obligatoriskt fält under nämnda förutsättningar senast / 20xx-01. | 0..1 |
| ../../../patientFreePassCauseIndicator | boolean | Patientavgift Frikortsgrundad indikator / Frikortsgrundande patientavgift. Information om debiterad vård är frikortsberättigad i säljande region. / Möjlighet att fånga en erlagd patientavgift för central hantering och bevakning av frikortsbelopp i köpande region. / True = är frikortsgrundad / false = ej frikortsgrundad / Frivillig uppgift. | 0..1 |
| ../../../inpatientCareFee | AmountType | Patientavgift, slutenvård / Patientens patientavgift för behandlingen i sluten vård. / Möjlighet att i framtiden fånga patientavgiften även i sluten vård. / Frivillig uppgift. | 0..1 |
| ../../../../amount | decimal | Belopp | 1..1 |
| ../../../../currency ² | CVType | Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK. / code: SEK / codeSystem: ”1.0.4217” | 1..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../activity | ActivityType | Verksamhet | 1..1 |
| ../../../medicalFieldCode | string | Medicinskt verksamhetsområde / Treställig kod från Socialstyrelsen / Klinikkod (specialitet), medicinskt ansvarig enligt kodverk från Socialstyrelsen. / Obligatoriskt fält. | 1..1 |
| ../../../businessClassification | CVType | Verksamhetskod / Fyrställig kod för den typ av verksamhet som bedrivs enligt HSA:s verksamhetskodverk. / Uppgiften kan inhämtas från HSA, men det är viktigt att i så fall även titta på verksamhetskoder för vårdenhetens ingående enheter samt att först därefter välja den verksamhetskod som är aktuell för det specifika vårdtillfället. / code: Ur HSAs kodverk Verksamhetskod codesystem: 1.2.752.129.2.2.1.3 / Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../careLevel ² | string | Vårdnivå / Kategorisering av vårdnivå. / Vårdnivå för aktuell vårdkontakt anges. / Primärvård avser hälso- och sjukvårdsverksamhet där öppenvård ges utan avgränsning när det gäller sjukdomar, ålder eller patientgrupper. Primärvården svarar för behovet av sådana åtgärder i form av medicinsk bedömning och behandling, omvårdnad, förebyggande arbete och rehabilitering som inte kräver särskilda medicinska eller tekniska resurser eller någon annan särskild kompetens. / Länssjukvård avser olika typer av specialistvård som täcker de flesta områden exklusive vård enligt regionsjukvård och nationell högspecialiserad vård. / Regionsjukvård avser vård som bedrivs vid Sveriges universitetssjukhus. Benämns i Riksavtalet för utomlänsvård som samverkansregionsjukvård. / Nationell högspecialiserad vård är vård inom områden som Socialstyrelsen har gett särskilt tillstånd till och ges endast hos ett fåtal vårdgivare som kan uppfylla kraven på kompetens, tillgänglighet och arbete i multidisciplinära team. / 1=Primärvård / 2=Länssjukvård / 3=Regionsjukvård / 4=Nationell högspecialiserad vård / Ska bli obligatoriskt fält senast 20xx-01. | 0..1 |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
| ../../../../text | string |  | 1..1 |
| ../../../../type | string |  | 0..1 |
| ../../diagnosis ² | DiagnosisType | Diagnos | 0..1 |
| ../../../inpatientCareDiagnosis | PatientDiagnosisType | Diagnos slutenvård / Diagnos ska lämnas för sluten somatisk vård. (Ej psykiatrisk vård) / Obligatoriskt fält under nämnda förutsättningar. | 0..1 |
| ../../../../mainDiagnosis ² | DiagnosisCodeType | Huvuddiagnos / Huvuddiagnos, Diagnos 1. Ska registreras för somatisk / sluten vård.  (Ej psykiatrisk vård). / Huvuddiagnosen är det tillstånd (sjukdom, skada etc.) vars behandling och utredning varit / huvudorsaken till patientens sjukhusvistelse. / Obligatoriskt fält om fältet Diagnos slutenvård används. | 1..1 |
| ../../../../../diagnosisCode | CVType | Diagnoskod / Kod för diagnos. / Det kodsystem som styr vilken diagnos som angivits. / I sluten vård ska det alltid vara kod enligt ICD10-SE. / I öppen vård bör det vara enligt / ICD10-SE men även andra koddiagnoser kan finnas. / Code: / codesystem: ”1.2.752.116.1.1.1.1.3” / Obligatoriskt fält. | 1..1 |
| ../../../../biDiagnosis | DiagnosisCodeType | Bidiagnos / Diagnos 2-x . Det kan förekomma ett flertal bidiagnoser kopplade till ett sjukdomsfall. Dessa uppgifter måste / således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. / Obligatoriskt fält under nämnda förutsättningar. | 0..* |
| ../../../../../diagnosisCode | CVType | Diagnoskod / Kod för diagnos. / Det kodsystem som styr vilken diagnos som angivits. / I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE men även / andra koddiagnoser kan finnas. / Code: / codesystem: ”1.2.752.116.1.1.1.1.3” / Obligatoriskt fält. | 1..1 |
| ../../../outpatientCareDiagnosis | PatientDiagnosisType | Diagnos öppenvård / Anges för öppen specialistvård när denna uppgift finns. Ska inte lämnas för primärvård och psykiatrisk vård. / Obligatoriskt fält under nämna förutsättningar. | 0..1 |
| ../../../../mainDiagnosis | DiagnosisCodeType | Huvuddiagnos / Huvuddiagnos, Diagnos 1. Ska registreras för somatisk öppenvård när denna uppgift finns. Ska inte lämnas för primärvård och psykiatrisk öppenvård. / Huvuddiagnosen är det tillstånd (sjukdom, skada etc.) vars behandling och utredning varit huvudorsaken till patientens sjukhusvistelse. / Obligatoriskt fält om fältet Diagnos öppenvård används. | 1..1 |
| ../../../../../diagnosisCode | CVType | Diagnoskod / Det kodsystem som styr vilken diagnos som angivits. / I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE med även andra koddiagnoser kan finnas. / Code: / codesystem: ”1.2.752.116.1.1.1.1.3” / Obligatoriskt fält. | 1..1 |
| ../../../../biDiagnosis | DiagnosisCodeType | Bidiagnos / Diagnos 2-x .Det kan förekomma ett flertal bidiagnoser / kopplade till ett sjukdomsfall. Dessa uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. / Obligatoriskt fält under nämnda förutsättningar. | 0..* |
| ../../../../../diagnosisCode | CVType | Diagnoskod / Kod för diagnos. / Det kodsystem som styr vilken diagnos som angivits. / I sluten vård ska det alltid vara kod enligt ICD10-SE. I öppen vård bör det vara enligt ICD10-SE men även / andra koddiagnoser kan finnas. / Code: / codesystem: ”1.2.752.116.1.1.1.1.3” / Obligatoriskt fält. | 1..1 |
| ../../treatment | TreatmentType | Åtgärd | 0..1 |
| ../../../typeOfTreatment | CVType | Åtgärdskod / Det kan förekomma ett flertal åtgärder och därmed åtgärdskoder kopplade till ett sjukdomsfall. Dessa / uppgifter måste således kunna anges på flera rader kopplade till en vårdkontakt i filbeskrivningen. Åtgärder / ska inte lämnas för primärvård och psykiatrisk vård. / Enligt socialstyrelsens klassifikation av vårdåtgärder (KVÅ). / Code: / codesystem:” 1.2.752.116.1.3.2.1.4” / Obligatoriskt fält under nämnda förutsättningar. | 0..* |
| ../../../ATC | CVType | ATC kod / Läkemedel enligt ATC-kod. / Betydande kostnader för läkemedel i en behandling kan specificerat med ATC-koder. / Code: / codesystem: ”1.2.752.129.2.2.3.1.1” / Frivillig uppgift. | 0..* |
| ../../../unspecified | UnspecifiedType | Ospecificerat / Ett antal fria tomma fält som kan användas unikt för respektive region i relationer med privata vårdgivare enligt egna vårdavtal mm. / Frivillig uppgift. | 0..* |
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
| ÖR3 [sch] | supplierParty / (id säljare och köpare) | Obligatoriskt med 1.3.7 (organisationsnummer) för root, och 10 tecken för extension. / Man kan även skicka med ett sekundärt 2.51.1.6 (GLN). / Med ett värde på 13 tecken för 2.51.1.6. |
| ÖR4 [sch] | typeOfInvoice (fakturatyp) | Giltiga värden: 380, 381 |
| ÖR5 [sch] | payableAmount (fakturabelopp) | Total summa fakturerat i fakturan är fel. / Fakturabelopp och fakturerat belopp netto skiljer sig åt med mer än en krona. |
| ÖR6 [sch] | PatientCareInvoiceNetAmount (Patient vårdtillfälle, fakturerat belopp netto) | Nettofakturerat är fel. / patientCareInvoiceNetAmount = patientCareInvoiceGrossAmount + patientCareCharge – patientCareAllowance – patientCareDiscount |
| ÖR7 [sch] | patientId (patient id) | Endast ett av personnummer, samordningsnummer, reservnummer tillåtet |
| ÖR8 [sch] | county (län) | Exakt 2 tecken. |
| ÖR9 [sch] | municipality (kommun) | Exakt 4 tecken. |
| ÖR10 [sch] | gender (kön) | Giltiga värden: / 0,1,2,9 |
| ÖR11 [sch] | careContactId (vårdkontakt id) | Obligatoriskt för slutenvård |
| ÖR12[sch] | typeOfAgreement (betalningsförbindelsetyp avtal) | Giltiga värden: 1, 2, 3 |
| ÖR13 [sch] | typeOfChapter (betalningsförbindelsetyp kapitel) | Giltiga värden: / 1, 2, 3, 4, 5, 6, 7 |
| ÖR14 [sch] | typeOfReimbursement (Betalningsförbindelse, ersättningstyp) | Giltiga värden: 1, 2 |
| ÖR15 [sch] | typeOfCare (slutenvård öppenvård) | Giltiga värden: / 01, 02 |
| ÖR16 [sch] | typeOfVisit (typ av besök) | Giltiga värden: / 1, 2 |
| ÖR17 [sch] | careVisitDate (Inskrivnings-/besöksdatum för vård) | Får inte vara senare än bilagedatum |
| ÖR18 [sch] | careDischargeDate (utskrivningsdatum från vård) | Får inte vara tidigare än Besöksdatum |
| ÖR19 [sch] | invoicePeriod (fakturaperiod) | Både start och slutperiod ska vara med i Fakturaperiod |
| ÖR20 [sch] | invoicePeriod.start och invoicePeriod.end | Fakturaperiod får inte vara senare än bilagedatumet |
| ÖR21 [sch] | invoicePeriod.end | Fakturaperiod slutdatum får inte vara tidigare än fakturaperiod startdatum |
| ÖR22 [sch] | professionCodeForHealthcare (yrkeskod) | Giltiga värden: / AP AT AU BM BA DT FT HK KP LG LK NA OP OT PS PT RC RS SG SF SJ TH TL US TP TO OV |
| ÖR23 [sch] | professionCodeForHealthcare (yrkeskod) | Yrkeskod är obligatoriskt för öppenvård |
| ÖR24 [sch] | productCategory (produktkategori) | Giltiga värden: / 01, 02, 03, 04, 99 |
| ÖR25 [sch] | priceList (prislista, kod) | Giltiga värden: / 1, 2, 3, 4, 5, 6 |
| ÖR26 [sch] | patientSpecificCareTotalAmount (Patientspecifik åtgärd, totalbelopp) | Summa ”Patientspecifik åtgärd, totalbelopp” är fel. / patientSpecificCareTotalAmount = numberOfPatientSpecificCare * patientSpecificCarePrice |
| ÖR27 [sch] | patientCareInvoiceGrossAmount (Patient vårdkontakt, fakturerat belopp brutto) | Brutto fakturerat är fel. / PatientCareInvoiceGrossAmount = DRGPrice + ExtendedAllowanceCareTime + ExtendedAllowanceCost + PatientSpecificCareTotalAmount – OutPatientCareFeePaid |
| ÖR28 [sch] | patientCareInvoiceNetAmount (Patient vårdkontakt, fakturerat belopp netto) | Netto fakturerat är fel. / patientCareInvoiceNetAmount = patientCareInvoiceGrossAmount + patientCareCharge – patientCareAllowance – patientCareDiscount |
| ÖR29 [sch] | patientFeeReducedCategory (Patientavgift nedsatt, kategori) | Giltiga värden: / 01, 02, 03, 04, 05, 99 |
| ÖR30 [sch] | careLevel (vårdnivå) | Giltiga värden: / 1, 2, 3, 4 |
| ÖR31 [sch] | inPatientCareDiagnosis.mainDiagnosis | Huvuddiagnos är obligatoriskt för slutenvård om inte invoicePeriod har angetts. |
| ÖR32 [sch] | diagnosis (diagnos) | Code och codeSystem ska finnas. / Ersätts av R39 |
| ÖR33 [sch] | diagnosis, treatment, medicalFieldCode (diagnoser, åtgärder) | Diagnoser och åtgärder får ej förekomma när medicalFieldCode börjar med 9 |
| ÖR34 [sch] | listingLocalAuthoritiesNumber.root(listningsregion) | Måste vara satt till oid för hsaid (1.2.752.129.2.1.4.1) |
| ÖR35 [sch] | currency (valuta) | Valuta måste vara SEK, codeSystem måste vara 1.0.4217 |
| ÖR36 [sch] | reasonForCredit (orsak till kreditering) | Giltiga värden: / 1, 2, 3, 4, 5, 6, 7, 8, 9 |
| ÖR37 [sch] | id (fakturaunderlag id) | Id måste börja på ZVF samt ha en längd på 23 tecken. |
| ÖR38 [sch] | careDischargeDate (utskrivningsdatum) | Utskrivningsdatum får inte vara senare än Bilagedatum |
| ÖR39 [sch] | CVType.code, CVType.codeSystem | Verifierar att code och codeSystem är satt för alla CVType. / Undantag för county och municipality som har egna regler (ÖR40 och ÖR41) / Undantag även för DRGCode som har en egen regel ÖR42 |
| ÖR40 [sch] | counte.code, county.codeSystem | code och codeSystem måste ha giltiga värden. / Undantag för code 99 då codeSystem ej skickas med. |
| ÖR41 [sch] | municipality.code, municipality.codeSystem | code och codeSystem måste ha giltiga värden. / Undantag för code 9901 då codeSystem ej skickas med. |
| ÖR42 [sch] | DRGCode | Verifierar att DRGCode har originalText satt och endast originalText. |
| ÖR43 [sch] | lineID | Verifierar att lineId är unikt och i stigande ordning. |
| ÖR44 [sch] | categorization | Verifierar att minst en patientspecifik åtgärd eller DRG-kostnad anges. |
| ÖR45 [sch] | DRGCost | Verifierar att DRGPrice och DRGCode anges för varje DRGCost |
| ÖR46 [sch] | customerParty | Obligatoriskt med 1.3.7 (organisationsnummer) för root, och 10 tecken för extension. / Man kan även skicka med ett sekundärt 2.51.1.6 (GLN). / Med ett värde på 13 tecken för 2.51.1.6. |
| ÖR47 [sch] | patientSpecificCare | Om patientSpecificCare finns så måste elementen patientSpecificCareCode, patientSpecificCareCodeName, patientSpecificCarePrice samt numberOfPatientSpecificCare finnas. |
| ÖR48 [sch] | identification / (id säljare och köpare) | Verifierar längd på identification/extension som skall vara 10 tecken för 1.3.7 och 13 tecken för 2.51.1.6 |
| ÖR49 [sch] | medicalFieldCode | Verifierar medicalFieldCode gentemot mvo.xml som skall stämma överens med Socialstyrelsens register över godkända medicinska verksamhetskoder. |
| ÖR50 [sch] | agreementInRiksavtalet | Giltiga värden: 3.1, 3.2, 4.1, 4.3, 4.4 |
| ÖR51 [sch] | inCare (Antal vårddagar) | Obligatoriskt vid slutenvård. |
| ÖR52 [sch] | referenceToProcessClaimSpecificationId | Obligatoriskt vid kreditfaktura. |
|  |  |  |

| Regler i svaret | Regler i svaret | Regler i svaret |
| :--- | :--- | :--- |
| OK |  | Transaktionen har utförts enligt uppdraget i begäran. |
| INFO |  | Används ej i ProcessClaimSpecification |
| ERROR |  | Transaktionen har INTE kunnat utföras enligt anrop p.g.a. logiskt fel. / Fältet comment ska sättas till den rapport som skapas av schematron-reglerna eller schema-validering. / Meddelandet anses inte mottaget. / Exempel meddelande i comment (schematron): / Error: Total summa: 729001 fakturerat i fakturan är fel / Location: / /urn1:ProcessClaimSpecification/urn1:claimSpecification / /urn2:payableAmount/urn2:amount / Id: R5 / Test: . = sum(//urn2:invoicedAmountDetails/ urn2:patientCareInvoiceNetAmount/urn2:amount) |

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

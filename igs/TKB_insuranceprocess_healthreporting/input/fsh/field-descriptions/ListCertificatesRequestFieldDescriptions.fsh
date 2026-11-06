// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ListCertificatesRequestFieldDescriptions
* nationalIdentityNumber ^definition = "Patientens personnummer eller samordningsnummer"
* nationalIdentityNumber ^comment = "TKB-fält: `nationalIdentityNumber` (`string`, kardinalitet 1..1)."
* certificateType ^definition = "Typ av intyg. Om inget anges returneras alla typer."
* certificateType ^comment = "TKB-fält: `certificateType` (`string`, kardinalitet 0..n)."
* available ^definition = "Anger om man skall returnera tillgängliga (true) eller icke tillgängliga (false) intyg som är registrerade i intygstjänsten. Dvs om det kan användas (hämtas).

Om inget anges antas true."
* available ^comment = "TKB-fält: `available` (`string`, kardinalitet 0..1).

**Modellanteckning:** ASSUME: Fältet är 'string' i XSD men representerar ett booleskt värde. Mappat till boolean."
* fromDate ^definition = "Startdatum för sökning för utfärdandedatum för intyget. Om inget anges görs ingen datum begränsning."
* fromDate ^comment = "TKB-fält: `fromDate` (`datum`, kardinalitet 0..1)."
* toDate ^definition = "Slutdatum för sökning för utfärdandedatum för intyget. Om inget anges görs ingen datum begränsning."
* toDate ^comment = "TKB-fält: `toDate` (`datum`, kardinalitet 0..1)."

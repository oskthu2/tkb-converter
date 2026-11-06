// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessRegistrationNotificationRequestFieldDescriptions
* registrationType ^definition = "Den typ av registrering i kvalitetsregistret som notifieringen avses ge upphov till.

Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret."
* registrationType ^comment = "TKB-fält: `type` (`string`, kardinalitet 0..1)."
* patientId ^definition = "Id för patienten där fältet extension sätts till patientens identitetsbeteckning. Anges med 12 tecken utan avskiljare.

Fältet root sätts till OID för typ av identifierare.

För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.

För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas."
* patientId ^comment = "TKB-fält: `patientId` (`IIType`, kardinalitet 1..*)."
* healthcareProviderId ^definition = "Id för informationsägande vårdgivare för informationen i notifieringen.

Anges för att möjliggöra spårbarhet till informationsägande vårdgivare för informationen som lämnas ut och som hanteras av informationsmottaren eller andra parter.

I första hand HSA-id alternativt i andra hand organisationsnummer.

Om HSA-id används sätts fältet root till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id.

Om organisationsnummer används skall fältet root sättas till OID för organisationsnummer (1.2.752.29.4.3) och fältet extension sättas till organisationsnumret.

Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer."
* healthcareProviderId ^comment = "TKB-fält: `healthcareProviderId` (`IIType`, kardinalitet 1..1)."
* registerUnitId ^definition = "Id för registerenhet.

Registerenhet är den minsta indelning av datatillhörighet som ett kvalitetsregister använder för registrering och analys av data. Inte sällan motsvarar en registerenhet en vårdenhet inom vårdgivaren, men inte alltid.

Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret."
* registerUnitId ^comment = "TKB-fält: `registerUnitId` (`string`, kardinalitet 0..1)."
* reference ^definition = "Information om referenser till tidigare registreringar i kvalitetsregistret. Informationen används för att ge rätt kontext på den avsedda registreringen.

Ska anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret."
* reference ^comment = "TKB-fält: `reference` (`ReferenceType`, kardinalitet 0..*)."
* nkrrParameters ^definition = "Här kan parametrar som används i begäran för tjänstekontraktet GetFormData anges.

Parametrarna ska fyllas i enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret."
* nkrrParameters ^comment = "TKB-fält: `NkrrParameters` (`NkrrParametersType`, kardinalitet 0..1)."

## Tjänstekontrakt

### GetCommissionsForPerson
Tjänst som hämtar alla medarbetaruppdrag som personen är kopplad till. Tjänsten returnerar även vilket uppdrag som valdes vid senaste tillfället. Det senaste valda uppdraget returneras alltid, även ifall inget val gjorts de senaste 12 timmarna, detta kan användas för att presentera det uppdrag användaren valde senast. Dessutom returneras om ett uppdrag valts inom de senaste 12 timmarna. Denna tjänst finns för att en medarbetare endast ska behöva välja uppdrag en gång per normalt arbetspass, oavsett om användaren använder en tunn klient eller rik klient. Tjänsten kan användas som en del i autentiseringstjänsten, samt rika klienter som vill göra ett uppdragsval direkt i den rika klienten.

#### Version
1.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personalHsaId *) | commissionservice:HsaId | HSA-id för den aktör som medarbetaruppdrag ska hämtas för. | 0..1 |
| personalIdentityNumber *) | commissionservice:PersonalIdentityNumber | Personnummer för den aktör som medarbetaruppdrag ska hämtas för. | 0..1 |
| Svar |  |  |  |
| getCommissionsForPerson | commissionservice:GetCommissionsForPersonResult | En lista med medarbetaruppdrag, det senast valda uppdraget och ifall ett uppdrag har valts (inom de senaste 12 timmarna) | 1..1 |

#### Regler
Anropande system ska ha behörighet att anropa tjänsten.  Om behörighet nekas skall felkod ACCESSDENIED returneras och flödet avbryts.
Tiden för hur länge ett uppdrag ska anses vara valt efter ett anrop till SetCommissionForPerson är konfigurerbart (12h är default).
Personen anges antingen med HSA-id eller personnummer. Om man inte anger något av dessa eller att personnummer/HSA-id inte är giltigt returneras statuskod VALIDATIONERROR.
*) personHsaId och personalIdentityNumber
Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.

#### Övriga regler

##### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid | < 1 + (Tiden för HSA-WS  anrop)  sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,8 |  |
| Last | 10 transaktion per sekund |  |
| Aktualitet | Grundprincipen är att alla aktiva medarbetaruppdrag som personen är kopplad till returneras. |  |

#### Annan information om kontraktet

##### Frivillighet
Obligatorisk för tjänsteproducent.

##### Tjänsteinteraktion
GetCommissionsForPerson

##### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
```xml
<ns0:GetCommissionsForPersonRequest xmlns:ns0="urn:riv:ehr:commission:GetCommissionsForPersonResponder:1" xmlns:ns1="urn:riv:ehr:commission:1">
  <!-- Optional -->
  <ns0:PersonalHsaId>?</ns0:PersonalHsaId>
  <!-- Optional -->
  <ns0:PersonalIdentityNumber>?</ns0:PersonalIdentityNumber>
</ns0:GetCommissionsForPersonRequest>
```

##### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
```xml
<ns0:GetCommissionsForPersonResponse xmlns:ns0="urn:riv:ehr:commission:GetCommissionsForPersonResponder:1" xmlns:ns1="urn:riv:ehr:commission:1">
  <ns0:GetCommissionsForPerson>
    <ns1:Result>
      <ns1:ResultCode>?</ns1:ResultCode>
      <ns1:ResultText>?</ns1:ResultText>
    </ns1:Result>
    <!-- Optional -->
    <ns1:LastSelectedCommissionHsaId>?</ns1:LastSelectedCommissionHsaId>
    <ns1:SelectionPerformed>?</ns1:SelectionPerformed>
    <!-- Optional -->
    <!-- Array -->
    <ns1:Commissions>
      <ns1:CommissionHsaId>?</ns1:CommissionHsaId>
      <ns1:CommissionName>?</ns1:CommissionName>
      <ns1:CommissionPurpose>?</ns1:CommissionPurpose>
      <!-- Optional -->
      <ns1:HealthCareUnitHsaId>?</ns1:HealthCareUnitHsaId>
      <!-- Optional -->
      <ns1:HealthCareUnitName>?</ns1:HealthCareUnitName>
      <!-- Optional -->
      <ns1:HealthCareUnitStartDate>?</ns1:HealthCareUnitStartDate>
      <!-- Optional -->
      <ns1:HealthCareUnitEndDate>?</ns1:HealthCareUnitEndDate>
      <ns1:HealthCareProviderHsaId>?</ns1:HealthCareProviderHsaId>
      <ns1:HealthCareProviderName>?</ns1:HealthCareProviderName>
      <!-- Optional -->
      <ns1:HealthCareProviderOrgNo>?</ns1:HealthCareProviderOrgNo>
      <!-- Optional -->
      <ns1:HealthCareProviderStartDate>?</ns1:HealthCareProviderStartDate>
      <!-- Optional -->
      <ns1:HealthCareProviderEndDate>?</ns1:HealthCareProviderEndDate>
    </ns1:Commissions>
  </ns0:GetCommissionsForPerson>
</ns0:GetCommissionsForPersonResponse>
```

#### 7.1 Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetCommissionsForPersonInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetCommissionsForPersonInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_commission_1.0.xsd](files/schema/ehr_commission_1.0.xsd) | Domänschema (delat) |
| [GetCommissionsForPersonResponder_1.0.xsd](files/schema/GetCommissionsForPersonResponder_1.0.xsd) | Tjänstespecifikt schema |
| [itintegration_registry_1.0.xsd](files/schema/itintegration_registry_1.0.xsd) | Beroende schema |
| [AB_ehr_commission_1.0_RC1.docx](files/docs/AB_ehr_commission_1.0_RC1.docx) | Arkitekturbeskrivning |

#### 7.1 FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getcommissionsforperson](StructureDefinition-getcommissionsforperson.html)
* **Logisk modell (request):** [StructureDefinition/getcommissionsforperson-request](StructureDefinition-getcommissionsforperson-request.html)
* **Kodsystem:** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.html)
* **ValueSet:** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.html)

---

### SetSelectedCommissionForPerson
Tjänst för att välja ett medarbetaruppdrag för en person. Valet är sedan aktuellt under nästkommande 12 timmar, vilket gör att kommande anrop till tjänsten GetCommissionsForPerson (inom 12 timmar) returnerar att ett uppdrag valts.
Det finns även möjlighet att nollställa valet genom att utelämna commissionHsaId i anropet. Detta kan t.ex. användas av autentiseringstjänsten för att tvinga fram ett uppdragsval på nytt även ifall det inte gått 12 timmar (dvs. för att stödja funktionen "Byta Uppdrag").

#### Version
1.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personalHsaId *) | commissionservice:HsaId | HSA-id för den aktör som medarbetaruppdrag ska hämtas för. | 0..1 |
| personalIdentityNumber *) | commissionservice:PersonalIdentityNumber | Personnummer för den aktör som medarbetaruppdrag ska hämtas för. | 0..1 |
| commissionHsaId | commissionservice:HsaId | HsaId för vilket uppdrag som är valt. Om detta fält utelämnas, så blir inget uppdrag valt. Detta kan vara aktuellt vid utloggning från en tunn klient. | 0..1 |
| Svar |  |  |  |
| setSelectedCommissionForPerson | commissionservice:Result | Resultat av valt uppdrag. | 1..1 |

#### Regler
Anropande system ska ha behörighet att anropa tjänsten. Om behörighet nekas skall felkod ACCESSDENIED returneras och flödet avbryts.
Tiden för hur länge ett uppdrag ska anses vara valt efter ett anrop till SetCommissionForPerson är konfigurerbart (12h är default).
*) Personen anges antingen med HSA-id eller personnummer. Om man inte anger något av dessa eller att personnummer/HSA-id inte är giltigt returneras statuskod VALIDATIONERROR.

#### Övriga regler

##### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid | <1 s |  |
| Tillgänglighet | 24x7, 99,8% |  |
| Last | 10 transaktion per sekund |  |
| Aktualitet | Tjänsten garanterar att medarbetaruppdraget är valt om anropet genomförts utan fel. |  |

#### Annan information om kontraktet

##### Frivillighet
Obligatorisk för tjänsteproducent.

##### Tjänsteinteraktion
SetSelectedCommissionForPerson

##### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
```xml
<ns0:SetSelectedCommissionForPersonRequest xmlns:ns0="urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1" xmlns:ns1="urn:riv:ehr:commission:1">
  <!-- Optional -->
  <ns0:PersonalHsaId>?</ns0:PersonalHsaId>
  <!-- Optional -->
  <ns0:PersonalIdentityNumber>?</ns0:PersonalIdentityNumber>
  <!-- Optional -->
  <ns0:CommissionHsaId>?</ns0:CommissionHsaId>
</ns0:SetSelectedCommissionForPersonRequest>
```

##### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
```xml
<ns0:SetSelectedCommissionForPersonResponse xmlns:ns0="urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1" xmlns:ns1="urn:riv:ehr:commission:1">
  <ns0:SetSelectedCommissionForPerson>
    <ns1:ResultCode>?</ns1:ResultCode>
    <ns1:ResultText>?</ns1:ResultText>
  </ns0:SetSelectedCommissionForPerson>
</ns0:SetSelectedCommissionForPersonResponse>
```

#### 7.2 Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [SetSelectedCommissionForPersonInteraction_1.0_RIVTABP21.wsdl](files/wsdl/SetSelectedCommissionForPersonInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [ehr_commission_1.0.xsd](files/schema/ehr_commission_1.0.xsd) | Domänschema (delat) |
| [SetSelectedCommissionForPersonResponder_1.0.xsd](files/schema/SetSelectedCommissionForPersonResponder_1.0.xsd) | Tjänstespecifikt schema |
| [itintegration_registry_1.0.xsd](files/schema/itintegration_registry_1.0.xsd) | Beroende schema |
| [AB_ehr_commission_1.0_RC1.docx](files/docs/AB_ehr_commission_1.0_RC1.docx) | Arkitekturbeskrivning |

#### 7.2 FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/setselectedcommissionforperson](StructureDefinition-setselectedcommissionforperson.html)
* **Logisk modell (request):** [StructureDefinition/setselectedcommissionforperson-request](StructureDefinition-setselectedcommissionforperson-request.html)
* **Kodsystem (delat):** [CodeSystem/resultcode-cs](CodeSystem-resultcode-cs.html)
* **ValueSet (delat):** [ValueSet/resultcode-vs](ValueSet-resultcode-vs.html)

---

## Datatyper

Kapitlet beskriver alla datatyper som används av tjänsterna, version 1.0.
Datatyper från namnrymd `urn:riv:ehr:commission:1`. Nedan beskrivs komplexa datatyper som är deklarerade i aktuell namnrymd `urn:riv:ehr:commission:1`, version 1.0.

#### commissionservice:Commission
Datatyp för medarbetaruppdrag.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| commissionHsaId | commissionservice:HsaId | Medarbetaruppdragets HSA-id | 1 |
| commissionName | xs:string | Medarbetaruppdragets Namn | 1 |
| commissionPurpose | xs:string | Medarbetaruppdragets ändamål | 1 |
| healthCareUnitHsaId | commissionservice:HsaId | HSA-id för vårdenhet enligt PDL | 0..1 |
| healthCareUnitName | xs:string | Vårdenhetens namn | 0..1 |
| healthCareUnitStartDate | xs:dateTime | Startdatum för vårdenhetens verksamhet | 0..1 |
| healthCareUnitEndDate | xs:dateTime | Slutdatum för vårdenhetens verksamhet | 0..1 |
| healthCareProviderHsaId | commissionservice:HsaId | Vårdgivarens HSA-id | 1 |
| healthCareProviderName | xs:string | Vårdgivarens Namn | 1 |
| healthCareProviderOrgNo | xs:string | Vårdgivarens organisationsnummer | 0..1 |
| healthCareProviderStartDate | xs:dateTime | Startdatum för vårdgivarens verksamhet | 0..1 |
| healthCareProviderEndDate | xs:dateTime | Slutdatum för vårdgivarens verksamhet | 0..1 |

#### commissionservice:GetCommissionsForPersonResult
Datatyp som innehåller resultatet från tjänsten GetCommissionsForPerson.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| lastSelectedCommissionHsaId | commissionservice:HsaId | Personens valda uppdrag. | 0..1 |
| selectionPerformed | xs:boolean | Check om ett uppdrag valts inom de senaste 12 timmarna. | 1 |
| commissions | commissionservice:Commission | De medarbetaruppdrag som personen är kopplad till. | 0..* |

#### commissionservice:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9. eller motsvarande.
Maxlängd: 32

#### commissionservice:PersonalIdentityNumber
Datatyp som representerar ett personnummer, samordningsnummer.
Maxlängd: 12

#### commissionservice:Result
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | commissionservice:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |

#### commissionservice:ResultCode
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "uppdrag ej valt". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "personen finns inte i HSA". |
| "VALIDATIONERROR" | En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |

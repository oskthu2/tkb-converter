// Genererad från TKB crm:requeststatus v2.0.1
// Kontrakt: GetRequestActivities v2.0
// Genererad: 2026-03-24

Logical: GetRequestActivities
Id: getrequestactivities
Title: "GetRequestActivities"
Description: """
  Logisk modell för tjänstekontraktet GetRequestActivities
  (RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2).
  Representerar responsens informationsstruktur — en lista med statusrader för en patients remisser.
"""
Characteristics: #can-be-target

* requestActivity 0..* BackboneElement "Remisstatus som matchar begäran"
  """
  Lista med statusrader för remisser. En rad per aktivitet/status som en remiss passerat i remissprocessen.
  """

* requestActivity.header 1..1 BackboneElement "Gemensam information om remisstatusen"
  """
  Innehåller information som är gemensam för remisstatusen, exempelvis information om hälso- och
  sjukvårdspersonal och signering.
  """

* requestActivity.header.accessControlHeader 1..1 BackboneElement "Information för åtkomstkontroll"
  """
  Information som används för kontroll av åtkomst enligt PDL.
  """

* requestActivity.header.accessControlHeader.accountableHealthcareProvider 1..1 Identifier "Uppgiftsägande vårdgivare"
  """
  Id för uppgiftsägande vårdgivare. I första hand HSA-id, i andra hand organisationsnummer.
  Om HSA-id: root = 1.2.752.129.2.1.4.1, extension = HSA-id.
  Om org.nr: root = 1.2.752.29.4.3, extension = organisationsnumret.
  Regel 2.1: Krävs för spärrhantering, åtkomstkontroll och loggning (PDL).
  """

* requestActivity.header.accessControlHeader.accountableCareUnit 0..1 Identifier "Vårdenhet"
  """
  HSA-id för vårdenhet där uppgiften är dokumenterad.
  root = 1.2.752.129.2.1.4.1 (HSA OID), extension = HSA-id.
  Regel 2.1: Krävs för PDL-hantering.
  """

* requestActivity.header.accessControlHeader.originalPatientId 0..1 Identifier "Ursprunglig patientidentifierare"
  """
  Personidentifieraren som remisstatusen lagrades under vid skapande. Anges endast om den
  skiljer sig från patientId i begäran (t.ex. samordningsnummer → personnummer).
  """

* requestActivity.header.accessControlHeader.careProcessId 0..1 Identifier "Vårdprocess-id"
  """
  Id för individanpassad vårdprocess som remisstatusen journalförts inom.
  Lokalt genererat UUID: root = UUID, extension anges ej.
  """

* requestActivity.header.accessControlHeader.blockComparisonTime 1..1 instant "Tidpunkt för spärrkontroll"
  """
  Den tidpunkt mot vilken spärrkontroll sker vid sammanhållen journalföring (yttre och inre spärr).
  Informationsägaren väljer en lämplig tidpunkt, t.ex. då remissen först skickades.
  """

* requestActivity.header.accessControlHeader.approvedForPatient 1..1 boolean "Godkänd för patientåtkomst"
  """
  Beslut om remisstatusen får delas med patient (Individens direktåtkomst).
  true = får delas, false = får inte delas.
  Värdet kan förändras över tid (rådrumstid, policybyte) — källsystemet ska uppdatera engagemangsindex.
  """

* requestActivity.header.sourceSystemId 1..1 Identifier "Källsystem-id"
  """
  Det källsystem där remisstatusen lagras.
  root = 1.2.752.129.2.1.4.1 (HSA OID), extension = källsystemets HSA-id.
  """

* requestActivity.header.record 1..1 BackboneElement "Remissstatuspost"
  """
  Information om remisstatusen som tillgängliggörs.
  """

* requestActivity.header.record.id 1..1 Identifier "Identifierare för remisstatus"
  """
  Beständig identifierare för remisstatusen. Ska vara konsistent mellan majorversioner av
  tjänstekontrakt och mellan olika tjänstekontrakt.
  Root = systemHSA-id, Extension = id för remissen.
  """

* requestActivity.header.record.timestamp 1..1 instant "Tidpunkt då remissstatusen skapades"
  """
  Den tidpunkt då remisstatusen skapades i tjänsteproducentens källsystem.
  """

* requestActivity.header.author 0..1 BackboneElement "Dokumenterande personal"
  """
  Information om den hälso- och sjukvårdspersonal som dokumenterat remisstatusen.
  Avser inte den som enbart registrerar uppgiften från annan källa.
  """

* requestActivity.header.author.id 0..1 Identifier "HSA-id för dokumenterande personal"
  """
  HSA-id för hälso- och sjukvårdspersonal som dokumenterat remisstatusen.
  root = 1.2.752.129.2.1.4.1, extension = HSA-id.
  """

* requestActivity.header.author.name 0..1 string "Namn på dokumenterande personal"
  """
  Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn.
  """

* requestActivity.header.author.timestamp 1..1 instant "Dokumentationstidpunkt"
  """
  Tidpunkt då remisstatusen dokumenterades eller senast uppdaterades.
  Om ursprungligen dokumenterad i annat system (t.ex. LIS), speglas den tidpunkten.
  """

* requestActivity.header.author.byRole 0..1 CodeableConcept "Befattning vid dokumentationstidpunkten"
  """
  Hälso- och sjukvårdspersonalens befattning (HSAs kodverk Befattning, OID: 1.2.752.129.2.2.1.4).
  Om kod ej tillgänglig anges befattning som klartext i originalText.
  """

* requestActivity.body 1..1 BackboneElement "Remisstatusens innehåll"
  """
  Innehåll för remisstatusen (body).
  """

* requestActivity.body.statusCode 1..1 CodeableConcept "Remissstatus"
  """
  Angivelse av vilken status remissen befinner sig i.
  Kv status vårdbegäran (OID: 1.2.752.129.2.2.2.43).
  Kodverket kan kompletteras — konsumenter ska vara förberedda på nya koder utan versionsuppdatering.
  """
* requestActivity.body.statusCode from KvStatusVardbegaranVS (required)

* requestActivity.body.eventTime 1..1 instant "Händelsetidpunkt"
  """
  Tidpunkt då händelsen inträffade, dvs. när ändring av remisstatus skedde.
  """

* requestActivity.body.request 1..1 BackboneElement "Remissen"
  """
  Den utfärdade remissen.
  """

* requestActivity.body.request.id 1..1 string "Remiss-id"
  """
  Unik identifierare för remissen.
  Vid kännedom om remittentens id anges detta för att kunna koppla ihop statusrader.
  Annars anges källsystemets lokala id.
  """

* requestActivity.body.request.type 0..1 CodeableConcept "Remisstyp"
  """
  Kod och klartext för remisstyp (Kv framställantyp, OID: 1.2.752.129.2.2.2.24).
  1 = röntgenremiss, 2 = labbremiss, 4 = allmänremiss.
  """
* requestActivity.body.request.type from KvFramstallantypVS (required)

* requestActivity.body.request.medium 0..1 CodeableConcept "Medium för remissen"
  """
  Kod och klartext för medium (Kv Form av framställan, OID: 1.2.752.129.2.2.2.7).
  3 = skriftligt elektroniskt, 4 = skriftligt papper.
  """
* requestActivity.body.request.medium from KvFormAvFramstallanVS (required)

* requestActivity.body.request.author 0..1 BackboneElement "Remittent"
  """
  Remittent — författare av remissen.
  Obligatoriskt när statusCode = 1 (Skickad), 7 (Svar mottaget) eller 11 (Makulerad).
  """

* requestActivity.body.request.author.name 1..1 string "Remittentens namn"
  """
  Remittentens namn.
  """

* requestActivity.body.request.author.organization 1..1 BackboneElement "Remitterande enhet"
  """
  Den enhet som remittenten tillhör.
  """

* requestActivity.body.request.author.organization.id 0..1 Identifier "Remitterande enhetens id"
  """
  Remitterande enhetens HSA-id.
  root = 1.2.752.129.2.1.4.1, extension = HSA-id.
  """

* requestActivity.body.request.author.organization.name 1..1 string "Remitterande enhetens namn"
  """
  Remitterande enhetens namn.
  """

* requestActivity.body.request.receivingOrganization 1..1 BackboneElement "Remissmottagande enhet"
  """
  Den enhet som är mottagare av remissen (eller faktisk mottagare om remissen skickats vidare).
  """

* requestActivity.body.request.receivingOrganization.id 0..1 Identifier "Remissmottagande enhets id"
  """
  Remissmottagande enhets HSA-id.
  root = 1.2.752.129.2.1.4.1, extension = HSA-id.
  """

* requestActivity.body.request.receivingOrganization.name 1..1 string "Remissmottagande enhetens namn"
  """
  Remissmottagande enhetens namn.
  """

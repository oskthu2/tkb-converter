// Genererad från TKB processmanagement:decisionsupport:insurancemedicinedecisionsupport v1.0
// Kontrakt: GetFmb v1.0
// Genererad: 2026-05-19

Logical: GetFmb
Id: getfmb
Title: "GetFmb"
Description: """
  Logisk modell för tjänstekontraktet GetFmb
  (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1).
  Representerar responsens informationsstruktur — beslutsunderlag från FMB
  (Försäkringsmedicinskt beslutsstöd).
"""
Characteristics: #can-be-target

* beslutsunderlag 0..* BackboneElement "Beslutsunderlag"
  """
  Beslutsunderlag innehåller information om beslutsunderlag som kan användas vid bedömning om
  sjukskrivning. Ett beslutunderlag kan användas som underlag för bedömning när samtliga villkor
  kopplade till klassen är uppfyllda.
  """
* beslutsunderlag.underlagsId 1..1 Identifier "Globalt unik identifierare för beslutsunderlaget"
* beslutsunderlag.giltighetstidStart 1..1 date "Giltighetstid — starttid"
  """
  Starttid för giltighetstiden. Starttiden skall alltid anges.
  """
* beslutsunderlag.giltighetstidSlut 0..1 date "Giltighetstid — sluttid"
  """
  Sluttid för giltighetstiden. Om sluttid ej anges är beslutsrekommendationen aktiv.
  Ett beslutsunderlag som inte är aktiv skall innehålla ett slutdatum som ligger tidigare
  än aktuellt datum, eller ett startdatum som ligger senare än aktuellt datum.
  """
* beslutsunderlag.version 1..1 integer "Versionsnummer för beslutsunderlaget"
  """
  Versionen räknas upp när ett beslutsunderlag förändrats i sin innebörd eller ändrar giltighetstid.
  """
* beslutsunderlag.textuelltUnderlag 0..1 string "Textuell beskrivning av beslutsunderlaget"
  """
  Varje beslutsunderlag beskrivs i textuell form, som omfattar alla villkor och rekommendationer
  som omfattas av beslutsunderlag samt annan information som är relevant i beslutsfattandet.
  """
* beslutsunderlag.sjukskrivningstidText 1..1 string "Sjukskrivningstid — textuell representation"
  """
  Totala sjukskrivningstidens längd med början från första intygsdag.
  Textuell representation som alltid är ifylld även där sjukskrivningstiden inte kan kvantifieras.
  """
* beslutsunderlag.sjukskrivningstidVarde 0..1 decimal "Sjukskrivningstid — numeriskt värde"
  """
  Numeriskt värde för sjukskrivningstiden. Anges ej om sjukskrivningstiden inte kan kvantifieras.
  """
* beslutsunderlag.sjukskrivningstidEnhet 0..1 string "Sjukskrivningstid — enhet (UCUM)"
  """
  Enhet för tidsangivelsen enligt UCUM: månad='mo', vecka='wk', dag='d'.
  """
* beslutsunderlag.sjukskrivningsgrad 1..1 CodeableConcept "Grad av sjukskrivning"
  """
  Anger grad av sjukskrivning. Exempel på värden: Heltid, Deltid.
  Kodas med lokalt kodverk.
  """
* beslutsunderlag.senastAndrad 1..1 dateTime "Tidpunkt när beslutsunderlaget senast ändrades"
* beslutsunderlag.rehabiliteringsInformation 0..1 BackboneElement "Rehabiliteringsinformation"
* beslutsunderlag.rehabiliteringsInformation.beskrivning 1..1 string "Beskrivning av rehabiliteringsåtgärd"
* beslutsunderlag.huvudDiagnos 1..* BackboneElement "Huvuddiagnos för vilken beslutsunderlaget gäller"
* beslutsunderlag.huvudDiagnos.varde 1..1 CodeableConcept "Huvuddiagnos angiven med ICD-10-SE-kod"
* beslutsunderlag.villkor 1..1 BackboneElement "Villkor för att beslutsunderlaget skall gälla"
  """
  Villkor samlar underliggande faktorer som måste vara uppfyllda för att ett beslutsunderlag
  skall gälla. Förekomsten av en 'urvals-klass' är ett OCH-villkor. Flera koder inom ett urval
  är ett ELLER-villkor.
  """
* beslutsunderlag.villkor.urvalArbetsbelastning 0..1 BackboneElement "Urval av arbetsbelastning (villkor)"
* beslutsunderlag.villkor.urvalArbetsbelastning.arbetsbelastning 1..* CodeableConcept "Koder för arbetsbelastning"
* beslutsunderlag.villkor.urvalKomplicerandeFaktor 0..* BackboneElement "Urval av komplicerande faktorer (villkor)"
* beslutsunderlag.villkor.urvalKomplicerandeFaktor.komplicerandeFaktor 1..* CodeableConcept "Koder för komplicerande faktorer"
* beslutsunderlag.villkor.urvalPlaneradAtgard 0..* BackboneElement "Urval av planerade åtgärder (villkor)"
* beslutsunderlag.villkor.urvalPlaneradAtgard.planeradAtgard 1..* CodeableConcept "Koder för planerade åtgärder"
* beslutsunderlag.villkor.urvalPagaendeAtgard 0..* BackboneElement "Urval av pågående åtgärder (villkor)"
* beslutsunderlag.villkor.urvalPagaendeAtgard.pagaendeAtgard 1..* CodeableConcept "Koder för pågående åtgärder"
* beslutsunderlag.villkor.urvalSamsjuklighet 0..* BackboneElement "Urval av samsjuklighet (villkor)"
* beslutsunderlag.villkor.urvalSamsjuklighet.samsjuklighet 1..* CodeableConcept "Koder för samsjuklighet (ICD-10-SE)"
* beslutsunderlag.villkor.urvalSjukdomsforlopp 0..1 BackboneElement "Urval av sjukdomsförlopp (villkor)"
* beslutsunderlag.villkor.urvalSjukdomsforlopp.sjukdomsforlopp 1..* CodeableConcept "Koder för sjukdomsförlopp"
* beslutsunderlag.villkor.urvalSvarighetsgrad 0..1 BackboneElement "Urval av svårighetsgrad (villkor)"
* beslutsunderlag.villkor.urvalSvarighetsgrad.svarighetsgrad 1..* CodeableConcept "Koder för svårighetsgrad (Lindrig, Medelsvår, Svår)"
* beslutsunderlag.villkor.utfordAtgard 1..* CodeableConcept "Koder för utförda åtgärder"
* fmbVersion 1..1 BackboneElement "Versionsinformation för hela FMB"
* fmbVersion.senasteVersionsuppdatering 1..1 dateTime "Tidpunkt för senaste versionsuppdatering bland alla beslutsunderlag"
* fmbVersion.senasteAndring 1..1 dateTime "Tidpunkt för senaste ändring bland alla beslutsunderlag"

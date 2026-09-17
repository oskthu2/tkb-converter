### LookupResidentForFullProfile

Hämtar personuppgifter för en eller flera personer baserat på personnummer.

**Version:** 1.2 · **Frivillighet:** Tjänsten är obligatorisk för alla
tjänsteproducenter som implementerar tjänstedomänen. · **Tjänsteinteraktion:**
Fråga-Svar

#### Anrop

Tjänsten `LookupResidentFor<Profile>` är egentligen flera olika tjänstekontrakt,
ett per avsedd profil (se avsnitt 6.1). Tjänstens namn har formatet
`LookupResidentFor<Profile>` där `<Profile>` är namnet på den aktuella profilen.
Endast profilen **Full** är för närvarande publicerad.

**Begäran**

| Namn | Typ | Kommentar | Kardinalitet |
|---|---|---|---|
| personId | Text | Personnummer på format ÅÅÅÅMMDDNNNN. Flera personnummer kan anges i samma fråga. `personId` kan även vara reservnummer i det fall tjänstekonsumenten är en regional/lokal instans (format specifikt för aktuellt reservnummerkodverk). Se begränsning på antal `personId` enl. SLA-krav (avsnitt 4.6, max 1000/anrop) | 1..* |
| lookUpSpecification | LookUpSpecificationType | Urvalsbegränsning. Se datatypbeskrivning i avsnitt 5.2. _Obligatoriskt element enligt XSD, även om samtliga dess underfält är valfria — se ASSUME-PRM-001_ | 1..1 |

**Svar**

| Namn | Typ | Kommentar | Kardinalitet |
|---|---|---|---|
| resident | ResidentType | Personuppgifter om efterfrågad person. Kardinaliteten markerar att flera svar kan erhållas, max ett för varje efterfrågat personnummer reducerat med eventuell urvalsbegränsning. Värden för fält i returtypen (`ResidentType`) som inte ingår i den aktuella profilen (Full) utelämnas (saknas i SOAP-meddelandet, `null` i genererad kod) | 0..* |

#### Regler

- Inga personuppgifter returneras för personer som saknar information i tjänsten.
- Det är tjänstekonsumentens ansvar att personnummer i anropet följer rätt format.
  Tjänsteproducenten har ingen skyldighet att kontrollera formatet.
- Se avsnitt 4.6 för SLA-krav (svarstid, tillgänglighet, atomicitet, begränsning på
  1000 `personId`/anrop).

#### Felkoder

Tjänsten är en ren fråga-svar-tjänst utan uppdaterande semantik och definierar inga
egna `ResultCode`-värden för detta kontrakt (se avsnitt 4.5 för domänens generella
felhanteringsmodell, som gäller det utgångna `UpdateResident`-kontraktet). Tekniska
fel rapporteras som SOAP-Exception.

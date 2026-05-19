# 4 Tjänstedomänens krav och regler

## Generella regler

Information specifikation enligt V-TIM där det är tillämpligt.

## Felhantering

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception).

## Informationsobjekt

### E-tjänstens vårdenhet (healthcare_facility)

Informationsobjektet definierar den vårdenhet som erbjuder e-tjänsten.

Om vårdenhetens namn (`healthcare_facility_name`) utelämnas ska vårdenhetens namn hämtas från HSA.

### E-tjänstens information (eService)

Informationsobjekt definierar e-tjänstens metadata.

**Erbjuden e-tjänst** beskriver e-tjänstens följande egenskaper:

- Namn
- Adress (teknisk adress till e-tjänst)
- Krav för att nyttja tjänsten
- Geografisk information (vilket län, kommun etc.)

### E-tjänstens restriktioner (restrictions)

Restriktioner används för att beskriva eventuella krav som är kopplat till användandet av e-tjänsten. Till exempel att invånaren måste vara listad på vårdenheten för att kunna använda e-tjänsten.

En e-tjänst utan restriktioner innebär att den är tillgänglig för alla.

### E-tjänstens betjäningsområde (eServiceAreaCode)

Betjäningsområden används för att definiera det geografiska område som e-tjänsten täcker.

| Fält | Beskrivning |
|------|-------------|
| Länskod (countycode) | Anger i vilka län e-tjänsten är tillgänglig/erbjuds. |
| Kommunkod (municipalityCode) | Avgränsar länskod. Visar vilka specifika kommuner e-tjänsten erbjuds. Utelämnas denna gäller hela länet. |
| Kommundelskod (municipalitySectionCode) | Avgränsar kommunkod. Visar vilka specifika kommundelar e-tjänsten erbjuds. Utelämnas denna gäller hela kommunen. |

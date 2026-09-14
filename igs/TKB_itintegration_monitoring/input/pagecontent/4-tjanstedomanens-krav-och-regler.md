## Tjänstedomänens krav och regler

### Generella regler

#### Format för tidpunkter

Tidpunkter anges i formatet "ÅÅÅÅMMDDttmmss", vilket motsvarar den ISO 8601 och
ISO 8824-kompatibla formatbeskrivningen "YYYYMMDDhhmmss".

### Regler (kontraktsspecifika, se även avsnitt 7)

R1: Varje versionshanterad modul/tjänstekomponent som publicerar en eller flera
RIVTA 2.1-tjänster (andra tjänstekontrakt än detta) ska exponera en producent för
detta tjänstekontrakt.

R2: Tjänsten ska om möjligt interagera med underliggande datalager i syfte att i så
hög grad som möjligt påvisa om de funktionella tjänsterna är tillgängliga eller inte.
Det kan t.ex. ske genom att anropa samma underliggande kod som för en av
tjänstedomänens frågetjänster med ett reserverat test-id som sökparameter.

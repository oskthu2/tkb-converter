# rivta-portal — wrappande IG för rivta.se

Återskapar rivta.se:s sidor (Start, Tjänstedomäner, Tjänstekontrakt, Dokument,
Aktuellt, Utveckling, FAQ) som en IG och länkar varje tjänstedomän till dess
FHIR IG i `igs/TKB_*`. Publiceras på Pages-sajten under `rivta-portal/`.

## Redigera innehåll

Allt innehåll ligger i `portal-data/`. Sidorna, `sushi-config.yaml` och
`input/images/rss.xml` genereras av `scripts/build_portal.py` och ska inte
redigeras för hand.

| Fil | Sida |
|---|---|
| `news.yml` | Aktuellt + RSS-flödet. Ny nyhet = ny post överst (`date`, `title`, `body`). |
| `documents.yml` | Dokument, samt titlar för alla `{doc:ARK_xxxx}`-länkar på övriga sidor. |
| `development.yml` | Utveckling |
| `faq.yml` | FAQ |
| `servicedomains-snapshot.json` | Tjänstedomäner, Tjänstekontrakt och domänsidorna när DOMDB inte går att nå. |

I `body`/`a`-fälten kan `{doc:ARK_0007}` (eller `{doc:ARK_0007|egen länktext}`)
användas för att länka ett dokument, och `{image:fil.png|alt}` för en bild
(läggs i `input/images/`; saknas filen visas originalet från rivta.se).

Kör `python3 scripts/build_portal.py` efter en ändring och checka in resultatet.
CI kör `build_portal.py --live`, som hämtar aktuell domänlista från
`api.ntjp.se/dominfo/v1/servicedomains.json` och faller tillbaka på
ögonblicksbilden om API:t inte svarar.

## SLA-krav/support

### Tillgänglighet/support
Denna tjänst driftas med kontorstidssupport. System som utnyttjar den skall inte vara beroende av tillgänglighet hos tjänsterna under vård av enskild patient. Dessa system måste därför kunna hantera att tjänsten tidvis inte är tillgängligt. Tjänsten är normalt tillgänglig 24h/dygn.

### Svarstider
Ett enskilt anrop ska utföras på &lt;0.5 sekunder exklusive nätverksfördröjningar till den nationella tjänsteplattformen.

### Last
Tjänsten är dimensionerad för att ta emot 100 000 anrop/dygn. Om den faktiska lasten skulle överskrida detta finns möjlighet att skala ut lösningen med flera front-end servrar.

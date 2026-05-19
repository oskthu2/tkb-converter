## Versionsinformation

### Version 4.1-RC1

#### Oförändrade tjänstekontrakt
SendMessageToCare, version 2.0
SetCertificateStatus, version 2.0
ListSickLeavesForCare, version 1.0
CreateDraftCertificate, version 3.2
GetCertificate, version 2.1
ListCertificatesForCare, version 3.1
ListCertificatesForCareWithQA, version 3.2
ListCertificatesForCitizen, version 4.0
RegisterCertificate, version 3.1
RevokeCertificate, version 2.1
SendCertificateToRecipient, version 2.1
SendMessageToRecipient, version 2.1

#### Nya tjänstekontrakt
Inga

#### Förändrade tjänstekontrakt
CertificateStatusUpdateForCare, version 3.2
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se [R5].
Definition av bakåt- och framåtkompabilitet enligt RIVTA:s översiktsdokument:
Bakåtkompatibilitet innebär att en avsändare kan skicka meddelande till en mottagare där meddelandet följer en äldre version av tjänstekontraktet än vad mottagare är baserad på. Detta kräver att mottagaren kan behandla meddelanden av den äldre versionen trots att dessa saknar de nya elementen.
Framåtkompatibilitet innebär att en avsändare kan skicka meddelande till en mottagare där meddelandet följer en nyare version av tjänstekontraktet än vad mottagaren är baserad på. Detta kräver att mottagaren kan bortse från informationen som tillförts i den nyare versionen av meddelandet.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| CertificateStatusUpdateForCare | 3.2 | 3.0 | OK |
|  | 3.2 | 3.1 | OK |
|  | 3.1 | 3.0 | OK |
|  | 3.1 | 3.2 | OK |
|  | 3.0 | 3.1 | OK |
|  | 3.0 | 3.2 | OK |
| CreateDraftCertificate | 3.2 | 3.1 | OK |
|  | 3.1 | 3.2 | OK |
|  | 3.2 | 3.0 | OK |
|  | 3.0 | 3.2 | OK |
|  | 3.1 | 3,0 | OK |
|  | 3.0 | 3.1 | OK |
| GetCertificate | 2.1 | 2.0 | OK |
|  | 2.0 | 2.1 | OK |
| ListCertificatesForCare | 3.1 | 3.0 | OK |
|  | 3.0 | 3.1 | OK |
| ListCertificatesForCareWithQA | 3.2 | 3.1 | OK |
|  | 3.1 | 3.2 | OK |
|  | 3.2 | 3.0 | OK |
|  | 3.0 | 3.2 | OK |
|  | 3.1 | 3.0 | OK |
|  | 3.0 | 3.1 | OK |
| ListCertificatesForCitizen | 4.0 | 3.0 | Ej kompatibel |
|  | 3.0 | 4.0 | Ej kompatibel |
| ListSickLeavesForCare | 1.0 | 1.0 | OK. Endast en version finns |
| RegisterCertificate | 3.1 | 3.0 | OK |
|  | 3.0 | 3.1 | OK |
| RevokeCertificate | 2.1 | 2.0 | OK |
|  | 2.0 | 2.1 | OK |
| SendCertificateToRecipient | 2.1 | 2.0 | OK |
|  | 2.0 | 2.1 | OK |
| SendMessageToCare | 2.0 | 2.0 | OK. Endast en version finns |
| SendMessageToRecipient | 2.1 | 2.0 | OK |
|  | 2.0 | 2.1 | OK |
| SetCertificateStatus | 2.0 | 2.0 | OK. Endast en version finns |
Observera att denna sammanställning beskriver status för domänens samtliga kontrakt, inte bara de som förändrats i denna domänversion.

#### Utgångna tjänstekontrakt
Inga


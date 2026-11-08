// Elementen genereras ur GetCertificateResponder_2.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: GetCertificate v2.1
// Genererad: 2026-05-19

Logical: GetCertificate
Id: getcertificate
Title: "GetCertificate"
Description: """
  Logisk modell för tjänstekontraktet GetCertificate
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:GetCertificate:2).
  Representerar responsens informationsstruktur — ett intyg med tillhörande metadata.
"""
Characteristics: #can-be-target

* ^version = "2.1"
* intyg 1..1 Base "Intyg" "intyg"
* intyg.intygs-id 1..1 Base "IntygId" "intygs-id"
* intyg.mottagare 0..* Base "Part" "mottagare"
* intyg.typ 1..1 Base "TypAvIntyg" "typ"
* intyg.version 1..1 string "version" "version"
* intyg.signeringstidpunkt 0..1 dateTime "signeringstidpunkt" "signeringstidpunkt"
* intyg.signeringstidpunkt only TimeStampType
* intyg.skickatTidpunkt 0..1 dateTime "skickatTidpunkt" "skickatTidpunkt"
* intyg.skickatTidpunkt only TimeStampType
* intyg.patient 1..1 Base "Patient" "patient"
* intyg.patient.person-id 1..1 Base "PersonId" "person-id"
* intyg.patient.fornamn 1..1 string "fornamn" "fornamn"
* intyg.patient.efternamn 1..1 string "efternamn" "efternamn"
* intyg.patient.mellannamn 0..1 string "mellannamn" "mellannamn"
* intyg.patient.postadress 1..1 string "postadress" "postadress"
* intyg.patient.postnummer 1..1 string "postnummer" "postnummer"
* intyg.patient.postort 1..1 string "postort" "postort"
* intyg.patient.kallaAdressuppgifter 0..1 Base "KallaAdressuppgifterType" "kallaAdressuppgifter"
* intyg.skapadAv 1..1 Base "HosPersonal" "skapadAv"
* intyg.skapadAv.personal-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* intyg.skapadAv.fullstandigtNamn 1..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* intyg.skapadAv.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* intyg.skapadAv.befattning 0..* Base "Befattning" "befattning"
* intyg.skapadAv.enhet 1..1 Base "Enhet" "enhet"
* intyg.skapadAv.enhet.enhets-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* intyg.skapadAv.enhet.arbetsplatskod 1..1 Base "ArbetsplatsKod" "o.i.d för arbetsplatskod är 1.2.752.29.4.71"
* intyg.skapadAv.enhet.enhetsnamn 1..1 string "enhetsnamn" "enhetsnamn"
* intyg.skapadAv.enhet.postadress 1..1 string "postadress" "postadress"
* intyg.skapadAv.enhet.postnummer 1..1 string "postnummer" "postnummer"
* intyg.skapadAv.enhet.postort 1..1 string "postort" "postort"
* intyg.skapadAv.enhet.telefonnummer 1..1 string "telefonnummer" "telefonnummer"
* intyg.skapadAv.enhet.epost 0..1 string "epost" "epost"
* intyg.skapadAv.enhet.vardgivare 1..1 Base "Vardgivare" "vardgivare"
* intyg.skapadAv.enhet.vardgivare.vardgivare-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* intyg.skapadAv.enhet.vardgivare.vardgivarnamn 1..1 string "vardgivarnamn" "vardgivarnamn"
* intyg.skapadAv.specialistkompetens 0..* Base "Specialistkompetens" "specialistkompetens"
* intyg.skapadAv.specialistkompetens.code 1..1 string "code" "code"
* intyg.skapadAv.specialistkompetens.displayName 0..1 string "displayName" "displayName"
* intyg.skapadAv.legitimeratYrke 0..* Base "LegitimeratYrkeType" "legitimeratYrke"
* intyg.relation 0..* Base "Relation" "relation"
* intyg.relation.typ 1..1 Base "TypAvRelation" "typ"
* intyg.relation.intygs-id 1..1 Base "IntygId" "intygs-id"
* intyg.status 0..* Base "IntygsStatus" "status"
* intyg.status.part 1..1 Base "Part" "part"
* intyg.status.status 1..1 Base "Statuskod" "status"
* intyg.status.tidpunkt 1..1 dateTime "tidpunkt" "tidpunkt"
* intyg.status.tidpunkt only TimeStampType
* intyg.svar 0..* Base "Svar" "svar"
* intyg.svar.instans 0..1 integer "instans" "instans"
* intyg.svar.delsvar 1..* Base "(anonym typ)" "delsvar"
* intyg.svar.delsvar.id 1..1 string "id" "id (XML-attribut)"
* intyg.svar.delsvar.id only DelfrageIdType
* intyg.svar.id 1..1 string "id" "id (XML-attribut)"
* intyg.svar.id only FrageIdType
* intyg.underskrift 0..1 Base "UnderskriftType" "underskrift"
* intyg.underskrift.Signature 1..1 Base "SignatureType" "Signature"
* intyg.underskrift.Signature.SignedInfo 1..1 Base "SignedInfoType" "SignedInfo"
* intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod 1..1 Base "CanonicalizationMethodType" "CanonicalizationMethod"
* intyg.underskrift.Signature.SignedInfo.CanonicalizationMethod.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* intyg.underskrift.Signature.SignedInfo.SignatureMethod 1..1 Base "SignatureMethodType" "SignatureMethod"
* intyg.underskrift.Signature.SignedInfo.SignatureMethod.HMACOutputLength 0..1 integer "HMACOutputLength" "HMACOutputLength"
* intyg.underskrift.Signature.SignedInfo.SignatureMethod.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* intyg.underskrift.Signature.SignedInfo.Reference 1..* Base "ReferenceType" "Reference"
* intyg.underskrift.Signature.SignedInfo.Reference.Transforms 0..1 Base "TransformsType" "Transforms"
* intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform 1..* Base "TransformType" "Transform"
* intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.XPath 0..1 string "XPath" "XPath"
* intyg.underskrift.Signature.SignedInfo.Reference.Transforms.Transform.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod 1..1 Base "DigestMethodType" "DigestMethod"
* intyg.underskrift.Signature.SignedInfo.Reference.DigestMethod.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* intyg.underskrift.Signature.SignedInfo.Reference.DigestValue 1..1 base64Binary "DigestValue" "DigestValue"
* intyg.underskrift.Signature.SignedInfo.Reference.Id 0..1 string "Id" "Id (XML-attribut)"
* intyg.underskrift.Signature.SignedInfo.Reference.URI 0..1 uri "URI" "URI (XML-attribut)"
* intyg.underskrift.Signature.SignedInfo.Reference.Type 0..1 uri "Type" "Type (XML-attribut)"
* intyg.underskrift.Signature.SignedInfo.Id 0..1 string "Id" "Id (XML-attribut)"
* intyg.underskrift.Signature.SignatureValue 1..1 Base "SignatureValueType" "SignatureValue"
* intyg.underskrift.Signature.SignatureValue.value 1..1 base64Binary "Textinnehåll" "Elementets textinnehåll i XML (simpleContent)."
* intyg.underskrift.Signature.SignatureValue.Id 0..1 string "Id" "Id (XML-attribut)"
* intyg.underskrift.Signature.KeyInfo 0..1 Base "KeyInfoType" "KeyInfo"
* intyg.underskrift.Signature.KeyInfo.KeyName 0..1 string "KeyName" "KeyName"
* intyg.underskrift.Signature.KeyInfo.KeyValue 0..1 Base "KeyValueType" "KeyValue"
* intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue 0..1 Base "DSAKeyValueType" "DSAKeyValue"
* intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.P 0..1 base64Binary "P" "P"
* intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Q 0..1 base64Binary "Q" "Q"
* intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.G 0..1 base64Binary "G" "G"
* intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Y 1..1 base64Binary "Y" "Y"
* intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.J 0..1 base64Binary "J" "J"
* intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.Seed 0..1 base64Binary "Seed" "Seed"
* intyg.underskrift.Signature.KeyInfo.KeyValue.DSAKeyValue.PgenCounter 0..1 base64Binary "PgenCounter" "PgenCounter"
* intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue 0..1 Base "RSAKeyValueType" "RSAKeyValue"
* intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Modulus 1..1 base64Binary "Modulus" "Modulus"
* intyg.underskrift.Signature.KeyInfo.KeyValue.RSAKeyValue.Exponent 1..1 base64Binary "Exponent" "Exponent"
* intyg.underskrift.Signature.KeyInfo.KeyValue obeys getcertificate-choice-1
* intyg.underskrift.Signature.KeyInfo.RetrievalMethod 0..1 Base "RetrievalMethodType" "RetrievalMethod"
* intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms 0..1 Base "TransformsType" "Transforms"
* intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform 1..* Base "TransformType" "Transform"
* intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.XPath 0..1 string "XPath" "XPath"
* intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Transforms.Transform.Algorithm 1..1 uri "Algorithm" "Algorithm (XML-attribut)"
* intyg.underskrift.Signature.KeyInfo.RetrievalMethod.URI 0..1 uri "URI" "URI (XML-attribut)"
* intyg.underskrift.Signature.KeyInfo.RetrievalMethod.Type 0..1 uri "Type" "Type (XML-attribut)"
* intyg.underskrift.Signature.KeyInfo.X509Data 0..1 Base "X509DataType" "X509Data"
* intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial 0..1 Base "X509IssuerSerialType" "X509IssuerSerial"
* intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509IssuerName 1..1 string "X509IssuerName" "X509IssuerName"
* intyg.underskrift.Signature.KeyInfo.X509Data.X509IssuerSerial.X509SerialNumber 1..1 integer "X509SerialNumber" "X509SerialNumber"
* intyg.underskrift.Signature.KeyInfo.X509Data.X509SKI 0..1 base64Binary "X509SKI" "X509SKI"
* intyg.underskrift.Signature.KeyInfo.X509Data.X509SubjectName 0..1 string "X509SubjectName" "X509SubjectName"
* intyg.underskrift.Signature.KeyInfo.X509Data.X509Certificate 0..1 base64Binary "X509Certificate" "X509Certificate"
* intyg.underskrift.Signature.KeyInfo.X509Data.X509CRL 0..1 base64Binary "X509CRL" "X509CRL"
* intyg.underskrift.Signature.KeyInfo.X509Data obeys getcertificate-choice-6
* intyg.underskrift.Signature.KeyInfo.PGPData 0..1 Base "PGPDataType" "PGPData"
* intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyID 0..1 base64Binary "PGPKeyID" "PGPKeyID"
* intyg.underskrift.Signature.KeyInfo.PGPData.PGPKeyPacket 0..1 base64Binary "PGPKeyPacket" "PGPKeyPacket"
* intyg.underskrift.Signature.KeyInfo.PGPData obeys getcertificate-choice-11
* intyg.underskrift.Signature.KeyInfo.SPKIData 0..1 Base "SPKIDataType" "SPKIData"
* intyg.underskrift.Signature.KeyInfo.SPKIData.SPKISexp 1..1 base64Binary "SPKISexp" "SPKISexp"
* intyg.underskrift.Signature.KeyInfo.MgmtData 0..1 string "MgmtData" "MgmtData"
* intyg.underskrift.Signature.KeyInfo.Id 0..1 string "Id" "Id (XML-attribut)"
* intyg.underskrift.Signature.Object 0..* Base "ObjectType" "Object"
* intyg.underskrift.Signature.Object.Id 0..1 string "Id" "Id (XML-attribut)"
* intyg.underskrift.Signature.Object.MimeType 0..1 string "MimeType" "MimeType (XML-attribut)"
* intyg.underskrift.Signature.Object.Encoding 0..1 uri "Encoding" "Encoding (XML-attribut)"
* intyg.underskrift.Signature.Id 0..1 string "Id" "Id (XML-attribut)"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCertificateFieldDescriptions

Invariant: getcertificate-choice-1
Description: "Exakt ett av DSAKeyValue, RSAKeyValue ska anges (xs:choice i schemat)."
Expression: "DSAKeyValue.exists() xor RSAKeyValue.exists()"
Severity: #error

Invariant: getcertificate-choice-6
Description: "Exakt ett av X509IssuerSerial, X509SKI, X509SubjectName, X509Certificate, X509CRL ska anges (xs:choice i schemat)."
Expression: "iif(X509IssuerSerial.exists(), 1, 0) + iif(X509SKI.exists(), 1, 0) + iif(X509SubjectName.exists(), 1, 0) + iif(X509Certificate.exists(), 1, 0) + iif(X509CRL.exists(), 1, 0) = 1"
Severity: #error

Invariant: getcertificate-choice-11
Description: "Exakt ett av PGPKeyID, PGPKeyPacket ska anges (xs:choice i schemat)."
Expression: "PGPKeyID.exists() xor PGPKeyPacket.exists()"
Severity: #error

Logical: GetCertificateRequest
Id: getcertificate-request
Title: "GetCertificate — Request"
Description: "Logisk modell för requestparametrar i GetCertificate."
Characteristics: #can-be-target

* ^version = "2.1"
* intygs-id 1..1 Base "IntygId" "intygs-id"
* part 1..1 Base "Part" "part"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCertificateRequestFieldDescriptions

#!/usr/bin/env python3
"""
gen_fhir_stubs.py — Generera minimalt offline-paket för hl7.fhir.r4.core#4.0.1

Skapar ~/.fhir/packages/hl7.fhir.r4.core#4.0.1/package/ med minimala men
giltiga StructureDefinition-stubs för alla typer som SUSHI behöver för att
kompilera logiska modeller (Logical:) utan nätverksåtkomst.

Bakgrund: packages.fhir.org och hl7.org är nätverksblockerade i denna miljö.
SUSHI gör inget nätverksanrop för fasta versioner (4.0.1) om paketet redan
finns i ~/.fhir/packages/ — det räcker att katalogen existerar med giltiga
StructureDefinitions.

Användning:
    python3 gen_fhir_stubs.py [--target-dir DIR]

Standard target: ~/.fhir/packages/hl7.fhir.r4.core#4.0.1/package
"""

import json
import os
import argparse
from pathlib import Path


def pkg_dir_default():
    return os.path.expanduser("~/.fhir/packages/hl7.fhir.r4.core#4.0.1/package")


def base_primitive(id_, system_type=None):
    """Skapa minimal StructureDefinition för en FHIR-primitiv."""
    system_type = system_type or id_
    return {
        "resourceType": "StructureDefinition",
        "id": id_,
        "url": f"http://hl7.org/fhir/StructureDefinition/{id_}",
        "version": "4.0.1",
        "name": id_,
        "status": "active",
        "kind": "primitive-type",
        "abstract": False,
        "type": id_,
        "fhirVersion": "4.0.1",
        "snapshot": {"element": [
            {"id": id_, "path": id_, "min": 0, "max": "*",
             "base": {"path": id_, "min": 0, "max": "*"}},
            {"id": f"{id_}.id", "path": f"{id_}.id", "representation": ["xmlAttr"],
             "min": 0, "max": "1", "base": {"path": f"{id_}.id", "min": 0, "max": "1"},
             "type": [{"code": "http://hl7.org/fhirpath/System.String",
                        "extension": [{"url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                                       "valueUrl": "string"}]}]},
            {"id": f"{id_}.extension", "path": f"{id_}.extension",
             "min": 0, "max": "*", "base": {"path": f"{id_}.extension", "min": 0, "max": "*"},
             "type": [{"code": "Extension"}]},
            {"id": f"{id_}.value", "path": f"{id_}.value",
             "representation": ["xmlAttr"],
             "min": 0, "max": "1", "base": {"path": f"{id_}.value", "min": 0, "max": "1"},
             "type": [{"code": "http://hl7.org/fhirpath/System.String",
                        "extension": [{"url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                                       "valueUrl": system_type}]}]},
        ]},
    }


def base_complex(id_, extra_elements=None, base="http://hl7.org/fhir/StructureDefinition/Element"):
    """Skapa minimal StructureDefinition för en komplex FHIR-typ."""
    elements = [
        {"id": id_, "path": id_, "min": 0, "max": "*",
         "base": {"path": id_, "min": 0, "max": "*"}},
        {"id": f"{id_}.id", "path": f"{id_}.id", "min": 0, "max": "1",
         "base": {"path": "Element.id", "min": 0, "max": "1"},
         "type": [{"code": "http://hl7.org/fhirpath/System.String",
                   "extension": [{"url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                                  "valueUrl": "string"}]}]},
        {"id": f"{id_}.extension", "path": f"{id_}.extension",
         "min": 0, "max": "*", "base": {"path": "Element.extension", "min": 0, "max": "*"},
         "type": [{"code": "Extension"}]},
    ]
    if extra_elements:
        elements.extend(extra_elements)
    return {
        "resourceType": "StructureDefinition",
        "id": id_,
        "url": f"http://hl7.org/fhir/StructureDefinition/{id_}",
        "version": "4.0.1",
        "name": id_,
        "status": "active",
        "kind": "complex-type",
        "abstract": False,
        "type": id_,
        "baseDefinition": base,
        "derivation": "specialization",
        "fhirVersion": "4.0.1",
        "snapshot": {"element": elements},
    }


def simple_el(id_, path, type_code, min_=0, max_="1", base_path=None):
    return {"id": id_, "path": path, "min": min_, "max": max_,
            "base": {"path": base_path or path, "min": min_, "max": max_},
            "type": [{"code": type_code}]}


def generate(pkg_dir: str):
    os.makedirs(pkg_dir, exist_ok=True)
    files_written = []

    def write(id_, data):
        path = os.path.join(pkg_dir, f"StructureDefinition-{id_}.json")
        with open(path, "w") as f:
            json.dump(data, f, indent=2)
        files_written.append(id_)

    # ── Primitiver ─────────────────────────────────────────────────────────────
    for p in ["string", "boolean", "integer", "decimal", "date", "dateTime",
              "instant", "code", "uri", "url", "base64Binary", "oid", "id",
              "markdown", "positiveInt", "unsignedInt", "xhtml", "uuid",
              "canonical"]:
        write(p, base_primitive(p))

    # ── Element ─────────────────────────────────────────────────────────────────
    write("Element", {
        "resourceType": "StructureDefinition",
        "id": "Element",
        "url": "http://hl7.org/fhir/StructureDefinition/Element",
        "version": "4.0.1", "name": "Element", "status": "active",
        "kind": "complex-type", "abstract": True, "type": "Element",
        "fhirVersion": "4.0.1",
        "snapshot": {"element": [
            {"id": "Element", "path": "Element", "min": 0, "max": "*",
             "base": {"path": "Element", "min": 0, "max": "*"},
             "constraint": [{"key": "ele-1", "severity": "error",
                              "human": "All FHIR elements must have a @value or children",
                              "expression": "hasValue() or (children().count() > id.count())"}]},
            {"id": "Element.id", "path": "Element.id", "representation": ["xmlAttr"],
             "min": 0, "max": "1", "base": {"path": "Element.id", "min": 0, "max": "1"},
             "type": [{"code": "http://hl7.org/fhirpath/System.String",
                        "extension": [{"url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                                       "valueUrl": "string"}]}]},
            {"id": "Element.extension", "path": "Element.extension",
             "min": 0, "max": "*", "base": {"path": "Element.extension", "min": 0, "max": "*"},
             "type": [{"code": "Extension"}]},
        ]},
    })

    # ── BackboneElement ─────────────────────────────────────────────────────────
    write("BackboneElement", {
        "resourceType": "StructureDefinition",
        "id": "BackboneElement",
        "url": "http://hl7.org/fhir/StructureDefinition/BackboneElement",
        "version": "4.0.1", "name": "BackboneElement", "status": "active",
        "kind": "complex-type", "abstract": True, "type": "BackboneElement",
        "baseDefinition": "http://hl7.org/fhir/StructureDefinition/Element",
        "derivation": "specialization", "fhirVersion": "4.0.1",
        "snapshot": {"element": [
            {"id": "BackboneElement", "path": "BackboneElement", "min": 0, "max": "*",
             "base": {"path": "BackboneElement", "min": 0, "max": "*"}},
            {"id": "BackboneElement.id", "path": "BackboneElement.id", "min": 0, "max": "1",
             "base": {"path": "Element.id", "min": 0, "max": "1"},
             "type": [{"code": "http://hl7.org/fhirpath/System.String",
                        "extension": [{"url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                                       "valueUrl": "string"}]}]},
            {"id": "BackboneElement.extension", "path": "BackboneElement.extension",
             "min": 0, "max": "*", "base": {"path": "Element.extension", "min": 0, "max": "*"},
             "type": [{"code": "Extension"}]},
            {"id": "BackboneElement.modifierExtension",
             "path": "BackboneElement.modifierExtension", "min": 0, "max": "*",
             "base": {"path": "BackboneElement.modifierExtension", "min": 0, "max": "*"},
             "type": [{"code": "Extension"}]},
        ]},
    })

    # ── Extension ────────────────────────────────────────────────────────────────
    write("Extension", {
        "resourceType": "StructureDefinition",
        "id": "Extension",
        "url": "http://hl7.org/fhir/StructureDefinition/Extension",
        "version": "4.0.1", "name": "Extension", "status": "active",
        "kind": "complex-type", "abstract": False, "type": "Extension",
        "baseDefinition": "http://hl7.org/fhir/StructureDefinition/Element",
        "derivation": "specialization", "fhirVersion": "4.0.1",
        "snapshot": {"element": [
            {"id": "Extension", "path": "Extension", "min": 0, "max": "*",
             "base": {"path": "Extension", "min": 0, "max": "*"}},
            {"id": "Extension.id", "path": "Extension.id", "min": 0, "max": "1",
             "base": {"path": "Element.id", "min": 0, "max": "1"},
             "type": [{"code": "http://hl7.org/fhirpath/System.String",
                        "extension": [{"url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                                       "valueUrl": "string"}]}]},
            {"id": "Extension.extension", "path": "Extension.extension",
             "min": 0, "max": "*", "base": {"path": "Element.extension", "min": 0, "max": "*"},
             "type": [{"code": "Extension"}]},
            {"id": "Extension.url", "path": "Extension.url",
             "representation": ["xmlAttr"], "min": 1, "max": "1",
             "base": {"path": "Extension.url", "min": 1, "max": "1"},
             "type": [{"code": "http://hl7.org/fhirpath/System.String",
                        "extension": [{"url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                                       "valueUrl": "uri"}]}]},
            {"id": "Extension.value[x]", "path": "Extension.value[x]",
             "min": 0, "max": "1", "base": {"path": "Extension.value[x]", "min": 0, "max": "1"},
             "type": [{"code": t} for t in [
                 "base64Binary", "boolean", "canonical", "code", "date", "dateTime",
                 "decimal", "id", "instant", "integer", "markdown", "oid", "positiveInt",
                 "string", "unsignedInt", "uri", "url", "uuid", "Address", "Age",
                 "Annotation", "Attachment", "CodeableConcept", "Coding", "ContactPoint",
                 "Count", "Distance", "Duration", "HumanName", "Identifier", "Money",
                 "Period", "Quantity", "Range", "Ratio", "Reference", "SampledData",
                 "Signature", "Timing", "ContactDetail", "Contributor", "DataRequirement",
                 "Expression", "ParameterDefinition", "RelatedArtifact", "TriggerDefinition",
                 "UsageContext", "Dosage", "Meta"]]},
        ]},
    })

    # ── Komplextyper ─────────────────────────────────────────────────────────────
    write("Coding", base_complex("Coding", extra_elements=[
        simple_el("Coding.system", "Coding.system", "uri"),
        simple_el("Coding.version", "Coding.version", "string"),
        simple_el("Coding.code", "Coding.code", "code"),
        simple_el("Coding.display", "Coding.display", "string"),
        simple_el("Coding.userSelected", "Coding.userSelected", "boolean"),
    ]))

    write("CodeableConcept", base_complex("CodeableConcept", extra_elements=[
        simple_el("CodeableConcept.coding", "CodeableConcept.coding", "Coding", max_="*"),
        simple_el("CodeableConcept.text", "CodeableConcept.text", "string"),
    ]))

    write("Identifier", base_complex("Identifier", extra_elements=[
        simple_el("Identifier.use", "Identifier.use", "code"),
        simple_el("Identifier.type", "Identifier.type", "CodeableConcept"),
        simple_el("Identifier.system", "Identifier.system", "uri"),
        simple_el("Identifier.value", "Identifier.value", "string"),
        simple_el("Identifier.period", "Identifier.period", "Period"),
    ]))

    write("Period", base_complex("Period", extra_elements=[
        simple_el("Period.start", "Period.start", "dateTime"),
        simple_el("Period.end", "Period.end", "dateTime"),
    ]))

    write("Quantity", base_complex("Quantity", extra_elements=[
        simple_el("Quantity.value", "Quantity.value", "decimal"),
        simple_el("Quantity.comparator", "Quantity.comparator", "code"),
        simple_el("Quantity.unit", "Quantity.unit", "string"),
        simple_el("Quantity.system", "Quantity.system", "uri"),
        simple_el("Quantity.code", "Quantity.code", "code"),
    ]))

    write("Range", base_complex("Range", extra_elements=[
        simple_el("Range.low", "Range.low", "Quantity"),
        simple_el("Range.high", "Range.high", "Quantity"),
    ]))

    write("Ratio", base_complex("Ratio", extra_elements=[
        simple_el("Ratio.numerator", "Ratio.numerator", "Quantity"),
        simple_el("Ratio.denominator", "Ratio.denominator", "Quantity"),
    ]))

    write("Reference", base_complex("Reference", extra_elements=[
        simple_el("Reference.reference", "Reference.reference", "string"),
        simple_el("Reference.type", "Reference.type", "uri"),
        simple_el("Reference.identifier", "Reference.identifier", "Identifier"),
        simple_el("Reference.display", "Reference.display", "string"),
    ]))

    write("HumanName", base_complex("HumanName", extra_elements=[
        simple_el("HumanName.use", "HumanName.use", "code"),
        simple_el("HumanName.text", "HumanName.text", "string"),
        simple_el("HumanName.family", "HumanName.family", "string"),
        simple_el("HumanName.given", "HumanName.given", "string", max_="*"),
        simple_el("HumanName.prefix", "HumanName.prefix", "string", max_="*"),
        simple_el("HumanName.suffix", "HumanName.suffix", "string", max_="*"),
        simple_el("HumanName.period", "HumanName.period", "Period"),
    ]))

    write("Annotation", base_complex("Annotation", extra_elements=[
        simple_el("Annotation.text", "Annotation.text", "markdown", min_=1),
        simple_el("Annotation.time", "Annotation.time", "dateTime"),
    ]))

    write("Attachment", base_complex("Attachment", extra_elements=[
        simple_el("Attachment.contentType", "Attachment.contentType", "code"),
        simple_el("Attachment.data", "Attachment.data", "base64Binary"),
        simple_el("Attachment.url", "Attachment.url", "url"),
        simple_el("Attachment.title", "Attachment.title", "string"),
    ]))

    write("SampledData", base_complex("SampledData", extra_elements=[
        simple_el("SampledData.origin", "SampledData.origin", "Quantity", min_=1),
        simple_el("SampledData.period", "SampledData.period", "decimal", min_=1),
        simple_el("SampledData.data", "SampledData.data", "string"),
    ]))

    # Stub-typer (refereras av Extension.value[x] — behöver finnas men används ej i logiska modeller)
    for t in ["Signature", "Timing", "ContactDetail", "Contributor", "DataRequirement",
              "Expression", "ParameterDefinition", "RelatedArtifact", "TriggerDefinition",
              "UsageContext", "Dosage", "Duration", "Distance", "Count", "Age",
              "Money", "Address", "ContactPoint", "Meta"]:
        write(t, base_complex(t))

    # ── Resurser (minimal, behövs för CodeSystem/ValueSet/StructureDefinition) ───
    def base_resource(id_, extra_elements=None):
        elements = [
            {"id": id_, "path": id_, "min": 0, "max": "*",
             "base": {"path": id_, "min": 0, "max": "*"}},
            {"id": f"{id_}.id", "path": f"{id_}.id", "min": 0, "max": "1",
             "base": {"path": "Resource.id", "min": 0, "max": "1"},
             "type": [{"code": "http://hl7.org/fhirpath/System.String",
                        "extension": [{"url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                                       "valueUrl": "id"}]}]},
        ]
        if extra_elements:
            elements.extend(extra_elements)
        return {
            "resourceType": "StructureDefinition",
            "id": id_, "url": f"http://hl7.org/fhir/StructureDefinition/{id_}",
            "version": "4.0.1", "name": id_, "status": "active",
            "kind": "resource", "abstract": False, "type": id_,
            "fhirVersion": "4.0.1",
            "snapshot": {"element": elements},
        }

    write("Resource", {
        **base_resource("Resource"),
        "abstract": True,
    })

    write("StructureDefinition", base_resource("StructureDefinition"))

    write("CodeSystem", base_resource("CodeSystem", extra_elements=[
        simple_el("CodeSystem.url", "CodeSystem.url", "uri"),
        simple_el("CodeSystem.version", "CodeSystem.version", "string"),
        simple_el("CodeSystem.name", "CodeSystem.name", "string"),
        simple_el("CodeSystem.title", "CodeSystem.title", "string"),
        simple_el("CodeSystem.status", "CodeSystem.status", "code", min_=1),
        simple_el("CodeSystem.experimental", "CodeSystem.experimental", "boolean"),
        simple_el("CodeSystem.description", "CodeSystem.description", "markdown"),
        simple_el("CodeSystem.content", "CodeSystem.content", "code", min_=1),
        simple_el("CodeSystem.caseSensitive", "CodeSystem.caseSensitive", "boolean"),
        simple_el("CodeSystem.valueSet", "CodeSystem.valueSet", "canonical"),
        simple_el("CodeSystem.hierarchyMeaning", "CodeSystem.hierarchyMeaning", "code"),
        simple_el("CodeSystem.compositional", "CodeSystem.compositional", "boolean"),
        simple_el("CodeSystem.versionNeeded", "CodeSystem.versionNeeded", "boolean"),
        simple_el("CodeSystem.count", "CodeSystem.count", "unsignedInt"),
        simple_el("CodeSystem.copyright", "CodeSystem.copyright", "markdown"),
        simple_el("CodeSystem.concept", "CodeSystem.concept", "BackboneElement", max_="*"),
        {"id": "CodeSystem.concept.code", "path": "CodeSystem.concept.code", "min": 1, "max": "1",
         "base": {"path": "CodeSystem.concept.code", "min": 1, "max": "1"},
         "type": [{"code": "code"}]},
        {"id": "CodeSystem.concept.display", "path": "CodeSystem.concept.display", "min": 0, "max": "1",
         "base": {"path": "CodeSystem.concept.display", "min": 0, "max": "1"},
         "type": [{"code": "string"}]},
        {"id": "CodeSystem.concept.definition", "path": "CodeSystem.concept.definition",
         "min": 0, "max": "1", "base": {"path": "CodeSystem.concept.definition", "min": 0, "max": "1"},
         "type": [{"code": "string"}]},
    ]))

    # ValueSet (förkortat — fullständig compose-struktur)
    vs_compose_elements = []
    for path in ["compose", "compose.include", "compose.include.concept",
                 "compose.include.filter", "compose.include.valueSet"]:
        parts = path.split(".")
        full_path = f"ValueSet.{path}"
        el_id = full_path
        if path == "compose":
            vs_compose_elements.append(simple_el(el_id, full_path, "BackboneElement"))
        elif path == "compose.include":
            vs_compose_elements.append(simple_el(el_id, full_path, "BackboneElement", min_=1, max_="*"))
            vs_compose_elements.append(simple_el(f"{el_id}.system", f"{full_path}.system", "uri"))
            vs_compose_elements.append(simple_el(f"{el_id}.version", f"{full_path}.version", "string"))
        elif path == "compose.include.concept":
            vs_compose_elements.append(simple_el(el_id, full_path, "BackboneElement", max_="*"))
            vs_compose_elements.append(simple_el(f"{el_id}.code", f"{full_path}.code", "code", min_=1))
            vs_compose_elements.append(simple_el(f"{el_id}.display", f"{full_path}.display", "string"))
        elif path == "compose.include.filter":
            vs_compose_elements.append(simple_el(el_id, full_path, "BackboneElement", max_="*"))
            vs_compose_elements.append(simple_el(f"{el_id}.property", f"{full_path}.property", "code", min_=1))
            vs_compose_elements.append(simple_el(f"{el_id}.op", f"{full_path}.op", "code", min_=1))
            vs_compose_elements.append(simple_el(f"{el_id}.value", f"{full_path}.value", "string", min_=1))
        elif path == "compose.include.valueSet":
            vs_compose_elements.append(simple_el(el_id, full_path, "canonical", max_="*"))

    write("ValueSet", base_resource("ValueSet", extra_elements=[
        simple_el("ValueSet.url", "ValueSet.url", "uri"),
        simple_el("ValueSet.version", "ValueSet.version", "string"),
        simple_el("ValueSet.name", "ValueSet.name", "string"),
        simple_el("ValueSet.title", "ValueSet.title", "string"),
        simple_el("ValueSet.status", "ValueSet.status", "code", min_=1),
        simple_el("ValueSet.description", "ValueSet.description", "markdown"),
        *vs_compose_elements,
    ]))

    # ── package.json ───────────────────────────────────────────────────────────
    pkg_json = {
        "name": "hl7.fhir.r4.core",
        "version": "4.0.1",
        "description": "FHIR R4 Core — offline stub för SUSHI-kompilering (gen_fhir_stubs.py)",
        "dependencies": {},
        "fhirVersions": ["4.0.1"],
        "kind": "fhir.core",
    }
    with open(os.path.join(pkg_dir, "package.json"), "w") as f:
        json.dump(pkg_json, f, indent=2)

    # ── .index.json ────────────────────────────────────────────────────────────
    index_files = []
    for fname in sorted(os.listdir(pkg_dir)):
        if not fname.endswith(".json") or fname in ("package.json",) or fname.startswith("."):
            continue
        try:
            with open(os.path.join(pkg_dir, fname)) as f:
                content = json.load(f)
            index_files.append({
                "filename": fname,
                "resourceType": content.get("resourceType", ""),
                "id": content.get("id", ""),
                "url": content.get("url", ""),
                "version": content.get("version", ""),
                "kind": content.get("kind", ""),
                "type": content.get("type", ""),
            })
        except Exception:
            pass

    with open(os.path.join(pkg_dir, ".index.json"), "w") as f:
        json.dump({"index-version": 2, "files": index_files}, f, indent=2)

    return len(files_written)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--target-dir", default=pkg_dir_default(),
                        help="Målkatalog för stub-paketet (default: ~/.fhir/packages/hl7.fhir.r4.core#4.0.1/package)")
    args = parser.parse_args()

    print(f"Genererar FHIR R4 stub-paket i: {args.target_dir}")
    n = generate(args.target_dir)
    print(f"Klar — {n} StructureDefinitions + package.json + .index.json")
    print(f"\nVerifiera med:")
    print(f"  ls {args.target_dir}/*.json | wc -l")


if __name__ == "__main__":
    main()

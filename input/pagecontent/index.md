The Cancer Pathology Data Sharing implementation guide (IG) reporting process documents best practices for transmitting pathology data as a FHIR Document via three pathways:

1. Laboratory Information Systems (LIS) to Central Cancer Registry (CCR) via an electronic health record (EHR) intermediary
2. EHR to EHR
3. LIS to CCR 

This publication promotes structured data collection and exchange of cancer pathology data, provides the data model, defined data items and their corresponding code and value sets. This guide specifies the collection and exchange of data specific to a cancer pathology synoptic report for public health reporting. This guide is compliant with FHIR Release 4.

Currently, the most successful implementation of the Cancer Pathology Data Sharing IG and Integrating the Healthcare Enterprise (IHE)/Structured Data Capture (SDC) on FHIR IG requires the integration of College of American Pathologists' (CAP) checklists into the LIS workflow. Future iterations of this IG may allow for more flexible incorporation of non-electronic Cancer Protocols (eCP) content (such as narrative pathology reports or others); however, that capability is currently not supported.

The Health Level Seven (HL7) Orders and Observations (O&O) and Public Health Work Groups sponsor this guide. 

### Scope
This guide defines 7 FHIR profiles:
* [US Pathology Document Bundle](StructureDefinition-us-pathology-exchange-bundle.html)
* [US Pathology Composition](StructureDefinition-us-pathology-composition.html)
* [US Pathology Observation](StructureDefinition-us-pathology-observation.html) (derived from IHE SDC/eCP on FHIR Observation)
* [US Pathology Diagnostic Report](StructureDefinition-us-pathology-diagnostic-report.html) (derived from US Core DiagnosticReport (Notes))
* [US Pathology Specimen](StructureDefinition-us-pathology-specimen.html) (derived from FHIR R4 Specimen)
* [US Pathology Service Request](StructureDefinition-us-pathology-service-request.html) (derived from US Core ServiceRequest)
* [US Pathology Related Practitioner Role](StructureDefinition-us-pathology-related-practitioner-role.html) (derived from US Core PractitionerRole)

This guide defines 5 value sets and 2 code systems:
* [US Pathology Provider Types ValueSet](ValueSet-us-pathology-provider-types.html)
* [CAP eCC Answer Codes ValueSet](ValueSet-cap-ecc-answer-codes.html)
* [CAP eCC Form Codes ValueSet](ValueSet-cap-ecc-form-codes.html)
* [CAP eCC Question Codes ValueSet](ValueSet-cap-ecc-question-codes.html)
* [CAP eCC Section Codes ValueSet](ValueSet-cap-ecc-section-codes.html)

This guide defines 1 code systems:
* [US Pathology CodeSystem](CodeSystem-us-pathology-codesystem.html)

### Dependencies
This guide leverages the [NAACCR Standards for Cancer Registries Volume V, Laboratory Electronic Reporting Pathology Version 5.0, May 2020](https://www.naaccr.org/wp-content/uploads/2020/07/NAACCR-Vol-V_Revised_20200720.pdf) (Revised 2020).

This guide also leverages profiles from the 6.1.0 version of:
* [US Core IG]({{site.data.fhir.ver.uscore}}/index.html)
* [US Core Patient]({{site.data.fhir.ver.uscore}}/StructureDefinition-us-core-patient.html) 
* [US Core Practitioner]({{site.data.fhir.ver.uscore}}/StructureDefinition-us-core-practitioner.html)
* [US Core Procedure]({{site.data.fhir.ver.uscore}}/StructureDefinition-us-core-procedure.html)
* [US Core Organization]({{site.data.fhir.ver.uscore}}/StructureDefinition-us-core-organization.html)

### Audience
The audience for this IG includes architects and developers of clinical and pathology laboratory health record systems as well as cancer registry systems in the US Realm. Business analysts and policy managers can also benefit from a basic understanding of the use of this cancer pathology data standard to support data flows from pathology laboratories.

### Acknowledgements
This cancer pathology reporting FHIR IG has been developed by the Cancer ePathology Reporting Project in collaboration with the IHE SDC/eCP on FHIR Project, both under the O & O Work Group, and with other stakeholders. This library of FHIR resources was developed and produced through the efforts of HL7. The editors appreciate the support of all volunteers and staff associated with the creation of this document and the sponsorship of the following Work Groups: O & O, Vocabulary Work Group, Clinical Quality Information, Clinical Interoperability Council, Public Health, and Structured Documents. This guide would not have been possible without the support of the following organizations:
* Centers for Disease Control and Prevention (CDC)
* North American Association of Central Cancer Registries (NAACCR)
* College of American Pathologists (CAP)
* Lantana Consulting Group

This material contains content from [SNOMED CT®](http://www.ihtsdo.org/snomed-ct/). SNOMED CT is a registered trademark of the International Health Terminology Standard Development Organization (IHTSDO).

This material contains content from [LOINC®](http://loinc.org). LOINC codes are copyright ©1995-2021, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee. All rights reserved. See [https://loinc.org/kb/license/](https://loinc.org/kb/license/).

This material contains content from the CAP. The [Electronic Cancer Checklists](https://www.cap.org/laboratory-improvement/proficiency-testing/cap-ecc) are copyrighted by the CAP. All rights reserved.
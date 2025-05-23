Instance: observation-section-figo-stage
InstanceOf: USPathologyObservation
Title: "FIGO Stage Section"
Description: "Section Observation that represents the FIGO Stage Section and contains Observation.hasMember Observations that represent the sub-questions of the section."
Usage: #example

* identifier.system = "https://cap.org/eCC"
* identifier.value = "urn:uuid:a0d2cb8e-ab6f-4efe-ad2b-03c20d625a9f"
* status = #final
* category = $CAPeCCCodeSystem#SECTION "SECTION"
* code = $CAPeCCCodeSystem#123456.100004300 "Figo Stage Section"
* subject.reference = "Patient/patient-OakleyAnnie"
* effectiveDateTime = "2024-12-05"
* performer.reference = "Practitioner/practitioner-oncologist"
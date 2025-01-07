Instance: observation-overall-grade
InstanceOf: ObservationSDCeCC
Title: "Overall Grade Observation Example"
Description: "This is an observation for the overall grade (Grade 1)."
Usage: #example

* identifier.system = "https://cap.org/eCC"
* identifier.value = "urn:uuid:ddea4bbc-a3e7-477b-b279-57cf5071e0b9"
* status = #final
* code.coding[0].system = "https://cap.org/eCC"
* code.coding[0].code = #38391-100004300
* code.coding[0].display = "Overall Grade"
* subject = Reference(patient-JoelAlex)

* effectivePeriod.start = "2024-12-06T14:52:02+00:00"
* performer = Reference(practitioner-oncologist)
* valueCodeableConcept.coding[0].system = "https://cap.org/eCC"
* valueCodeableConcept.coding[0].code = #16390-100004300
* valueCodeableConcept.coding[0].display = "Grade 1 (scores of 3, 4 or 5)"
* derivedFrom[+] = Reference(observation-histologic-grade)
* derivedFrom[+] = Reference(observation-grouper-tumor)
-- concept search
select concept_id, concept_name
from concept
where concept_name like "%chronic kidney disease%"
and concept_id in (select CONDITION_CONCEPT_ID from CONDITION_OCCURRENCE)

-- all covid positive
SELECT person_id, VISIT_OCCURRENCE_ID, measurement_datetime FROM MEASUREMENT
WHERE (measurement_concept_id in (706163, 706170) AND VALUE_AS_CONCEPT_ID in (45877985))

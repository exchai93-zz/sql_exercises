-- normal join with equality

SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet, person_set, person_id
  WHERE
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.first_name = 'Zed';

  -- Using a sub-select

SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet
  WHERE pet.id IN
  (
      SELECT pet_id FROM person_pet, person
      WHERE person_pet.person_id = person.id
      AND person.first_name = 'Zed'
  );

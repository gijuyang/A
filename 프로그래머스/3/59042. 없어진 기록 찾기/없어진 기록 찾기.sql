SELECT ANIMAL_ID, NAME from ANIMAL_OUTS
MINUS
SELECT ANIMAL_ID, NAME from ANIMAL_INS;
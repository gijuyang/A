select ID, 
      if(SIZE_OF_COLONY <= 100, 'LOW',
      if(SIZE_OF_COLONY <= 1000, 'MEDIUM', 'HIGH')) as SIZE
FROM ECOLI_DATA
order by ID ASC
SELECT date_in  FROM library.loans 
WHERE date_in > date_due OR date_in is null ORDER BY date_in ASC;
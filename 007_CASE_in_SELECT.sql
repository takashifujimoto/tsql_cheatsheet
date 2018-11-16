SELECT name, year,
CASE 
    WHEN year <= 2001 then price_tax_ex
    WHEN year > 2001 then price_tax_in
END AS price
FROM items;


select * from items


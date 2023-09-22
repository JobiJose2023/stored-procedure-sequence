
explain SELECT name, replace(zip, ',', '') as zip, category FROM businesses;
SELECT name, replace(zip, ',', '') as zip, category FROM businesses;

create index zip_index on businesses (zip);

-- condition on zip column
select * from businesses where zip > 90315;
explain select * from businesses where zip > 90315;

select * from businesses where category = 'Food';
explain select * from businesses where category = 'Food';

create index category_index on businesses (category);
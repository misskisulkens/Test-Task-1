--creating a table with one text column - a 2-dimensional array  
create table public.matrices
(matrix text[][]);
--checking the data type of the only column in the created table
select
    column_name,
    data_type
from information_schema.columns
where table_schema = 'public'
and table_name = 'matrices'
and column_name = 'matrix';
--inserting 1st record
insert into public.matrices values
('{{"1","2","3"},{"4","5","6"}}');
--inserting 2nd record
insert into public.matrices values
('{{"a","b","c"},{"d","e","f"}}');
--checking the records
select * from public.matrices;

--solution
select 
    new_matrix
from
    (select 
        rn,
        array_agg(array[first_values, second_values]) new_matrix
    from 
        (select 
            unnest(matrix[1:1]) as first_values,
            unnest(matrix[2:2]) as second_values,
            row_number() over () rn
        from public.matrices) one
    group by rn
    order by rn) two
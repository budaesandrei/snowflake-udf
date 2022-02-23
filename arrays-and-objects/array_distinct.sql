// Distinct Values in Array
create or replace function {database}.{schema}.array_distinct(array1 variant)
    returns variant
    language javascript
    comment = 'Returns the distinct values in an array'
as
$$
     return Array.from(new Set([...ARRAY1]));
$$
;

    // Example
    select
        array_construct(1,1,2,2) arr1,
        {database}.{schema}.array_distinct(arr1) array_func;
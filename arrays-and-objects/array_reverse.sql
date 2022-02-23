// Reverse array
create or replace function {database}.{schema}.array_reverse(array1 variant)
    returns variant
    language javascript
    comment = 'Returns a reverse array'
as
$$
     return ARRAY1.reverse();
$$
;

    // Example
    select
        array_construct(1,3,2) arr1,
        {database}.{schema}.array_reverse(arr1) array_func;
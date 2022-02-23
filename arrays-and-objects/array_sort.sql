// Sort an array
create or replace function {database}.{schema}.array_sort(array1 variant)
    returns variant
    language javascript
    comment = 'Returns a sorted array'
as
$$
     return ARRAY1.sort();
$$
;

    // Example
    select
        array_construct(1,3,2) arr1,
        {database}.{schema}.array_sort(arr1) array_func;
// Subtract an array from another array
create or replace function {database}.{schema}.array_subtract(array1 variant, array2 variant)
    returns variant
    language javascript
    comment = 'Returns the values in array 1 which are not in array 2'
as
$$
     return ARRAY1.filter((f) => ARRAY2.includes(f) === false)
$$
;

    // Example
    select
        array_construct(1,2) arr1,
        array_construct(1,3) arr2,
        {database}.{schema}.array_subtract(arr1,arr2) array_func;
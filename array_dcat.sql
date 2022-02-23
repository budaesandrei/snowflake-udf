// Distinct Concatenate
create or replace function {database}.{schema}.array_dcat(array1 variant, array2 variant)
    returns variant
    language javascript
    comment = 'Returns a distinct concatenation of two arrays'
as
$$
     return Array.from(new Set([...ARRAY1,...ARRAY2]));
$$
;

    // Example
    select
        array_construct(1,2) arr1,
        array_construct(1,3) arr2,
        array_cat(arr1,arr2) sn_array_cat,
        {database}.{schema}.array_dcat(arr1,arr2) array_func;
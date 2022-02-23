// Returns a filtered array of objects without having to use lateral flatten
create or replace function {database}.{schema}.array_object_filter(array1 variant, key variant, value variant)
    returns variant
    language javascript
    comment = 'Returns a filtered array of objects by a key and value pair'
as
$$
     return ARRAY1.filter((f) => f[KEY] === VALUE)
$$
;

    // Example
    select
        array_construct(object_construct('key', 'test1', 'value', 1), object_construct('key', 'test2', 'value', 2)) test,
        {database}.{schema}.array_object_filter(test, 'key'::variant, 'test1'::variant) array_func;
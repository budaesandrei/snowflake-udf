// Recursively deletes any keys parsed in array1 no matter the depth
create or replace function {database}.{schema}.object_rdelete(object1 variant, array1 variant)
    returns variant
    language javascript
    comment = 'Returns the parsed object without the keys in the array'
as
$$
    function delKeys(obj){
      for(var key in obj){
        if(typeof(obj[key]) === 'object'){
          delKeys(obj[key]);
        } 
        if(ARRAY1.includes(key)){
          delete obj[key];
        }
      }
    };
    delKeys(OBJECT1);
    return OBJECT1;
$$
;

    // Example
    select
        object_construct('Name', 'John', 'Surname', 'Smith', 'Timestamp', '2022-02-22T18:14', 'Location', object_construct('Latitude', 0, 'Longitude', 0, 'Country', 'GB')) obj,
        array_construct('Name', 'Surname', 'Latitude', 'Longitude') arr,
        {database}.{schema}.object_rdelete(obj, arr) obj_func;
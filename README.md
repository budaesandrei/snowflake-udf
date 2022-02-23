# Snowflake UDF's

This repo contains a collection of Snowflake UDF's that might be useful.
To use this repo you must have a Snowflake account. Navigate to Snowflake and [Sign Up](https://signup.snowflake.com/) for a free trial account if you don't have one.

Please find below a list of available UDF's

|Function|Description|
|-|-|
|ARRAY_DCAT( \<array1\> , \<array2\> )|Similar to ARRAY_CAT(), this function concatenates two arrays and lists only distinct values|
|ARRAY_DISTINCT( \<array1\> )|Returns distinct items in an array|
|ARRAY_SUBTRACT( \<array1\>, \<array2\> )|Subtracts an array from another array|
|ARRAY_SORT( \<array1\> )|Sorts values in an array|
|ARRAY_REVERSE( \<array1\> )|Reverses the order of values in an array|
|ARRAY_OBJECT_FILTER( \<array1\> , \<key\>, \<value\> )|This is a function that would allow the user to avoid using lateral flatten in the case of an array of json objects|
|OBJECT_RDELETE( \<object1\>, \<array1\> )|Similar to OBJECT_DELETE(), this function allows the user to parse a list of keys to exclude from a json object regardless if the key is nested|


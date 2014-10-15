# string pq\Query\WriterInterface::param(mixed $param[, int $type = NULL])

Remember the parameter with any associated type and return $N to be written to the query string.

## Params:

* mixed $param  
  Query parameter value.
* Optional int $type = NULL  
  The type OID of the parameter.

## Returns:

* string, '$N', to be used with pq\Query\WriterInterface::write(), where N is the number of this parameter.

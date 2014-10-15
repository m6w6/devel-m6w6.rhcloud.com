# string pq\Query\Writer::param(mixed $param[, int $type = NULL])

Remember the parameter with any associated type and return $N to be written to the query string.

## Params:

* mixed $param  
  Query parameter value.
* Optional int $type = NULL  
  The type OID of the parameter.

## Returns:

* string, '$N', to be used with pq\Query\Writer::write(), where N is the number of this parameter.

## Example:

	<?php
	
	use pq\Query;
	
	$writer = new Query\Writer;
	$writer->write("SELECT", $writer->param(1));
	
	var_dump((string) $writer, $writer->getParams());
	
	?>

Yields:

	string(9) "SELECT $1"
	array(1) {
	  [0]=>
	  int(1)
	}

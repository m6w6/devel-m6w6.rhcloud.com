# pq\Query\Writer pq\Query\Writer::criteria(array $criteria)

Write nested AND/OR criteria to the query string.

The criteria can either be a simple accociative array, where the keys build the left hand operand plus the operator and the values make up the right hand operand and will be passed to pq\Query\Writer::param(). All concatenated together by AND clauses.

Using multiple arrays, the above logic will be applied to each array and then concatenated by OR clauses.

## Params:

* array $criteria  
  Nested AND/OR criteria.

## Returns:

* pq\Query\Writer, self.

## Example:

	<?php
	
	use pq\Query;
	
	$q = new Query\Writer;
	$q->write("select * from account where")
	  ->criteria([
	    ["id >" => 1, "id <" => 5],
	    ["name =" => "mike"]
	  ]);
	
	var_dump((string) $q, $q->getParams());
	
	?>

Yields:

	string(84) "select * from account where ( ( ( id > $1 ) AND ( id < $2 ) ) OR ( ( name = $3 ) ) )"
	array(3) {
	  [0]=>
	  int(1)
	  [1]=>
	  int(5)
	  [2]=>
	  string(4) "mike"
	}

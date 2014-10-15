# pq\Query\Expressible pq\Query\Expressible::mod(mixed $data[, string $op = NULL])

Modify the contained data, turning it into an expression, i.e. pq\Query\Expr.

## Params:

* mixed $data  
  Modifying data.
* Optional string $op = NULL  
  The intended operator (defaults to "+" for numeric values and "||" for strings).

## Returns:

* pq\Query\Expressible, self.


## Example:

	<?php
	
	$column = new pq\Query\Expressible("example", 5);
	var_dump($column->isExpr(), (string) $column, $column->get());
	
	echo "\n";
	
	$column->mod(1); // append "+ 1"
	var_dump($column->isExpr(), (string) $column, $column->get());
	
	echo "\n";
	
	$column->set("'Hello'");
	var_dump($column->isExpr(), (string) $column, $column->get());
	
	echo "\n";
	
	$column->mod("' World!'");
	var_dump($column->isExpr(), (string) $column, $column->get());
	
	?>

Yields:

	bool(false)
	string(1) "5"
	int(5)

	bool(true)
	string(11) "example + 1"
	object(pq\Query\Expr)#3 (2) {
	  ["expression":protected]=>
	  string(7) "example"
	  ["next":protected]=>
	  object(pq\Query\Expr)#4 (2) {
		["expression":protected]=>
		string(3) "+ 1"
		["next":protected]=>
		NULL
	  }
	}

	bool(false)
	string(7) "'Hello'"
	string(7) "'Hello'"

	bool(true)
	string(20) "example || ' World!'"
	object(pq\Query\Expr)#3 (2) {
	  ["expression":protected]=>
	  string(7) "example"
	  ["next":protected]=>
	  object(pq\Query\Expr)#4 (2) {
		["expression":protected]=>
		string(12) "|| ' World!'"
		["next":protected]=>
		NULL
	  }
	}

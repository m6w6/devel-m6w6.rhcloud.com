# array pq\Gateway\Table\Attributes::getColumns()

Retrieve all columns of the table.

## Params:

None.

## Returns:

* array, attributes list (indexed by column number **and** columnd name).

## Example:

	<?php
	
	use pq\Gateway\Table;
	
	$atts = new Table\Attributes(new Table("account"));
	var_dump($atts->getColumns());
	
	?>

Yields:

	array(6) {
	  ["id"]=>
	  object(stdClass)#12 (5) {
		["index"]=>
		int(1)
		["name"]=>
		string(2) "id"
		["type"]=>
		int(2950)
		["hasdefault"]=>
		bool(true)
		["nullable"]=>
		bool(false)
	  }
	  [1]=>
	  object(stdClass)#12 (5) {
		["index"]=>
		int(1)
		["name"]=>
		string(2) "id"
		["type"]=>
		int(2950)
		["hasdefault"]=>
		bool(true)
		["nullable"]=>
		bool(false)
	  }
	  ["password"]=>
	  object(stdClass)#13 (5) {
		["index"]=>
		int(2)
		["name"]=>
		string(8) "password"
		["type"]=>
		int(1042)
		["hasdefault"]=>
		bool(false)
		["nullable"]=>
		bool(true)
	  }
	  [2]=>
	  object(stdClass)#13 (5) {
		["index"]=>
		int(2)
		["name"]=>
		string(8) "password"
		["type"]=>
		int(1042)
		["hasdefault"]=>
		bool(false)
		["nullable"]=>
		bool(true)
	  }
	  ["name"]=>
	  object(stdClass)#14 (5) {
		["index"]=>
		int(3)
		["name"]=>
		string(4) "name"
		["type"]=>
		int(1043)
		["hasdefault"]=>
		bool(false)
		["nullable"]=>
		bool(true)
	  }
	  [3]=>
	  object(stdClass)#14 (5) {
		["index"]=>
		int(3)
		["name"]=>
		string(4) "name"
		["type"]=>
		int(1043)
		["hasdefault"]=>
		bool(false)
		["nullable"]=>
		bool(true)
	  }
	}

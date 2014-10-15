# pq\Gateway\Table\Reference pq\Gateway\Table::getRelation(string $table[, string $ref = NULL])

Retrieve the foreign key of the table to another table.
See pq\Gateway\Table\Relations::getReference().

## Params:

* string $table  
  The table name referenced by a foreign key of the table.
* Optional string $ref = NULL  
  A specific relation id if there are more foreign keys to the same table.

## Returns:

* pq\Gateway\Table\Reference, the foreign key.
* NULL, if the tables are not related.

## Example:

	<?php
	
	use pq\Gateway\Table;
	
	$email = new Table("account_email");
	$ref = $email->getRelation("account");
	
	var_dump($ref);
	
	?>

Yields:

	object(pq\Gateway\Table\Reference)#12 (5) {
	  ["name"]=>
	  string(7) "account"
	  ["foreignTable"]=>
	  string(13) "account_email"
	  ["foreignColumns"]=>
	  array(1) {
		[0]=>
		string(10) "account_id"
	  }
	  ["referencedTable"]=>
	  string(7) "account"
	  ["referencedColumns"]=>
	  array(1) {
		[0]=>
		string(2) "id"
	  }
	}



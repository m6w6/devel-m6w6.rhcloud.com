# pq\Gateway\Rowset pq\Gateway\Rowset::setRowPrototype(mixed $row)

Set the row prototype.

## Params:

* mixed $row  
  The name of a class extending pq\Gateway\Row or a callable as function(array $data).

## Returns:

* pq\Gateway\Rowset, self.

## Example:

	<?php
	
	use pq\Gateway as gw;
	
	class Account extends gw\Row {
		// ...
	}
	
	$table = new gw\Table("account");
	$table->setRowsetPrototype(
		(new gw\Rowset($table))->setRowPrototype(new Account($table))
	);
	
	?>

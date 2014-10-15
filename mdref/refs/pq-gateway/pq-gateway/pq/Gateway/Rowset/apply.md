# pq\Gateway\Rowset pq\Gateway\Rowset::apply(callable $cb)

Apply a callback to each row of this rowset.

## Params:

* callable $cb  
  A callback as function(pq\Gateway\Row $row, pq\Gateway\Rowset $rowset).

## Returns:

* pq\Gateway\Rowset, self.

## Example:

	<?php
	
	use pq\Gateway\Table;
	
	$table = new Table("account");
	$table->find()->apply(function($row) {
		printf("Hello %s!\n", $row->name);
	});
	
	?>
	

# pq\Gateway\Rowset pq\Gateway\Rowset::filter(callable $cb)

Filter the rows a copy of the rowset should contain.

## Params:

* callable $cb  
  A filter callback which should return bool as function(pq\Gateway\Row $row)

## Returns:

* pq\Gateway\Rowset, clone.

## Example:

	<?php
	
	use pq\Gateway\Table;
	
	$table = new Table("account");
	$table->find()
		->apply(function($row) {
			// ...
		})->filter(function ($row) {
			return $row->isDirty();
		})->update();
	
	?>

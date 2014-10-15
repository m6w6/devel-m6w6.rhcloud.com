# mixed pq\Gateway\Table::create([array $data = NULL[, string $returning = "*"]])

Create a row in the table.

## Params:

* Optional array $data = NULL  
  The row data.
* Optional string $returning = "*"  
  What the INSERT should return.

## Returns:

* a [deferred promise of React/Promise](https://github.com/reactphp/promise#deferred-1), when using pq\Query\AsyncExecutor, the asynchronous executor.  
  Else:
* pq\Result, if pq\Result::$status != pq\Result::TUPLES_OK.
* pq\Result, if the rowset prototype pq\Gateway\Table::$rowset is empty.
* pq\Gateway\Rowset, an instance of the rowset prototype.


## Example:

	<?php
	
	use pq\Gateway\Table;

	$accounts = new Table("account");
	$mike = $accounts->create(["name" => "mike"])->current();

	?>

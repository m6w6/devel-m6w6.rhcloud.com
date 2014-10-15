# mixed pq\Gateway\Table::update(array $where, array $data[, string $returning = "*"])

Update rows in the table.
See pq\Query\Expr for using SQL constructs as parameters or arguments.

## Params:

* array $where  
  Criteria for the update.
* array $data  
  Updated row data.
* Optional string $returniung = "*"  
  What the UPDATE should return.

## Returns:

* a [deferred promise of React/Promise](https://github.com/reactphp/promise#deferred-1), when using pq\Query\AsyncExecutor, the asynchronous executor.  
  Else:
* pq\Result, if pq\Result::$status != pq\Result::TUPLES_OK.
* pq\Result, if the rowset prototype pq\Gateway\Table::$rowset is empty.
* pq\Gateway\Rowset, an instance of the rowset prototype.

## Example:

	<?php
	
	use pq\Gateway\Table;
	use pq\Query\Expr;
	
	$table = new Table("data");
	$table->update(["id=" => 1], [
		"foo" => "bar", 
		"ts" => new Expr("NOW()"
	]);
	
	?>

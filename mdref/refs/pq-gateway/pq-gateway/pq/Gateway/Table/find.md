# mixed pq\Gateway\Table::find([array $where = NULL[, string $order = NULL[, int $limit = 0[, int $offset = 0[, string $lock = NULL]]]]])

Find rows in the table.
See pq\Gateway\Table::execute() and pq\Gateway\Table::onResult().

## Params:

* Optional array $where = NULL  
  Lookup criteria.
* Optional string $order = NULL  
  Sorting clauses.
* Optional int $limit = 0  
  A row count limit.
* Optional int $offset = 0  
  A row count offset.
* Optional string $lock = NULL  
  A FOR lock clause (SHARE/UPDATE/KEY SHARE/NO KEY UPDATE).

## Returns:

* a [deferred promise of React/Promise](https://github.com/reactphp/promise#deferred-1), when using pq\Query\AsyncExecutor, the asynchronous executor.  
  Else:
* pq\Result, if pq\Result::$status != pq\Result::TUPLES_OK.
* pq\Result, if the rowset prototype pq\Gateway\Table::$rowset is empty.
* pq\Gateway\Rowset, an instance of the rowset prototype.

## Example:

	<?php
	
	use pq\Gateway\Table;
	
	$table = new Table("account_email");
	$transaction = $table->getConnection()->startTransaction();
	
	$rowset = $table->find(["email=" => "mike@php.net"], null, 0, 0, "UPDATE");
	
	$rowset->apply(function(pq\Gateway\Row $row) {
		$row->email = "mike@PHP.net";
	});
	
	$rowset->update(false);
	$transaction->commit();
	
	?>

# mixed pq\Gateway\Table::of(pq\Gateway\Row $foreign[, string $ref = NULL[, string $order = NULL[, int $limit = 0[, int $offset = 0]]]])

Find rows in table by foreign key.
See pq\Gateway\Table::find(), pq\Gateway\Table::by() and pq\Gateway\Row::allOf().

## Params:

* pq\Gateway\Row $row  
  A row of a table referencing this table through a foreign key.
* Optional string $ref = NULL  
  The identifying name of the relation.
* Optional string $order = NULL  
  Sorting clause.
* Optional int $limit = 0  
  Row count limit.
* Optional int $offset = 0  
  Row count offset.

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
	$account = $accounts->find(["id=" => 1])->current();
	
	$account_emails = new Table("account_emails");
	$emails = $account_emails->of($account);
	
	?>

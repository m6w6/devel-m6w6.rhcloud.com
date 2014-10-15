# mixed pq\Gateway\Table::with(array $relations[, array $where = NULL[, string $order = NULL[, int $limit = 0[, int $offset = 0]]]])

Find rows dependent on other rows by foreign keys.
See pq\Gateway\Table::of(), pq\Gateway\Table::by() and pq\Gateway\Table::find().

## Params:

* array $relations  
  list of pq\Gateway\Table\Reference instances representing relations to join for the query; see pq\Gateway\Table::getRelations().
* Optional array $where = NULL  
  Additional lookup criteria.
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
	
	$emails = new Table("account_email");
	$accounts = new Table("account");
	$notifications = new Table("notification");
	
	$relations = [
		$emails->getRelation("account"),
		$notifications->getRelation("account_email", "email")
	];
	
	$bouncers = $accounts->with($relations, ["bounces>" => 3]);
	
	?>

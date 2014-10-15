# mixed pq\Gateway\Row::allOf(mixed $foreign[, string $ref = NULL[, string $order = NULL[, int $limit = 0[, int $offset = 0]]]])

Find the child rows by foreign key.
See pq\Gateway\Table::of().

## Params:

* mixed $foreign  
  The foreign table (name).
* Optional string $ref = NULL  
  A specific relation name if there are more than one foreign keys on the same table.
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

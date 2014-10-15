# mixed pq\Gateway\Row::ofWhich(mixed $foreign[, string $ref = NULL])

Find the parent row by foreign key.
See pq\Gateway\Table::by().

## Params:

* mixed $foreign  
  The foreign table (name).
* Optional string $ref = NULL  
  A specific relation name if there are more than one foreign keys to the same table.

## Returns:

* a [deferred promise of React/Promise](https://github.com/reactphp/promise#deferred-1), when using pq\Query\AsyncExecutor, the asynchronous executor.  
  Else:
* pq\Result, if pq\Result::$status != pq\Result::TUPLES_OK.
* pq\Result, if the rowset prototype pq\Gateway\Table::$rowset is empty.
* pq\Gateway\Rowset, an instance of the rowset prototype.

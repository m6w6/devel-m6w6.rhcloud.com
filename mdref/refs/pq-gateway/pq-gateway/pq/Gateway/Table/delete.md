# mixed pq\Gateway\Table::delete(array $where,[, $returning = NULL])

Delete rows from the table.

## Params:

* array $where  
  Removal criteria.
* Optional string $returning = NULL  
  What the DELETE should return.

## Returns:

* a [deferred promise of React/Promise](https://github.com/reactphp/promise#deferred-1), when using pq\Query\AsyncExecutor, the asynchronous executor.  
  Else:
* pq\Result, if pq\Result::$status != pq\Result::TUPLES_OK.
* pq\Result, if the rowset prototype pq\Gateway\Table::$rowset is empty.
* pq\Gateway\Rowset, an instance of the rowset prototype.

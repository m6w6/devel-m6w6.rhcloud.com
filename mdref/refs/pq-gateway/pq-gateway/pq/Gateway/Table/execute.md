# protected mixed pq\Gateway\Table::execute(pq\Query\Writer $query)

Execute the query on behalf of this table.
The executed query's result will be forwarded to pq\Gateway\Table::onResult().

## Params:

* pq\Query\Writer $query  
  The query to execute.

## Returns:

* pq\Result, when using pq\Query\Executor, the synchronous executor.
* a [deferred promise of React/Promise](https://github.com/reactphp/promise#deferred-1), when using pq\Query\AsyncExecutor, the asynchronous executor.

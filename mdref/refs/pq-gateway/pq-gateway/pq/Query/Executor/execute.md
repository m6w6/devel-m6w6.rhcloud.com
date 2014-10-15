# mixed pq\Query\Executor pq\Query\Executor::execute(\pq\Query\Writer $query, callable $callback);

Execute the query and process the result with the callback.

## Params:

* pq\Query\Writer $query  
  The query to execute.
* callable $callback  
  The result processing callback as function(pq\Result $result)

## Returns:

* mixed, the return value of the callback.


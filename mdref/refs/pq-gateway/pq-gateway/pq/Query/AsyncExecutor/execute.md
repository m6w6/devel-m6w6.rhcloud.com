# Promise pq\Query\AsyncExecutor::execute(pq\Query\WriterInterface $query, callable $callback)

Execute the query asynchronously and let the callback process the result on resolve.

## Params:

* pq\Query\Writer $query  
  The query to execute.
* callable $callback  
  The result processing callback as function(pq\Result $result)

## Returns:

* mixed, the return value of the callback.


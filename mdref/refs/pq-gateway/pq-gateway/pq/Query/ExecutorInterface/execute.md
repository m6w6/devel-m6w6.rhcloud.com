# mixed pq\Query\ExecutorInterface pq\Query\ExecutorInterface::execute(\pq\Query\WriterInterface $query, callable $callback);

Execute the query and process the result with the callback.

> ***NOTE:***  
  This method should notify the observers twice.  
  Once before the query gets executed and can be retrieved by pq\Query\ExecutorInterface::getQuery().  
  And once after executing the query and the result can be retrieved by pq\Query\ExecutorInterface::getResult().

## Params:

* pq\Query\WriterInterface $query  
  The query to execute.
* callable $callback  
  The result processing callback as function(pq\Result $result)

## Returns:

* mixed, the return value of the callback.


# class pq\Query\Executor implements pq\Query\ExecutorInterface

A synchronous query executor implementation.

## Properties:

* protected pq\Connection $conn  
  The PostgreSQL connection.
* protected SplObjectStorage $observers  
  Attached observers.
* protected pq\Query\WriterInterface  
  The query being executed.
* protected pq\Result $result  
  The query result.


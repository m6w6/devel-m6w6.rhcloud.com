# void pq\Gateway\Table::__construct([string $name = NULL[, pq\Connection $conn = NULL]])

Create a new table gateway.

## Params:

* Optional string $name = NULL  
  The table name.
* Optional pq\Connection $conn = NULL  
  The connection (defaults to pq\Gateway\Table::$defaultConnection).

## Throws:

* InvalidArgumentException
* pq\Exception

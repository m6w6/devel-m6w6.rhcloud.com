# mixed pq\Gateway\Table::onResult([pq\Result $result = NULL])

Executor result callback.

## Params:

* Optional pq\Result $result = NULL  
  The result of any executed query on behalf of this table.

## Returns:

* pq\Result, if pq\Result::$status != pq\Result::TUPLES_OK.
* pq\Result, if the rowset prototype pq\Gateway\Table::$rowset is empty.
* pq\Gateway\Rowset, an instance of the rowset prototype.

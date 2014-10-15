# pq\Gateway\Table pq\Gateway\Table::setRowsetPrototype(mixed $rowset)

Set the prototype of the return value of rowset generating methods.
See pq\Gateway\Table::getRowsetPrototype() and pq\Gateway\Table::$rowset.

## Params:

* mixed $rowset  
  Either
  * a class name with a constructor as function(pq\Gateway\Table $this, pq\Result $result)
  or 
  * a callable as function(pq\Result $result)

## Returns:

* pq\Gateway\Table, self.

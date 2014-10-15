# class pq\Gateway\Rowset implements SeekableIterator, JsonSerializable, Countable

The rowset gateway.

## Properties:

* protected pq\Table $table  
  The originating table.
* protected int $index = 0  
  The iterator index.
* protected array $rows  
  The rows of the set.
* protected mixed $row = "\pq\Gateway\Row"  
  The row prototype.


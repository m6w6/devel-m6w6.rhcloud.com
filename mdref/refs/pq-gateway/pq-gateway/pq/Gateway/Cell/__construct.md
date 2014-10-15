# void pq\Gateway\Cell::__construct(pq\Gateway\Row $row, string $name, mixed $data[, bool $dirty = FALSE])

Create a new cell gateway.
See pq\Query\Expressible::__construct().

## Params:

* pq\Gateway\Row $row  
  The originating row.
* string $name  
  The name of the column.
* mixed $data  
  The value of the column.
* Optional bool $dirty = FALSE  
  Whether the data does actually not exist in the database.


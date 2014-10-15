# pq\Gateway\Cell pq\Gateway\Cell::mod(mixed $data[, string $op = NULL])

Extend the column's value.
Marks the cell as dirty.
See pq\Query\Expressible::mod().

## Params:

* mixed $data  
  The value to append to the column.
* Optional string $op = NULL  
  An operator to use for cell modification (defaults to "+" for numerics and "||" for strings).
  
## Returns:

* pq\Gateway\Cell, self.

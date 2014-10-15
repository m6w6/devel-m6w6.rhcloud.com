# pq\Query\ExpressibleInterface pq\Query\ExpressibleInterface::mod(mixed $data[, string $op = NULL])

Modify the contained data, turning it into an expression, i.e. pq\Query\Expr.

## Params:

* mixed $data  
  Modifying data.
* Optional string $op = NULL  
  The intended operator (defaults to "+" for numeric values and "||" for strings).

## Returns:

* pq\Query\ExpressibleInterface, self.

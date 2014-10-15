# void pq\Query\Expr::__construct(string $e[, string ...$args])

Create a new expression.
If the number of arguments is greater than 1, then all arguments are stringified by sprintf.

## Params:

* string $e  
  The expression (possibly a sprintf format string).
* string ...$args  
  A variable list of sprintf substitution parameters.


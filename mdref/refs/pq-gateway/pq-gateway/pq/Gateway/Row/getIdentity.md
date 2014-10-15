# array pq\Gateway\Row::getIdentity()

Retrieve a list of columns and their values (the primary key, if it exists, else all columns) to identify the row in the table.

## Params:

None.

## Returns:

* array, list of columns and values identifying this row.

## Throws:

* OutOfBoundsException, if a primary key column does not exist due to possible out-of-date cache.

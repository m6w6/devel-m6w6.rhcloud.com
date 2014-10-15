# array pq\Gateway\Row::exportPublic()

Export current state with security sensitive data removed.
Calls pq\Gateway\Row::export() by default; to be overriden.

## Params:

None.

## Returns:

* array, the row's plain data except security sensitive data like passwords, etc.

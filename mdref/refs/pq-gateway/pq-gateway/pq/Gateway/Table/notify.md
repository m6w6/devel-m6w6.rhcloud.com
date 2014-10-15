# void pq\Gateway\Table::notify([pq\Gateway\Row $row = NULL[, string $event = NULL[, array &$criteria = NULL]]])

Implements SplSubject.

## Params:

* Optional pq\Gateway\Row $row = NULL  
  The row which created the event.
* Optional string $event = NULL  
  The row's event (create/update/delete).
* Optional array &$criteria = NULL  
  The criteria for the row update.

> ***NOTE:***  
  All these params will be passed through to the table's observers after the table itself.
  
	<?php
	$observer->update($table, $row, $event, $criteria);
	?>

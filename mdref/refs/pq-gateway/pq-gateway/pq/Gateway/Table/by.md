# mixed pq\Gateway\Table::by(pq\Gateway\Row $me[, string $ref = NULL])

Find the row inthis table referenced by another table's row by foreign key.
See pq\Gateway\Table::find(), pq\Gateway\Table::of() and pq\Gateway\Row::ofWhich().

## Params:

* pq\Gateway\Row $me  
  A row of another table referenced by this table through a foreign key.
* Optional string $ref = NULL  
  The identifying name of the relation.


## Returns:

* a [deferred promise of React/Promise](https://github.com/reactphp/promise#deferred-1), when using pq\Query\AsyncExecutor, the asynchronous executor.  
  Else:
* pq\Result, if pq\Result::$status != pq\Result::TUPLES_OK.
* pq\Result, if the rowset prototype pq\Gateway\Table::$rowset is empty.
* pq\Gateway\Rowset, an instance of the rowset prototype.

## Example:

	<?php
	
	use pq\Gateway\Table;
	
	$accounts = new Table("account");
	$account_emails = new Table("account_email");
	$email = $account_emails->find(["email=" => "mike@php.net"])->current();
	
	$account1 = $accounts->by($email)->current();
	$account2 = $email->ofWhich("account")->current();
	
	var_dump($account1->getData(), $account2->getData());
	
	?>

Yields:

	array(3) {
	  ["id"]=>
	  string(36) "f9710801-c900-4774-848c-22c85deecd83"
	  ["password"]=>
	  NULL
	  ["name"]=>
	  string(4) "mike"
	}
	array(3) {
	  ["id"]=>
	  string(36) "f9710801-c900-4774-848c-22c85deecd83"
	  ["password"]=>
	  NULL
	  ["name"]=>
	  string(4) "mike"
	}

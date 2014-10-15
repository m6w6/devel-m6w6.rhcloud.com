# pq\Gateway\Table\Relations pq\Gateway\Table::getRelations()

Get the relations (by foreign key) of this table.

## Params:

None.

## Returns:

* pq\Gateway\Table\Relations, the table's foreign keys.

## Example:

	<?php
	
	use pq\Gateway\Table;
	
	$conn = new pq\Connection;
	$conn->exec("
		-- drop table if exists account cascade;
		-- create table account (
		-- 	id uuid default uuid_generate_v4() primary key,
		-- 	password char(60),
		-- 	name varchar(68)
		-- );

		-- drop table if exists account_email cascade;
		-- create table account_email (
		-- 	account_id uuid not null references account(id) on delete cascade,
		-- 	email varchar(255) not null unique,
		-- 	primary key (account_id, email)
		-- );
		
		drop table if exists reftable cascade;
		create table reftable (
			id serial primary key,
			my_account uuid references account(id),
			account_id uuid references account(id),
			second_account_id uuid references account(id),
			email varchar(255) not null references account_email(email)
		);
	");
	
	$fgn_table = new Table("reftable");
	var_dump($fgn_table->getRelations());
	
	?>

Yields:

	object(pq\Gateway\Table\Relations)#7 (1) {
	  ["references":protected]=>
	  array(2) {
		["account"]=>
		array(3) {
		  ["my_account"]=>
		  object(pq\Gateway\Table\Reference)#14 (5) {
			["name"]=>
			string(10) "my_account"
			["foreignTable"]=>
			string(8) "reftable"
			["foreignColumns"]=>
			array(1) {
			  [0]=>
			  string(10) "my_account"
			}
			["referencedTable"]=>
			string(7) "account"
			["referencedColumns"]=>
			array(1) {
			  [0]=>
			  string(2) "id"
			}
		  }
		  ["account"]=>
		  object(pq\Gateway\Table\Reference)#15 (5) {
			["name"]=>
			string(7) "account"
			["foreignTable"]=>
			string(8) "reftable"
			["foreignColumns"]=>
			array(1) {
			  [0]=>
			  string(10) "account_id"
			}
			["referencedTable"]=>
			string(7) "account"
			["referencedColumns"]=>
			array(1) {
			  [0]=>
			  string(2) "id"
			}
		  }
		  ["second_account"]=>
		  object(pq\Gateway\Table\Reference)#16 (5) {
			["name"]=>
			string(14) "second_account"
			["foreignTable"]=>
			string(8) "reftable"
			["foreignColumns"]=>
			array(1) {
			  [0]=>
			  string(17) "second_account_id"
			}
			["referencedTable"]=>
			string(7) "account"
			["referencedColumns"]=>
			array(1) {
			  [0]=>
			  string(2) "id"
			}
		  }
		}
		["account_email"]=>
		array(1) {
		  ["email"]=>
		  object(pq\Gateway\Table\Reference)#17 (5) {
			["name"]=>
			string(5) "email"
			["foreignTable"]=>
			string(8) "reftable"
			["foreignColumns"]=>
			array(1) {
			  [0]=>
			  string(5) "email"
			}
			["referencedTable"]=>
			string(13) "account_email"
			["referencedColumns"]=>
			array(1) {
			  [0]=>
			  string(5) "email"
			}
		  }
		}
	  }
	}


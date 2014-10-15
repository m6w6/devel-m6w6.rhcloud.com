# class pq\Gateway\Table\Relations implements Countable, IteratorAggregate

Retrieve any relations referenced by the table through foreign keys.
See pq\Gateway\Table::by() and pq\Gateway\Table::with().

## Query:

The following query is executed by the current executor of the table to retrieve the table references:

	select
		regexp_replace(att1.attname, '_'||att2.attname||'$', '')
					  as "name"
		,cl1.relname  as "foreignTable"
		,att1.attname as "foreignColumn"
		,cl2.relname  as "referencedTable"
		,att2.attname as "referencedColumn"
	from
		 pg_constraint co
		,pg_class      cl1
		,pg_class      cl2
		,pg_attribute  att1
		,pg_attribute  att2
	where
		 cl1.relname  = \$1
	and co.confrelid != 0
	and co.conrelid   = cl1.oid
	and co.conkey[1]  = att1.attnum and cl1.oid = att1.attrelid
	and co.confrelid  = cl2.oid
	and co.confkey[1] = att2.attnum and cl2.oid = att2.attrelid
	order by 
		att1.attnum

## Cache:

The result of this query is cached in the metadata cache under the following key, where $table is converted to a string by pq\Gateway\Table::__toString():

	"$table:relations"

## Foreign key access:

Relations can be accessed as virtual properties or through pq\Gateway\Table\Relations::getReference().

	<?php
	
	use pq\Gateway\Table;
	
	$relations = new Table\Relations(new Table("account_email"));
	
	var_dump($relations->getReference("account", "account"));
	var_dump($relations->account["account"]);
	
	?>

> ***NOTE:***  
  The relation name is the column name of the foreign key with the column name of the referenced column cut off the end.

## Properties:

* protected array $references  
  The table's foreign keys.


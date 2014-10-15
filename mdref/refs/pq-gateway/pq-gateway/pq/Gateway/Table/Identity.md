# class pq\Gateway\Table\Identity implements Countable, ITeratorAggregate

The primary key of a table.

## Query:

The following query is executed by the current executor of the table to retrieve the primary key columns:

	select
	 a.attname as column
	from  pg_class     c
	 join pg_index     i  on c.oid    = i.indrelid
	 join pg_attribute a  on c.oid    = a.attrelid
	where 
		 c.relname = \$1
	 and a.attnum  = any(i.indkey)
	 and i.indisprimary
	order by 
	 a.attnum

## Cache:

The result of this query is cached in the metadata cache under the following key, where $table is converted to a string by pq\Gateway\Table::__toString():

	"$table:identity"

## Properties:

* protected array $columns  
  The columns making up the primary key of the table.


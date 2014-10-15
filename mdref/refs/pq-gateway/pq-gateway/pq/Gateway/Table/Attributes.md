# class pq\Gateway\Table\Attributes implements IteratorAggregate

The table attributes (columns) of a table.

## Query:

The following query is executed by the current executor of the table to retrieve the table attributes:

	select 
		 attnum         as index
		,attname        as name
		,atttypid       as type
		,atthasdef      as hasdefault
		,not attnotnull as nullable
	from
		 pg_attribute 
	where attrelid = \$1::regclass 
	and   attnum   > 0

## Cache:

The result of this query is cached in the metadata cache under the following key, where $table is converted to a string by pq\Gateway\Table::__toString():

	"$table:attributes"

## Properties:

* protected array $columns  
  The table attributes.
  

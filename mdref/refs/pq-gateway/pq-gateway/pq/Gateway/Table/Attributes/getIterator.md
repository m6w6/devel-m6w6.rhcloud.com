# ArrayIterator pq\Gateway\Table\Attributes::getIterator()

Implements IteratorAggregate.

## Params:

None.

## Returns:

ArrayIterator, columnd list (indexed by column number **and** name).

## Example:

	<?php
	
	use pq\Gateway\Table;
	
	class ColNameIterator extends FilterIterator {
		public function __construct(Table\Attributes $attrs) {
			parent::__construct($attrs->getIterator());
		}
		public function accept() {
			return !is_numeric($this->key());
		}
	}
	
	$table = new pq\Gateway\Table("account");
	$attrs = $table->getAttributes();
	foreach (new ColNameIterator($attrs) as $col => $att) {
		printf("%10s: %s\n", $col, http_build_query($att, null, ", "));
	}
	
	?>

Yields:

			id: index=1, name=id, type=2950, hasdefault=1, nullable=0
	  password: index=2, name=password, type=1042, hasdefault=0, nullable=1
		  name: index=3, name=name, type=1043, hasdefault=0, nullable=1

# class pq\Query\AsyncExecutor extends pq\Query\Executor

An asynchronous query executor implementation.
See pq\Query\Executor for inherited methods and properties.

## Example with [React/Promise](https://github.com/reactphp/promise)

	<?php
	
	use pq\Connection, pq\Result;
	use pq\Query\AsyncExecutor, pq\Query\Writer;
	
	use React\Promise\Deferred;
	
	$conn = new Connection;
	$exec = new AsyncExecutor($conn);
	$exec->setCallbacks(
	# init context
	function() {
		return new Deferred;
	},
	# done
	function(Deferred $context, $result) {
		$context->resolve($result);
	},
	# then
	function(Deferred $context, callable $cb) {
		return $context->promise()->then($cb);
	});

	# a contrived query
	$query = new Writer("SELECT \$1::int, \$2::int", [1, 2]);
	$exec->execute($query, function(Result $result) {
		var_dump($result->fetchAll());
	});
	
	# this call blocks; see pq\Connection::getResult() etc.
	$conn->getResult();
	
	?>

## Example with [Amphp/Amp](https://github.com/amphp/amp)

	<?php
	
	use pq\Connection, pq\Result;
	use pq\Query\AsyncExecutor, pq\Query\Writer;
	
	use Amphp\Deferred;
	
	$conn = new Connection;
	$exec = new AsyncExecutor($conn);
	$exec->setCallbacks(
	# init context
	function() {
		return new Deferred;
	},
	# done
	function(Deferred $context, $result) {
		$context->succeed($result);
	},
	# then
	function(Deferred $context, callable $cb) {
		return $context->promise()->when(function($error, $result) use ($cb) {
			$cb($result);
		});
	});
	
	# a contrived query
	$query = new Writer("SELECT \$1::int, \$2::int", [1, 2]);
	$exec->execute($query, function(Result $result) {
		var_dump($result->fetchAll());
	});
	
	# this call blocks; see pq\Connection::getResult() etc.
	$conn->getResult();
	
	?>

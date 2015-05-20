# void pq\Query\AsyncExecutor::setCallbacks(callable $init, callable $done, callable $then)

Set the callbacks the asynchronous executor should use to resolve the result.
See pq\Query\AsyncExecutor for examples.

## Params:

* callable $init  
  Initialize a context for the other callbacks, as function().
* callable $done  
  Result resolver, as function($context, pq\Result $result).
* callable $then  
  Callback forwarder, as function($context, callable $cb).

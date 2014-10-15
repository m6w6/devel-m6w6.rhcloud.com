# class pq\Gateway\Table implements SplSubject

The table gateway.

## Propertries:

* public static pq\Connection $defaultConnection  
  A default connection to use.
* public static callable $defaultResolver as function($table_name)  
  A callback whiuch resolves table names to classes.
* public static pq\Gateway\Table\CacheInterface $defaultMetadataCache  
  A default cache implementation. See pq\Gateway\Table\StaticCache.

* protected pq\Connection $conn  
  The PostgreSQL connection.
* protected string $name  
  The table name.
* protected mixed $rowset = "pq\\Gateway\\Rowset"  
  The rowset prototype.
* protected pq\Query\WriterInterface $query  
  A query writer.
* protected pq\Query\ExecutorInterface $exec  
  A query executor.
* protected pq\Gateway\Table\Identity $identity  
  The table identity implementation.
* protected pq\Gateway\Table\Attributes $attributes  
  The table attributes implementation.
* protected pq\Gateway\Table\Relations $relations  
  The table relations implementation.
* protected pq\Gateway\Table\CacheInterface $metadataCache  
  The metadata cache to use for this table.
* protected SplObjectStorage $observers  
  Table observers.

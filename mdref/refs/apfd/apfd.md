# pecl/apfd

## About:

Always Populate Form Data.

Handle request bodies on non-POST request methods.

## What it does:

This tiny extension lets PHP's post handler parse `multipart/form-data` and `application/x-www-form-urlencoded` (or any other customly registered form data handler, like [json_post](http://pecl.php.net/json_post)) without regard to the request's request method.

## Installation:

This extension is hosted at [PECL](http://pecl.php.net) and can be installed with [PEAR](http://pear.php.net)'s pecl command:

    # pecl install apfd

## Dependencies:

None.

## INI Directives:

None.


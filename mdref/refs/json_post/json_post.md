# pecl/json_post

## About:

JSON POST handler.

Parse JSON request bodies into `$_POST`.

## What it does:

This tiny extension provides a PHP content type handler for `text/json` to PHP's form data parser. 

If the `Content-Type` of an incoming request is `text/json`, the JSON contents of the request body will by parsed into `$_POST`.

## Installation:

This extension is hosted at [PECL](http://pecl.php.net) and can be installed with [PEAR](http://pear.php.net)'s pecl command:

    # pecl install json_post

## Dependencies:

* ext/json

## INI Directives:

* json_post.flags = 1; json_decode() flags
  * JSON_OBJECT_AS_ARRAY = 1
  * JSON_BIGINT_AS_STRING = 2
  * JSON_OBJECT_AS_ARRAY|JSON_BIGINT_AS_STRING = 3


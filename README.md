# Simple **PHP** **CRUD**-based app

![Screenshot](http://www.imghost.in/img/2016-05/31/dw1pq0jvaok3tgfv2mhmfqzrc.png "Main panel")

**PHP 5.4 required!**

For execute following app current database **should** be imported from [special sql-query](https://github.com/embarq/internet-db-cw/blob/master/actorsdb.sql)

Also [`db.php`](https://github.com/embarq/internet-db-cw/blob/master/db.php) is required if u're going to use `connect` & `request` wrappers:
```php
include_once('db.php');

connect($host, $login, $pass, $db_name, function() {
	request("SELECT * FROM `$table_name`", true, function($response) {
		foreach ($response as $item) {
			foreach($item as $key => $value) {
			  echo "<p>$key: $value</p>";
			};
		}
	});
});
```

### General wrap-functions headers

`connect` function header:
```php
function connect($host, $user, $pass, $db, $callback) {
  // ...
}
```
`request` function header:
```php
function request($sql, $fetch, $callback) {
  // ...
	if ($fetch) {
		$callback($result);
	} else {
		$callback();
	}
	// ...
}
```

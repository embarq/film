<?php 
	function throwerr($message) {
		echo $message."; error ".mysql_errno()."<br />".mysql_error()."<br />";
	};

	function connect($callback) {
		include_once('config.php');
		$cfg = get_config();
		$connection = mysql_connect($cfg["host"], $cfg["user"], $cfg["pass"]);
		if (!$connection) {
			die("Connection error: ".mysql_error());
			exit;
		}

		if (!mysql_selectdb($cfg["db"])) {
			throwerr("Unable to select DB `".$cfg["db"]."`");
		} else {
			$callback();	// which is `request` function normaly
		};

		mysql_close($connection);
	};

	function request($sql, $fetch, $callback) {
		$response = mysql_query($sql);
		if (!$response) {
			throwerr("Could not successfully run query { $sql }");
		} else {
			if ($fetch) {
				while(($result[] = mysql_fetch_assoc($response)) || array_pop($result));
				$callback($result);
				mysql_free_result($response);
			} else {
				$callback();
			}
		}
	}

	function retrieve($table, $fields, $condition) {
		$data = [];
		connect(function() use ($table, $fields, $condition, &$data) {
			$options = ($condition != '' ? "WHERE $condition" : '');
			request("SELECT $fields FROM $table $options", true, function($response) use (&$data) {
				foreach ($response as $item) {
					$data[] = $item;
				}
			});
		});
		return $data;
	}

	function update($table, $field, $value, $condition) {
		connect(function() use ($table, $field, $value, $condition) {
			$condition = ($condition !== '' ? "WHERE $condition" : '');
			request("UPDATE $table SET $field='$value' $condition", false, function() {});
		});
	}

	function insert_into($table, $dataset) {
		$quotify = function($item) {
			return "'$item'";
		};
		$fields = join(array_keys($dataset), ', ');
		$values = join(array_map($quotify, array_values($dataset)), ', ');

		$sql = "INSERT INTO $table($fields) VALUES($values)";

		connect(function() use ($sql) {
			request($sql, false, function() {
				header('Location: /index.php');
			});
		});
	}

	function delete($table, $id) {
		connect(function() use ($table, $id) {
			request("DELETE FROM $table WHERE id=$id", false, function() {
				header('Location: /index.php');
			});
		});
	}

	function component($name, $attrs, $value) {
		return "<$name $attrs>$value</$name>";
	}

	function option_component($value, $option, $state) {
		return component('option', "value='$value' $state", $option);
	}

	function get_value_type($arg) {
		$types = [
			'text' => '(\$\d+)',
			'date' => '(\d{4}-\d{2}-\d{2})',
			'number' => '(\d+|\d+\.\d+|\.\d+)',
		];
		foreach ($types as $key => $value) {
			if (preg_match($value, $arg)) return $key;
		}
		return 'text';
	}
?>
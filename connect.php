<?php

// Have to move the database to a new host
$hostname = "";
$username = "";
$password = "";

$link = mysql_connect($hostname, $username, $password);
if(!$link){
   die("Could not connect to the database");
}
mysql_select_db('smpr');

mysql_query("SET NAMES UTF8");

?>
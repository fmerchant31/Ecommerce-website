<?php
class Config
{
  public $con;
  public $error;
  public function __construct()
  {
    $this->con = mysqli_connect("localhost", "root", "", "ecommerce");
    if (!$this->con) {
      echo 'Database Connection Error ' . mysqli_connect_error($this->con);
    }
  }
}

global $db;
$db = new Config();
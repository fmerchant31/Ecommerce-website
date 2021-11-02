<?php
require_once('config.php');
class Products extends Config {
  public function FetchAllproducts() {
    $showA = mysqli_query($this->con, "SELECT * FROM products");
    //$show_row_num = mysqli_num_rows($showA);
    return $showA;
  }
}
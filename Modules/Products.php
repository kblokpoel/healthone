<?php
// TODO Zorg dat de methodes goed ingevuld worden met de juiste queries.
function getProducts(int $categoryId)
{
    global $pdo;

    $query = $pdo->prepare("SELECT * FROM products WHERE category_id = $categoryId");

    $query->execute();

    $p= $query->fetchAll(PDO::FETCH_CLASS,"Product");

    return $p;
}

function getProduct(int $productId)
{

}

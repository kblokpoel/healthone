<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>

<body>

<div class="container">
    <?php
    include_once('defaults/header.php');
    include_once('defaults/menu.php');
    include_once('defaults/pictures.php');
    ?>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item"><a href="/categories">Categories</a></li>
        </ol>
    </nav>
    <div class="row gy-3 ">
        <?php global $product ?>
            <div class="col-sm-4 col-md-8">
                <div class="card">
                    <div class="card-body text-center">
                        <img style="margin-left: 39%" class="product-img img-responsive center-block" src='<?= $product->picture; ?>'/>
                        <div style="margin-left: 39%" class="card-title mb-3"><?= $product->name; ?></div>
                    </div>
                </div>
            </div>
    </div>

    <hr>
    <?php
    include_once('defaults/footer.php');

    ?>
</div>

</body>
</html>


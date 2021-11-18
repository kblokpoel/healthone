<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
global $product;
?>
<body>
<div class="container">
    <?php
    include_once ('defaults/header.php');
    include_once ('defaults/menu.php');
    include_once ('defaults/pictures.php');
    ?>
    <div class="col-md-7 order-md2">
        <img class="img-fluid" src="<?= $product->picture; ?>" alt="image">
    </div>
    <div class="col-md-5 order-md-1">
        <p class="lead">
            <?= $product->description?>
        </p>
    </div>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
        Plaats review
    </button>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="modal-body">
                        <form>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                            </div>
                            <div class="mb-3">
                                <label for="exampleTextArea" class="form-label">Naam</label>
                                <input class="form-control" id="exampleTextArea">
                            </div>
                            <div class="mb-3">
                                <label for="exampleTextArea" class="form-label">review</label>
                                <textarea class="form-control" id="exampleTextArea"></textarea>
                            </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    <?php
    include_once ('defaults/footer.php');
    ?>
</div>
</body>
</html>

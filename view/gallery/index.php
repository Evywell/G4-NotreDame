<h1 class="titre_centre">Galerie</h1>
<?php foreach ($images as $image): ?>
    <img class="image" src="uploads/<?= $image->filename ?>" alt="<?= $image->name ?>">
<?php endforeach; ?>

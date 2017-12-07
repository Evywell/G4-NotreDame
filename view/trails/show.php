<h1><?= ucfirst(LOCALE === 'fr' ? $trail->name : $trail->en_name) ?></h1>
<p>
    <?= LOCALE === 'fr' ? $trail->description : $trail->description_en ?>
</p>
<p style="text-align: center">
<?php foreach ($images as $image): ?>
    <img src="<?= url('/uploads/' . $image->image) ?>" alt="" style="width: 220px;" class="image">
<?php endforeach; ?>
</p>

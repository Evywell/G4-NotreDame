<h1><?= PARCOURS ?></h1>
<p>
    <?= LOCALE === 'fr' ? $content->content : $content->en_content ?>
</p>
<?php foreach ($trails as $trail): ?>
    <h2 class="green"><a href="<?= $trail->slug ?>" style="color: inherit; text-decoration: none; "><?= ucfirst(LOCALE === 'fr' ? $trail->name : $trail->en_name) ?></a></h2>
    <p>
        <?= LOCALE === 'fr' ? $trail->content : $trail->en_content ?>
    </p>
<?php endforeach; ?>

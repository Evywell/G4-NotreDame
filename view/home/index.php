<div>
    <p class="dark">
        <?= LOCALE === 'fr' ? $content->content : $content->en_content ?>
    </p>
</div>
<div class="flex homepage">
    <div class="column">
        <a href="<?= url('/parcours/romantique') ?>" class="trail-thumb">
            <img class="trail-img" src="img/romantique.jpg" alt="">
            <div class="texte">
                <?= ROMANTIQUE ?>
            </div>
        </a>
    </div>
    <div class="column">
        <a href="<?= url('/parcours/culturel') ?>" class="trail-thumb">
            <img class="trail-img" src="img/culturel.jpg" alt="">
            <div class="texte">
                <?= CULTUREL ?>
            </div>
        </a>
    </div>
    <div class="column">
        <a href="<?= url('/parcours/groupe') ?>" class="trail-thumb">
            <img class="trail-img" src="img/groupe.jpg" alt="">
            <div class="texte">
                <?= GROUPE ?>
            </div>
        </a>
    </div>
</div>
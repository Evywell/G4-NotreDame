<div class="flex infos_pratiques">
    <div class="column">
        <?= LOCALE === 'fr' ? $content->content : $content->en_content ?>
    </div>
    <div class="column">
        <?php if($errors): ?>
            <ul class="error-list">
        <?php foreach ($errors as $error): ?>
                <li><?= $error ?></li>
        <?php endforeach; ?>
            </ul>
        <?php endif; ?>
        <?php if($success): ?>
            <p class="success"><?= $success ?></p>
        <?php endif; ?>
        <form class="form" method="POST">
            <div class="form-full">
                <label><?= NOM ?></label>
                <input type="text" name="nom" value="<?= fill('nom') ?>">
            </div>
            <div class="form-full">
                <label><?= PRENOM ?></label>
                <input type="text" name="prenom" value="<?= fill('prenom') ?>">
            </div>
            <div class="form-full">
                <label><?= EMAIL ?></label>
                <input type="text" name="email" value="<?= fill('email') ?>">
            </div>
            <div class="form-full">
                <label><?= MESSAGE ?></label>
                <textarea name="message" cols="30" rows="10"><?= fill('message') ?></textarea>
            </div>
            <button class="primary"><?= ENVOYER ?></button>
        </form>
    </div>
</div>
<p>
    <img class="image" style="width: 100%" src="<?= url('/img/carte.png') ?>" alt="">
</p>
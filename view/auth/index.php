<?php if($errors): ?>
    <ul class="error-list">
        <?php foreach ($errors as $error): ?>
            <li><?= $error ?></li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>
<form class="form" method="POST">
    <div class="form-full">
        <label>Nom d'utilisateur</label>
        <input type="text" name="username" value="<?= fill('username') ?>">
    </div>
    <div class="form-full">
        <label>Mot de passe</label>
        <input type="password" name="password">
    </div>
    <button class="primary">Se connecter</button>
</form>
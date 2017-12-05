<div class="flex infos_pratiques">
    <div class="column">
        <h1>Informations pratiques</h1>
        <h2>Horaires d'ouverture</h2>
        <p>
            <b>Du mardi au vendredi</b> : de <span>10h à 12h</span> et de 14h30 à 19h<br />
            <b>Le samedi</b> : de <span>10h à 12h</span> et de <span>14h30 à 18h</span>
        </p>
        <h2>Coordonnées</h2>
        <p>
            <b>48 rue Cochon-Duvivier - 17300 Rochefort</b><br />
            Téléphone : <span>01.23.45.67.89</span>
        </p>
        <p>
            Mail: <b><a href="mailto:test@test.fr" class="infos_pratiques__contact">nous contacter</a></b>
        </p>
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
                <label>Nom</label>
                <input type="text" name="nom" value="<?= fill('nom') ?>">
            </div>
            <div class="form-full">
                <label>Prénom</label>
                <input type="text" name="prenom" value="<?= fill('prenom') ?>">
            </div>
            <div class="form-full">
                <label>Adresse E-mail</label>
                <input type="text" name="email" value="<?= fill('email') ?>">
            </div>
            <div class="form-full">
                <label>Message</label>
                <textarea name="message" cols="30" rows="10"><?= fill('message') ?></textarea>
            </div>
            <button class="primary">Envoyer</button>
        </form>
    </div>
</div>
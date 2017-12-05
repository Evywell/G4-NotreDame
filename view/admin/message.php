<table width="100%" border="1">
    <thead>
        <tr>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Message</th>
            <th>E-mail</th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($messages as $message): ?>
        <tr>
            <td><?= $message->nom ?></td>
            <td><?= $message->prenom ?></td>
            <td><?= $message->message ?></td>
            <td><?= $message->email ?></td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
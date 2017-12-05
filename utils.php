<?php
function url($url) {
    return 'http://' . $_SERVER['HTTP_HOST'] . $url;
}

function fill($field) {
    if (!empty($_POST[$field])) {
        return $_POST[$field];
    }
    return null;
}
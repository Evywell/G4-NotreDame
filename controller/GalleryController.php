<?php


namespace Controller;


class GalleryController extends Controller
{

    public function index()
    {
        // On charge le model Gallery
        $this->loadModel('gallery');
        // On récupère toutes les images de la galerie
        $images = $this->Gallery->getAllImages();
        // On inclut la vue et le template
        $content_for_layout = $this->loadView('gallery/index', compact('images'), true);
        $this->loadView('layout/default', compact('content_for_layout'));
    }

}
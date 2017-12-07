<?php


namespace Controller;


class GalleryController extends Controller
{

    public function index()
    {
        // On charge le model Gallery
        $this->loadModel('gallery');
        // On récupère toutes les images de la galerie
        $this->data['images'] = $this->Gallery->getAllImages();
        // On inclut la vue et le template
        $this->data['content_for_layout'] = $this->loadView('gallery/index', $this->data, true);
        $this->loadView('layout/default', $this->data);
    }

}
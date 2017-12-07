<?php


namespace Controller;


class TrailsController extends Controller
{

    public function index()
    {
        $this->loadModel('trails');
        $this->loadModel('post');
        $this->data['content'] = $this->Post->getTrails();
        $this->data['trails'] = $this->Trails->getTrailsDetails();
        $this->data['content_for_layout'] = $this->loadView('trails/index', $this->data, true);
        $this->loadView('layout/default', $this->data);
    }

    public function show($matches)
    {
        $this->loadModel('trails');
        $this->data['trail'] = $this->Trails->getTrail($matches[0]);
        $this->data['images'] = $this->Trails->getImagesFor($this->data['trail']->id);
        $this->data['content_for_layout'] = $this->loadView('trails/show', $this->data, true);
        $this->loadView('layout/default', $this->data);
    }

}
Fkc::Application.routes.draw do
  root :to => 'pages#home', :as => 'home'
  get 'about' => 'pages#about'
  get 'ourstory' => 'pages#ourstory'
  get 'projects' => 'pages#projects'
  get 'music' => 'pages#music'
  get 'testimonials' => 'pages#testimonials'

  get 'requests' => 'pages#requests'
 end

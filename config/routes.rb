Fkc::Application.routes.draw do
  root :to => 'pages#home', :as => 'home'
  get 'about' => 'pages#about'
  get 'ourstory' => 'pages#ourstory'
  get 'projects' => 'pages#projects'

  # ----------------------
  # Temporary Redirect ---
  # ----------------------
  #match "/projects" => redirect("http://www.ReverbNation.com/FirstKeyCreations"), :as => :projects
  match "/buydancemusic" => redirect("http://1stkeycreations.bandcamp.com/album/the-competitive-edge-gymnastics-floor-music"), :as => :buydancemusic

  get 'music' => 'pages#music'
  get 'dancemusic' => 'pages#dance_music'
  get 'gymnasticsmusic' => 'pages#gymnastics_music'
  get 'musicform' => 'pages#music_form'
  get 'testimonials' => 'pages#testimonials'
  get 'wesupport' => 'pages#wesupport'

  get 'requests' => 'pages#requests'
 end

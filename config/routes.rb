Fkc::Application.routes.draw do
  root :to => 'pages#home', :as => 'home'
  get 'about' => 'pages#about'
  get 'ourstory' => 'pages#ourstory'
  get 'projects' => 'pages#projects'
  get 'testimonials' => 'pages#testimonials'

  get 'requests' => 'pages#requests'

  get  "custom_music", :to => "contact#new", :as => "custom_music"
  post "contact", :to => "contact#create"
 end

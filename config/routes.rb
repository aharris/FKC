Fkc::Application.routes.draw do
  get 'home' => 'pages#home' 
  get 'about' => 'pages#about' 
  get 'firstkey' => 'pages#firstkey'
  get 'projects' => 'pages#projects'
  get 'music' => 'pages#music'   
 end

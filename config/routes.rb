Fishingtackle::Application.routes.draw do

  resources :users

  resources :helps

  resources :questions

  match "/answer/question/:question_id" => "helps#new"

  resources :suppliers

  resources :articles

  resources :sessions

  match "signup" => "users#new"
  match "login" => "sessions#new"
  match "signout" => "sessions#destroy"

  resources :admin_console

  match 'about' => 'footer#about'
  match 'connect' => 'footer#connect'
  post '/footer/create'
  match 'feedback' => 'footer#feedback'

  match "search" => "pages#search"

  root :to => 'pages#home'

end

Rails.application.routes.draw do
  root "home#top"

  get "taisha" => "taisha#top"
  post "taisha/new" => "taisha#new"

  get 'karb' => "karb#top"
  post "karb/new" => "karb#new"


  get 'bmi' => "bmi#top"
  post "bmi/new" => "bmi#new"


  get "/" => "home#top"
  get "about" => "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

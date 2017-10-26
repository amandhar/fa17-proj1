Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers

  patch "/pokemons/:id", to: "pokemons#capture", as: "capture"
  put "/pokemons/:id", to: "pokemons#damage", as: "damage"
  get "/pokemons/new", to: "pokemons#new", as: "newpokemon"
  post "/pokemons", to: "pokemons#create", as: "createp"
  get "/trainers/:id", to: "trainers#show", as: "show_trainer"
end

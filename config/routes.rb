Rails.application.routes.draw do
  resources :foods
  resources :recipe_foods
  resources :recipes
end

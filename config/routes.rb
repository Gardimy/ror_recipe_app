Rails.application.routes.draw do
  devise_for :users
  root to: 'foods#index'

  resources :foods, only: [:index, :new, :create, :destroy]

  resources :recipes, except: [:update] do
    member do
      patch 'toggle_public'
      patch 'update_times'
      get 'new_step', to: 'recipe_steps#new'
      post 'create_step', to: 'recipe_steps#create'
    end

    resources :recipe_foods, only: [:new, :create, :destroy, :edit, :update]
  end

  get 'general_shopping_list', to: 'foods#general_shopping_list', as: 'general_shopping_list'

  resources :public_recipes, only: [:index]
end

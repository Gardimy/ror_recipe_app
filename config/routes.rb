Rails.application.routes.draw do

  resources :foods, except: [:show] do
    collection do
      get 'general_shopping_list', as: 'general_shopping_list'
    end
  end

  resources :recipes do
    resources :recipe_foods, except: [:show, :index], path: 'ingredients' do
      member do
        get 'edit', to: 'recipe_foods#edit', as: 'edit_ingredient'
      end
    end
  end

  root 'foods#index'
  resources :foods, only: [:index, :new, :create, :destroy]
end

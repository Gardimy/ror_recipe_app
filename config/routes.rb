Rails.application.routes.draw do

  resources :foods, except: [:show] do
    collection do
      get 'general_shopping_list'
    end
  end

  resources :recipes do
    resources :recipe_foods, except: [:show, :index]
  end

  root 'foods#index'
end

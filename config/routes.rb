Rails.application.routes.draw do
  resources :instances do
    collection do
      get 'machine_types'
      get 'locations'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

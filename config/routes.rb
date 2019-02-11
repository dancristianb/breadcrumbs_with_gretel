Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :albums, only: [:index, :edit, :show], param: :slug
  root to: 'albums#index'
end

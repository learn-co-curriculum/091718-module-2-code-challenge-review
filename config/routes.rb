Rails.application.routes.draw do
  resources :orders, only: [:index, :new, :create, :show, :edit, :update, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root "notices#index"
  resources :notices, only: [:index, :show, :new, :create, :destroy]
end

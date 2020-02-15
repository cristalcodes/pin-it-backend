Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pins#index'
  resources :pins, except: [:update, :edit]
  resources :memories, only: [:index, :new, :show, :create]

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pins#index'

  #route is for after deploying app online
    # get '/current_location', to: 'pins#get_ip_coordinates'


  resources :pins, except: [:update, :edit]
  resources :memories

end

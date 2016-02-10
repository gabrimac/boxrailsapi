Rails.application.routes.draw do

  scope :api do
    devise_for :users
    resources :file_storages
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :destroy, :update, :index, :show]
  resources :contacts, only: [:create, :destroy, :update, :show]
  resources :contact_shares, only: [:create, :destroy, :update, :index, :show]

  resources :users do
    resources :contacts, only: :index
  end

end

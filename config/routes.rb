Rails.application.routes.draw do
  resources :kinds
  resources :contacts do
    resource :kind, only: [:show]
    resource :phones, only: [:show]
    resource :phone, except: [:show, :index]
    resource :address, except: [:index]

    # resource :kind, only: [:show], path: 'relationships/kind'
    # resource :phones, only: [:show], path: 'relationships/phones'
    # resource :phone, except: [:show, :index], path: 'relationships/phones'
    # resource :address, except: [:index], path: 'relationships/address'
  end
end

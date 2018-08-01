Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'
  # resources :auths, only: [:create]

  resources :kinds

  api_version(:module => "v1", :path => {:value => "v1"}) do
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

  api_version(:module => "v2", :path => {:value => "v2"}) do
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


end

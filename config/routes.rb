Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'proposals/index'
      get 'proposals/show'
      get 'proposals/create'
      get 'proposals/update'
      get 'proposals/destroy'
      get 'users/index'
      get 'users/show'
      get 'users/create'
    end
  end
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :proposals do
      member do
        get 'legal_check' # Vérification légale de la proposition
        get 'track_kpi'   # Suivi KPI de la proposition
      end
    end  
  end
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

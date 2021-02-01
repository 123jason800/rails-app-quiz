Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/jobs', to: 'jobs#index'

  get '/jobs/:id', to: 'jobs#show'

  post '/jobs', to: 'jobs#create'

  root to: 'pages#index'

end

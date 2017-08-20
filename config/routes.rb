Rails.application.routes.draw do
  resources :tweets
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end

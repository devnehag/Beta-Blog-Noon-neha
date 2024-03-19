Rails.application.routes.draw do
  get 'web/bootstrap'
  post '/login', to: 'sessions#create'
  resources :users, only: [:create]
  resources :messages, only: [:index, :create]
  resources :blogs do
    post 'like'
    delete 'unlike'
  end
  scope '/web' do
    get 'bootstrap', to: 'web#bootstrap'
  end
end

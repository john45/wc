Rails.application.routes.draw do
  root 'main#index'

  scope '/admin' do
    resources :recepts
  end
  post 'main/search'
end

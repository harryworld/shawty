Rails.application.routes.draw do
  devise_for :users
  root 'site#index'

  get 'privacy' => 'site#privacy'
  get 'terms'   => 'site#terms'

  # routes for URL
  post 'url'    => 'url#create'
  get  'url'    => 'url#index'
end

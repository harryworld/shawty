Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'site#index'

  get 'privacy' => 'site#privacy'
  get 'terms'   => 'site#terms'

  # routes for URL
  post 'url'    => 'url#create'
  get  'url'    => 'url#index'

  # Contact Us
  get 'contact' => 'contacts#new'
  post 'contact' => 'contacts#create'
end

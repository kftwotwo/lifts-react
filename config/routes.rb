Rails.application.routes.draw do
  resources :lifts
  root to: 'contacts#index'
  resources :contacts
end

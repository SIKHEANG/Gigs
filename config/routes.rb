Rails.application.routes.draw do
  resources :registers
  devise_for :users
  resources :events
  resources :musicians
  root 'welcome#index'

  get '/khmer' => 'welcome#khmer'
  get '/western' => 'welcome#western'
end

Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'user/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'referrals#index'
  # hello
  resources :users, only: [:index, :show]
  resources :referrals, except: [:destroy] do
    resources :notes, except: [:destroy]
  end
end

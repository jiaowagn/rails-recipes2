Rails.application.routes.draw do

  devise_for :users

  resources :events

  namespace :admin do
    root "events#index"
    resources :events
  end

  resource :user 

  get "/faq" => "pages#faq"

  root "events#index"

end

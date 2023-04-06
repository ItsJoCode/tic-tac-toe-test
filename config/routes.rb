Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :games do
    member do
      post 'check_box'
    end
  end
end

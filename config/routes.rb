Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  namespace :v1 do
    resources :post
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

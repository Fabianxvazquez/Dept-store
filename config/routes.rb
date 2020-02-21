Rails.application.routes.draw do
  root "depts#index"
  resources :depts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

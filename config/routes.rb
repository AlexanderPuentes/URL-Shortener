Rails.application.routes.draw do
root "shorteners#index"

resources :shorteners


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

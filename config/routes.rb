Rails.application.routes.draw do
  resources :records
  resources :meals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top', to: 'meals#top'
end

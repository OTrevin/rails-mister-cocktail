Rails.application.routes.draw do
  get 'cocktails', to: 'cocktails#index', as: :cocktails
  get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
  get "cocktails/:id", to: 'cocktails#show', as: :cocktail
  post 'cocktails', to: 'cocktails#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'doses/new'
  get 'doses/create'
end

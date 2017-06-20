Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'translations/list', to: 'translations#list', as: 'translations_list'
  resources :translations
  root  to: 'translations#index'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'translation#index'
  get '/', to: 'translation#index', as: 'inicio'
  get 'translation/new', to: 'translation#new', as: 'new_translation'
  post 'translation/new', to: 'translation#create', as: 'translation_save'
  get 'translation/list', to: 'translation#list', as: 'translation_list'
  get 'translation/:id', to: 'translation#show', as: 'show'
  get 'translation/:id/edit', to: 'translation#edit', as: 'edit'
  put 'translation/:id/edit', to: 'translation#update', as: 'update'
  patch 'translation/:id/edit', to: 'translation#update'
  delete 'translation/:id', to: 'translation#destroy', as: "destroy"
end

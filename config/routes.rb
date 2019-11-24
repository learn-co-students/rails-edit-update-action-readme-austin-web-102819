Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'

  # This will do the same exact thing as the line above:
  resources :articles, only: [:index, :show, :new, :create, :edit, :update]

end

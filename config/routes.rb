Rails.application.routes.draw do
  resources :articles
  # # view all
  # get '/articles', to: 'articles#index'
  # # create new
  # get 'articles/new', to: 'articles#new', as: :new_article
  # post 'articles', to: 'articles#create'
  # # view one
  # get 'articles/:id', to: 'articles#show', as: :task
  # # update
  # get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  # patch 'articles/:id', to: 'articles#update'
  # # delete
  # delete 'articles/:id', to: 'articles#destroy'
end

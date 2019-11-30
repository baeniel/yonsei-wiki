Rails.application.routes.draw do
  get 'posts/create'
  get 'posts/show'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/destroy'
  root 'topics#index'
  devise_for :users
  resources :subtopics
  resources :topics
  resources :posts
end

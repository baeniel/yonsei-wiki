Rails.application.routes.draw do
  root 'topics#index'
  devise_for :users
  resources :subtopics
  resources :topics
end

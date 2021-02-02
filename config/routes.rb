Rails.application.routes.draw do
  devise_for :users
  resources :links do
    resources :comments, only: [:create]
   member do
    put "like", to: "links#upvote"
    put "dislike", to: "links#downvote"
   end
  end
   resources :comments
  root to: 'links#index'
end
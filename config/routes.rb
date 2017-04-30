Rails.application.routes.draw do
  devise_for :users
  resources :pictures do
  	member do
  	  put "like", to: "picture#upvote"
  	end
  end		
  root "pictures#index"
end

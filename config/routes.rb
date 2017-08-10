Rails.application.routes.draw do
  resources :categories
resources :articles do	
  resources :comments, only: [:create, :destroy, :update, :show]  
end
  devise_for :users
	root 'articles#index'

  get "/dashboard", to: "welcome#dashboard"

  put "/articles/:id/publish", to: "articles#publish"
end
=begin
  		get "/articles"		index
  		post "/articles"	create
  		delete "/articles/:id"	destroy
  		get "articles/:id"	show
  		get "articles/new"	new
  		get "/articles/:id/edit"	edit
  		patch "/articles/:id"	update
  		put "/articles/:id"	update
=end

  #You can have the root of your site routed with "root"   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


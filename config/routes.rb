Rails.application.routes.draw do
  devise_for :users
  root "packages#index"
  # Routes for the Package resource:

  # CREATE
  post("/insert_package", { :controller => "packages", :action => "create" })
          
  # READ
  get("/packages", { :controller => "packages", :action => "index" })
  
  # UPDATE
  
  post("/modify_package/:path_id", { :controller => "packages", :action => "update" })
  
  # DELETE
  get("/delete_package/:path_id", { :controller => "packages", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

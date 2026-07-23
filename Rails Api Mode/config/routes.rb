Rails.application.routes.draw do
  
  get "up" => "rails/health#show", as: :rails_health_check
    

  # request- url- controller(#method)
  # get "/hello", to: "api#hello"
  get "/books", to: "books#index"
   get "/books/:id", to: "books#show"

end

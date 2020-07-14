Rails.application.routes.draw do
  namespace :api do
    get "/candies" => "candies#index"
    post "/candies" => "candies#create"
    get "/candies/:id" => "candies#show"
    patch "/candies/:id" => "candies#update"
    delete "/candies/:id" => "candies#destroy"
    post "/users" => "users#create"
  end
end

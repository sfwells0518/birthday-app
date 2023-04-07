Rails.application.routes.draw do
  get "/birthdays" => "birthdays#index"
  get "/birthdays/:id" => "birthdays#show"
  post "/birthdays" => "birthdays#create"
  patch "/birthdays/:id" => "birthdays#update"
  # delete "/birthdays/:id" => "birthdays#destroy"
end

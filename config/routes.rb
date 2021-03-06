Rails.application.routes.draw do

  resources :gas
  resources :gfs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  match "api/down_gfs" => "api#down", via: :get#[:get, :post]
  match "api/down_ok" => "api#down_ok", via: :get#[:get, :post]
  match "api/create_gfs" => "api#create_gfs", via: :post#[:get, :post]
  match "api/incomplete_gfs" => "api#incomplete_gfs", via: :get#[:get, :post]


  match "api/down_gas" => "api#down_gas", via: :get#[:get, :post]
  match "api/down_gas_ok" => "api#down_gas_ok", via: :get#[:get, :post]
  match "api/create_gas" => "api#create_gas", via: :post#[:get, :post]
  match "api/incomplete_gas" => "api#incomplete_gas", via: :get#[:get, :post]
end

Rails.application.routes.draw do
  resources :point_tables
  get "table_highlight", to: "point_tables#table_highlight"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

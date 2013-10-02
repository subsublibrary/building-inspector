Webappmini::Application.routes.draw do
  get "general/home"

  get "general/about"
  
  get "general/help"

  devise_for :users

  resources :polygons

  resources :flags

  resources :sheets

  get "cookie_test" => "fixer#cookie_test"

  get "fixer/building"

  get "fixer/color"

  get "fixer/progress"
  get "fixer/sessionProgress"

  match "fixer/map" => "fixer#randomMap"

  match "fixer/flag" => "fixer#flagPolygon"

  match "color" => "fixer#color"
  match "building" => "fixer#building"
  
  root :to => "general#home"
end

Blife::Engine.routes.draw do
  resources :severities
  resources :priorities
  resources :defects
  root 'defects#index'
end

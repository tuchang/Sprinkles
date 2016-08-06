Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "home#index"
 # after_sign_in_path_for 
 # after_sign_out_path_for 
  mount Blife::Engine =>  "/", as: 'blife'
  mount Wpractice::Engine => "/", as: 'wpractice'
end

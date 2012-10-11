AncClipper::Application.routes.draw do
  resources :clippers, :only => [:index, :show, :create]
  root :to => 'clippers#index'
end
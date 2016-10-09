Rails.application.routes.draw do  
  # Added devise routes and overrided registration controller
  devise_for :users, :controllers => { registrations: 'registrations' }
  # hotel resources only with index route
  resources :hotel, only: :index

  # api routes
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      devise_for :users
    end
  end

  # root path 
  root "hotel#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

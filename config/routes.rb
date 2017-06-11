Rails.application.routes.draw do
  resources :users
  constraints do 
  	namespace :api,path: '/' do
  		namespace :v1 do
  			resources :users,except:[:new,:edit]
  		end
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

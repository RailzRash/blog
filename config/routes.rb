Rails.application.routes.draw do
resources :events do
	resources :comments 
end

resources :skyblogs do 
	resources :comments
end

root "welcome#index"
end

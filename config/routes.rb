Rails.application.routes.draw do
resources :skyblogs
root "welcome#index"
end

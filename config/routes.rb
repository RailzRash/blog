Rails.application.routes.draw do
  resources :events

resources :skyblogs
root "welcome#index"
end

Rails.application.routes.draw do
   #access_tokens#creat For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :articles, only: [:index,:show]
    post 'login', to: 'access_tokens#create' 
end

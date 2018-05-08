Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index' # 'controller#action'
  get '/help', to: 'home#help'
  get '/about', to: 'home#about'
 
  resources :todos#<<<==== Что делает эта штука?
end

Rails.application.routes.draw do
    resources :contacts, only: [:new, :create]
    get 'welcome/homepage'
    get 'register', controller: 'register', action: 'new', as: '/register'
    post 'register', controller: 'register', action: 'create'


    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get '/welcome', to: 'welcome#overseas', as: :welcomeoverseas
  get 'newsletter', to: 'newsletter#index'
  get 'flip-book', to: 'flipbook#index'
  get 'sav', to: 'sav#index'
  get 'catalogue', to: 'catalog#index'

  root to: 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

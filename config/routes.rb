Rails.application.routes.draw do
  get 'answers/new'
  get 'answers/create'
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :studies do
    resources :questions do
      resources :answers, only: [:new, :create]
    end
  end
end

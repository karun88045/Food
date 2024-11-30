Rails.application.routes.draw do
  get "landing_page/index"
  get "loads/show"
  root "landing_page#index"
  mount ActionCable.server => '/cable'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  get "menu" => "landing_page#menu", as: :menu
  get "about" => "landing_page#about", as: :about
  get "contact" => "landing_page#contact", as: :contact
  get "message" => "message#index", as: :message
  resources :products, only: [:index, :new, :edit, :show, :update]

  namespace :super_admin do
    resources :products, only: [:index, :new, :edit, :show, :update, :delete]
  end
end

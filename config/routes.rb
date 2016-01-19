Rails.application.routes.draw do

  devise_for :users
  root to: "pages#index"

  get '/pages/about_us', to: 'pages#about_us'
  get '/pages/careers', to: 'pages#careers'
  get '/pages/contact_us', to: 'pages#contact_us'

  
  get '/appointments', to: 'appointments#index'
  get '/appointments/new', to: 'appointments#new'
  post '/appointments', to: 'appointments#create'
  get '/appointments/:id', to: 'appointments#show'
  get '/appointments/:id/edit', to: 'appointments#edit'
  patch '/appointments/:id', to: 'appointments#update' 
  delete '/appointments/:id', to: 'appointments#destroy'

  get '/profiles', to: 'profiles#index'
  get '/profiles/:id', to: 'profiles#show'
  get '/profiles/:id', to: 'profiles#search'
  get '/profiles/:id/edit', to: 'profiles#edit'
  patch '/profiles/:id', to: 'profiles#update' 
  namespace :api do
      namespace :v1 do
        resources :profiles 
    get '/profiles/search', to: 'profiles#search'
      end
    end


  get '/skills', to: 'skills#index'
  get '/skills/new', to: 'skills#new'
  post '/skills', to: 'skills#create'
  get '/skills/:id', to: 'skills#show'
  get '/skills/:id/edit', to: 'skills#edit'
  patch '/skills/:id', to: 'skills#update' 
  delete '/skills/:id', to: 'skills#destroy'

  get '/professional_roles', to: 'professional_roles#index'
  get '/professional_roles/new', to: 'professional_roles#new'
  post '/professional_roles', to: 'professional_roles#create'
  get '/professional_roles/:id', to: 'professional_roles#show'
  get '/professional_roles/:id/edit', to: 'professional_roles#edit'
  patch '/professional_roles/:id', to: 'professional_roles#update' 
  delete '/professional_roles/:id', to: 'professional_roles#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

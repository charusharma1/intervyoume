Rails.application.routes.draw do

  devise_for :users
  root to: "appointments#index"
  
  get '/appointments', to: 'appointments#index'
  get '/appointments/new', to: 'appointments#new'
  post '/appointments', to: 'appointments#create'
  get '/appointments/:id', to: 'appointments#show'
  get '/appointments/:id/edit', to: 'appointments#edit'
  patch '/appointments/:id', to: 'appointments#update' 
  delete '/appointments/:id', to: 'appointments#destroy'

  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'
  get '/users/:id/edit', to: 'users#edit'
  patch '/users/:id', to: 'users#update' 
  delete '/users/:id', to: 'users#destroy'

  get '/skills', to: 'skills#index'
  get '/skills/new', to: 'skills#new'
  post '/skills', to: 'skills#create'
  get '/skills/:id', to: 'skills#show'
  get '/skills/:id/edit', to: 'skills#edit'
  patch '/skills/:id', to: 'skills#update' 
  delete '/skills/:id', to: 'skills#destroy'

  get '/professioanal_roles', to: 'professioanal_roles#index'
  get '/professioanal_roles/new', to: 'professioanal_roles#new'
  post '/professioanal_roles', to: 'professioanal_roles#create'
  get '/professioanal_roles/:id', to: 'professioanal_roles#show'
  get '/professioanal_roles/:id/edit', to: 'professioanal_roles#edit'
  patch '/professioanal_roles/:id', to: 'professioanal_roles#update' 
  delete '/professioanal_roles/:id', to: 'professioanal_roles#destroy'

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

Rails.application.routes.draw do
  # Routes for the Event resource:
  # CREATE
  get '/new_event' => 'events#new'
  get '/create_event' => 'events#create'

  # READ
  get '/events' => 'events#index'
  get '/events/:id' => 'events#show'

  # UPDATE
  get '/events/:id/edit' => 'events#edit'
  get '/events/:id/update' => 'events#update'

  # DELETE
  get '/events/:id/destroy' => 'events#destroy'
  #------------------------------

  # Routes for the Tournament_event resource:
  # CREATE
  get '/new_tournament_event' => 'tournament_events#new'
  get '/create_tournament_event' => 'tournament_events#create'

  # READ
  get '/tournament_events' => 'tournament_events#index'
  get '/tournament_events/:id' => 'tournament_events#show'

  # UPDATE
  get '/tournament_events/:id/edit' => 'tournament_events#edit'
  get '/tournament_events/:id/update' => 'tournament_events#update'

  # DELETE
  get '/tournament_events/:id/destroy' => 'tournament_events#destroy'
  #------------------------------

  # Routes for the Registration resource:
  # CREATE
  get '/new_registration' => 'registrations#new'
  get '/create_registration' => 'registrations#create'

  # READ
  get '/registrations' => 'registrations#index'
  get '/registrations/:id' => 'registrations#show'

  # UPDATE
  get '/registrations/:id/edit' => 'registrations#edit'
  get '/registrations/:id/update' => 'registrations#update'

  # DELETE
  get '/registrations/:id/destroy' => 'registrations#destroy'
  #------------------------------

  # Routes for the Tournament resource:
  # CREATE
  get '/new_tournament' => 'tournaments#new'
  get '/create_tournament' => 'tournaments#create'

  # READ
  get '/tournaments' => 'tournaments#index'
  get '/tournaments/:id' => 'tournaments#show'

  # UPDATE
  get '/tournaments/:id/edit' => 'tournaments#edit'
  get '/tournaments/:id/update' => 'tournaments#update'

  # DELETE
  get '/tournaments/:id/destroy' => 'tournaments#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

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

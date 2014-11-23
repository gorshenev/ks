PrivateEvents::Application.routes.draw do


  resources :specialities

  mount RailsAdmin::Engine => '//admin', as: 'rails_admin'
  get "static_pages/PastEvent"
  root to: 'static_pages#trainingcenter'
  match '/about', to: 'static_pages#about',     via: 'get'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  resources :news
  resources :users, only: [:new, :create, :edit, :update, :show, :index]
  match '/signup',  to: 'users#new',            via: 'get'

  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  resources :events, only: [:new, :create, :show, :index]


  resources :invites, only: [:create, :destroy]

  resources :news
  resources :posts

  get '/trainingcenter', to: 'static_pages#trainingcenter'


  get '/users/:id' =>  'users#show'

  get '/equipment', to: 'static_pages#equipment'

  get '/formlearn', to: 'static_pages#formlearn'

  get '/courses', to: 'static_pages#courses'

  get '/sanktpeterburg', to: 'static_pages#sanktpeterburg'

  get '/partners', to: 'static_pages#partners'
  get '/eventspast', to: 'events#index'
  get '/contact', to: 'static_pages#contact'

  get '/calendar', to: 'calendar#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
    # get 'products/:id' => 'catalog#view'

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

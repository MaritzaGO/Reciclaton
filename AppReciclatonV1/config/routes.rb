Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :alliances
  resources :supplies
  resources :demands
  resources :residues
  resources :categories

  root to: "home#indexreciclaton"

  post '/send', to: 'home#enviar_correo', as: :send_email

  
  get '/compra_venta', to: 'home#compra_venta', as: :compra_venta
  get '/l_reciclaje', to: 'home#l_reciclaje', as: :l_reciclaje
  get '/red_reciclatones', to: 'home#red_reciclatones', as: :red_reciclatones
  get '/nosotros', to: 'home#nosotros', as: :nosotros
  get '/contactenos', to: 'home#contactenos', as: :contactenos
  get '/camp_sens', to: 'home#camp_sens', as: :camp_sens


  devise_for :clients, controllers: {sessions: 'sessions', registrations: 'registrations', :omniauth_callbacks => "clients/omniauth_callbacks"} 


  resources :clients


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

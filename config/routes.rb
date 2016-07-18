Rails.application.routes.draw do
  root 'home#index', as: :home



  get 'containers/' => 'containers#index', as: :containers

  #first check container/new
  get 'container/new' => 'containers#new', as: :container_new
  post 'container/new' => 'containers#create', as: :container_create

  #then check container/:id
  get 'container/:id' => 'containers#show', as: :container
  post 'container/:id' => 'containers#rename', as: :container_rename

  get 'container/:id/start' => 'containers#start', as: :container_start
  get 'container/:id/stop' => 'containers#stop', as: :container_stop
  get 'container/:id/restart' => 'containers#restart', as: :container_restart
  get 'container/:id/commit' => 'containers#commit', as: :container_commit
  get 'container/:id/remove' => 'containers#remove', as: :container_remove

  #images
  get 'images' => 'images#index', as: :images
  get 'image/:id' => 'images#show', as: :image
  get 'image/:id/remove' => 'images#remove', as: :image_remove
  post 'image/:id' => 'images#tag', as: :image_tag

  #usrp
  get 'usrp' => 'usrp#index', as: :usrp
  post 'usrp' => 'usrp#create', as: :usrp_create


  #nodes
  get 'nodes' => 'nodes#index', as: :nodes

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

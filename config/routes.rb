Gaesin::Application.routes.draw do


  resources :questions

  resources :groups
  resources :contacts
 
  resources :boards do
    resources :posts
  end

  resources :comments


  #devise_for :users
  devise_for :users, :controllers => { :registrations => "registrations" }

  resources :users do
    member do
      get :set_admin, :unset_admin
    end
  end
  
  get "main_pages/home"
  get "main_pages/about"
  get "main_pages/mission"
  get "main_pages/joinus"
  get "main_pages/levelup"
  
  root :to => "main_pages#home"
  
  match '/users/auth/:service/callback' => 'services#create' 
  resources :services, :only => [:index, :create, :destroy]
  
  
  match '/about', to: 'main_pages#about'
  match '/mission', to: 'main_pages#mission'
  match '/joinus', to: 'main_pages#joinus'
  match '/levelup', to: 'main_pages#levelup'
  


  resources :test_models
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

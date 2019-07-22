Rails.application.routes.draw do

  get 'shop_images/show'

  get 'qbwc/action' => 'qbwc#_generate_wsdl'
  get 'qbwc/qwc' => 'qbwc#qwc'
  wash_out :qbwc

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  Spree::Core::Engine.routes.draw do
  get 'shop_images/show'

  get 'qbwc/action' => 'qbwc#_generate_wsdl'
  get 'qbwc/qwc' => 'qbwc#qwc'
  wash_out :qbwc
    root to: "products#index"
  end

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/store'
  # get "/store/" => redirect('products_path')
          # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root :to => 'jcautohome#home'

  # redirect admin
  get "/admin" => redirect("/store/admin")

  # get '/' => 'jcautohome#home', as: 'home'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'about' => 'jcautohome#about'
  get 'gallery' => 'jcautohome#gallery'
  get 'parts' => 'jcautohome#parts'
  get 'our-services' => 'jcautohome#services'
  get 'community' => 'jcautohome#community'
  get 'contact' => 'jcautohome#contact'
  get 'our-services/gauges' => 'jcautohome#gauges'
  get 'our-services/em' => 'jcautohome#em'
  get 'our-services/shipping' => 'jcautohome#shipping'
  get 'sale-cars' => 'jcautohome#sale_cars'
  get 'policies' => 'jcautohome#policies'
  get 'privacy-policy' => 'jcautohome#privacy_policy'
  get 'timeline' => 'jcautohome#timeline'
  get 'my-cars' => 'customer_cars#index'

  resources :services, only: :show
  resources :jcautohome do
    collection do
      post :submit_contact
    end
  end

  resources :cars, only: :show
  resources :sale_cars, only: :show
  resources :customer_cars, except: :show
  resources :shop_images, only: :show
  

  # handle 404
  match "/404" => "errors#error404", via: [ :get, :post, :patch, :delete ]

  namespace :admin do
    resources :customers do
      resources :contacts do
        member do
          put 'resolved'
        end
      end
    end

    resources :cars do
      resources :car_images do
        collection do
          post :update_positions
        end
      end
    end

    resources :sale_cars do
      resources :sale_car_images do
        collection do
          post :update_positions
        end
      end
    end

    resources :events do
      resources :event_images do
        collection do
          post :update_positions
        end
      end
    end

    resources :stories do
      resources :story_images
    end

    resources :services do
      resources :service_images
      resources :service_price_lists do
        collection do
          post :update_service_items_positions
        end
      end
    end

    resources :shop_images

    delete '/service_items/:id', to: "service_items#destroy", as: :service_item
  end


  resources :events, only: [:index, :show] do
    collection do
      post :event_rsvp
    end
  end

  resources :stories, only: [:index, :show]

  resources :user_events, only: [:create, :new]

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

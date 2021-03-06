Polyfit::Application.routes.draw do
  root to: 'regiment_requests#new'

  devise_for :users
  
  resources :user_favorites
  #taken care by devise
  #get '/signup', to: 'users#new'

  #change default sign_in and sign_out routes in devise
  devise_scope :user do
    get "/signin", to: "devise/sessions#new"
    get "/signout", to: "devise/sessions#destroy"
    get "/signup", to: "devise/registrations#new"

    #user profiles
    get '/profile/edit', to: 'devise/registrations#edit'
  end

  get 'profile/show', to: 'users#show'

  get '/test', to: 'static#test'
  get '/style', to: 'static#style'

  get '/about', to: 'static#about'
  get '/copyright', to: 'static#copyright'
  get '/privacy', to: 'static#privacy'
  get '/terms', to: 'static#terms'
  get '/faq', to: 'static#faq'
  get '/support', to: 'static#support'

  resources :regiment_requests
  
  resources :regiment_exercises

  resources :regiments

  resources :exercises

  resources :users

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

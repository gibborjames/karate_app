Karate::Application.routes.draw do

  devise_for :users

  namespace :admin do
    root to: "base#index"
    resources :members, :only => [:index]
    resources :announcements, :only => [:index, :new, :create, :show]
  end

  namespace :member do

  end
  # by pass namespace for member to force account path
  match "/account" => "member/account#index", via: [:get]
  match "/account/edit" => "member/account#edit", via: [:get]

  resources :users, :only => [:create]

  root to: "pages#index"

  namespace :api do
    namespace :v1 do
      resources :announcements, :only => [:show] do
        member do
          put :publish
          get :publish
          put :hide
          get :hide
        end
      end
    end
  end
  match "/account" => "member/account#index", via: [:get]
  match "/news" => "pages#news", via: [:get]
  match "/announcement" => "pages#announcement", via: [:get]
  match "/about_us" => "pages#about_us", via: [:get]
  match "/registration" => "pages#registration", via: [:get]
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

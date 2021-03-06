Rails.application.routes.draw do
  resources :qsheets
=begin
  resources :users, only: [:new, :create] do
    member do
      get :activate
    end
  end
=end

  resources :reset_passwords, only: [:new, :create, :update, :edit]
  resources :sessions, only: [:new, :create, :destroy]

  namespace :admin_setup do
    resources :contest, only: [:new, :create, :destroy, :edit, :show]
    resources :judge, only: [:new, :create, :destroy, :edit, :show]
    resources :auctioneer, only: [:new, :create, :destroy, :edit, :show]
    resources :question, only: [:new, :create, :destroy, :edit, :show]
  end
  get 'admin_setup' => 'admin_setup#setup'
  get 'admin_judge' => 'admin#judge'
  get 'admin_auctioneer' => 'admin#auctioneer'
  get 'admin_contest' => 'admin#contest'
  
  resources :admin, only: [:index, :judge, :auctioneer, :contest, :new, :create, :scoreSummary]
  resources :judge, only: [:index, :edit, :update, :show]
  # resources :qsheets, only: [:index, :edit, :new, :show, :destroy]

  get 'judge_score' => 'judge#score'
  get 'admin_scoreSummary' => 'admin#scoreSummary'
  
  get 'qsheets_show' => 'qsheets#show'

  
  get '/log_in', to: 'sessions#new', as: :log_in
  delete '/log_out', to: 'sessions#destroy', as: :log_out

  root to: 'main#index'

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

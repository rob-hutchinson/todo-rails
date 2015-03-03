Rails.application.routes.draw do
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  root 'application#home'

  get '/new_list' => 'lists#new', as: 'new_list'
  post '/lists' => 'lists#create', as: 'lists'
  get '/lists/:id' => 'lists#show', as: 'list'
  get '/lists' => 'lists#index', as: 'list_index'
  get '/lists/:id/new_item' => 'items#new', as: 'new_item'
  post '/lists/:id/items' => 'items#create', as: 'items'
end

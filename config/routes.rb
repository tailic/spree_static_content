Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :pages do
      resources :page_images do
        collection do
          post :update_positions
        end
      end
    end
  end
  constraints(Spree::StaticPage) do
    get '/(*path)', :to => 'static_content#show', :as => 'static'
  end
end

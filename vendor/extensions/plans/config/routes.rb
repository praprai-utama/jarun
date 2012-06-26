Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :plans do
    resources :plans, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :plans, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :plans, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end

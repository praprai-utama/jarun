Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :schedules do
    resources :schedules, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :schedules, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :schedules, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end

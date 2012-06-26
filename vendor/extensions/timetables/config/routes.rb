Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :timetables do
    resources :timetables, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :timetables, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :timetables, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end

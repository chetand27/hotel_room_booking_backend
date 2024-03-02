Rails.application.routes.draw do
  namespace :api, constraints: { format: :json } do
    namespace :v1 do
      resources :hotels, only: [:index] do
        collection do
          get :search, to: 'hotels#search'
        end

        resources :rooms, only: [:index]
        resources :bookings, only: [:new, :create, :update]
      end

      resources :bookings, only: [:index, :destroy]
    end
  end
end

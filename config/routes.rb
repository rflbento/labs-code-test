Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users, only: [:create]

      put '/accounts/:token/update_limit', to: 'accounts#update', as: 'update_limit'
    end
  end
end

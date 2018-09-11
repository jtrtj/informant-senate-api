Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/votes', to: 'votes#index'
    end
  end
end

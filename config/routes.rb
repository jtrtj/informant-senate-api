Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/votes', to: 'votes#index'
      get '/most-recent-vote', to: 'most_recent_vote#show'
    end
  end
end

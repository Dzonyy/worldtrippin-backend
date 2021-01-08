# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :auth, only: %i[create]

      resources :users
    end
  end
end

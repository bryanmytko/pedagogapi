Rails.application.routes.draw do
  scope module: :api, defaults: { format: :json } do
    scope :api do
      namespace :v1 do
        resources :superheroes, only: [:index, :show]
      end
    end
  end
end

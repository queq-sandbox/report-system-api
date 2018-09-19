Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :daily_reports, only: [:create, :update, :destroy]
  resources :weekly_reports, only: [:create, :update, :destroy]

  scope 'teams/:team_id', as: :team do
    resources :daily_reports, module: :teams, only: :index
    resources :weekly_reports, module: :teams, only: :index
  end
end

Rails.application.routes.draw do

  root to: 'app/dashboards#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    invitations: 'users/invitations',
  }

  namespace :app do
    get 'dashboard' => 'dashboards#index',  as: :dashboards
    get 'setting' => 'settings#index',  as: :settings
    get 'report' => 'reports#index',  as: :reports
    get 'assessment' => 'assessments#index',  as: :assessments
    resources :residents
    resources :mobility_assessments
    resources :pain_assessments
    resources :post_fall_assessments

    resources :users do
      collection do
        get :profile
      end
    end
  end

  namespace :admin do
    get 'dashboard' => 'dashboards#index',  as: :dashboards
    get 'setting' => 'settings#index',  as: :settings
    get 'report' => 'reports#index',  as: :reports
    resources :users
    resources :businesses, only: [:update] do
      collection do
        get :profile
      end
    end
  end
end

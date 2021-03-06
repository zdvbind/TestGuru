Rails.application.routes.draw do
  resource :feedback, only: %i[create new]
  resources :badges, only: %i[index]
  root 'tests#index'

  devise_for :users, controllers: { sessions: 'users/sessions' }, path: :gurus,
                     path_names: { sign_in: :login, sign_out: :logout }

  resources :tests, only: :index do
    member do
      post :start
    end
  end

  resources :test_passages, only: %i[show update] do
    member do
      get :result
      post :gist
    end
  end

  namespace :admin do
    resources :tests do
      patch :update_inline, on: :member

      resources :questions, shallow: true, except: :index do
        resources :answers, except: :index, shallow: true
      end
    end
    resources :gists, only: :index
    resources :badges
  end
end

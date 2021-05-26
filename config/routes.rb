Rails.application.routes.draw do
  resources :answers
  resources :tests do
    resources :questions, shallow: true, except: :index

    member do
      post :start
    end
  end

  resources :test_passages, only: %i[show update] do
    member do
      get :result
    end
  end
end

Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  scope module: :public do
    get "it_words/index"
  end

  namespace :admin do
    get "it_words/index"
  end

  # collection以降、URL要確認
  resources :it_words, except:[:index] do
    collection do
      get "start"
      get "quiz"
      get "finish"
    end
  end

  resources :users, only:[:edit, :update, :destroy, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
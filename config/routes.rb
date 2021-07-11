Rails.application.routes.draw do
  root to: "homes#top"
  get "homes/choice"
  devise_for :users
  get "/search" => "search#search"

  scope module: :public do
    get "it_words/index"
  end

  namespace :admin do
    get "it_words/index"
  end

  # collection以降、学習機能実装時、URL要確認
  resources :it_words, except:[:index] do
    collection do
      get "start"
      get "finish"
      get "quiz"
    end
    resources :bookmarks, only:[:create, :destroy]
    resources :dangers, only:[:create, :destroy]
  end

  resources :users, only:[:index, :edit, :update, :destroy, :show] do
    member do
      get "/bookmarks" => "bookmarks#index"
      get "/dangers" => "dangers#index"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
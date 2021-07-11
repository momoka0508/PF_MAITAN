Rails.application.routes.draw do
  get '/search' => "search#search"
  root to: "homes#top"
  get "homes/choice"
  devise_for :users

  scope module: :public do
    get "it_words/index"
  end

  namespace :admin do
    get "it_words/index"
  end

  # collection以降、学習機能実装時、URL要確認
  resources :it_words, except:[:index] do
    member do
      get "quiz"
    end
    collection do
      get "start"
      get "finish"
    end
    resources :bookmarks, only:[:create, :destroy, :index]
    resources :dangers, only:[:create, :destroy, :index]
  end

  resources :users, only:[:edit, :update, :destroy, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
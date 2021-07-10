Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  scope module: :public do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

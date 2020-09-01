Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :tasks # tasks の RESTFull なURL よく使う routing をまとめて用意してくれる設定
  root 'tasks#index' # root URL でアクセス → tasks_controller の index method を実行
end

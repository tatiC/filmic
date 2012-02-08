Filmic::Application.routes.draw do
  resources :quizzes

  resources :helps

  resources :films

  root :to => 'quizzes#index'

end

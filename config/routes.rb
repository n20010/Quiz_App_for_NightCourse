Rails.application.routes.draw do
  get 'gits/done', to: "gits#done"
  get 'gits/:id/lose', to: "gits#lose"
  get 'gits/:id/question', to: "gits#question"
  get 'gits/:id/win', to: "gits#win"
  get 'gits/:id/answer', to: "gits#answer"
  post "gits/:id/judge", to: "gits#judge"
  root "quizzes#home"
  
  get "/quizzes/index", to: "quizzes#index"
  get "/quizzes/linux", to: "quizzes#linux"
  get "/quizzes/github", to: "quizzes#github"
  get "/quizzes/linuxquiz", to: "quizzes#linuxquiz"
  get "/quizzes/checkAdmin", to: "quizzes#checkAdmin"
  post "/quizzes/conform", to: "quizzes#conform"
  get "/quizzes/new", to: "quizzes#new"
  post "quizzes/create", to: "quizzes#create"
  
  get "linux/:id/question", to: "linux#question"
  get "linux/:id/win", to: "linux#win"
  get "linux/:id/lose", to: "linux#lose"
  get "linux/:id/answer", to: "linux#answer"
  post "linux/:id/judge", to: "linux#judge"
  get "linux/done", to: "linux#done"
  
  get "contact", to: "quizzes#contact"
end

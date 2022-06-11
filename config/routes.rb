Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top" # root to: サイトのルートページを決める記述
  # getの場合はパスを受け取れる。例) get "index" "home#top"
  get "homes/about", as: "about"
end
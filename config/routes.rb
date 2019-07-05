Rails.application.routes.draw do
  get 'posts/index', to: 'posts#index'
  post "posts" => "posts#create"
end

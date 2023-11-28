Rails.application.routes.draw do
  root to: "blog#index"
  get '/blogs' => 'blog#index', as:'blogs'
  get '/blogs/:id' => 'blog#show', as:'blog'
end

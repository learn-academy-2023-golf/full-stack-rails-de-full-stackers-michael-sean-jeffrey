Rails.application.routes.draw do
  get '/blogs' => 'blog#index', as:'blogs'
end

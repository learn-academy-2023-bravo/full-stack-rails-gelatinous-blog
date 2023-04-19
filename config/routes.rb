Rails.application.routes.draw do
  root 'blog#index'
  get 'blogs' => 'blogs#index', as: 'blogs'
  get 'blogs/:id' => 'blog#show', as: 'blog'
  # get 'blogs/new' => 'blogs#new'
end

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :comments

  root 'front_end#index'

  get '/category/:slug', to: 'category#show', as: 'category'

=begin
  resources :websites do
    collection { post :search, to: 'front_end#index' }
  end
=end

end

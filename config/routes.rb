Rails.application.routes.draw do
  root 'medicine#index'
  devise_for :users
  get 'medicine/list'
end

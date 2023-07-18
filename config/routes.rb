Rails.application.routes.draw do
  devise_for :employees
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'tasks#index'

  resources :tasks

  # resources 'tasks' do
  #   collection do
  #     get :edit
  #     # post :new
  #     # get :show 
  #   end
  # end

  # get 'tasks/index'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/delete'
  # get 'tasks/show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

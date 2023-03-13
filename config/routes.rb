# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'
  get 'welcome/index'

  get 'info', controller: "info", action: "index"

  resources :devices do
    resources :comments
  end
end

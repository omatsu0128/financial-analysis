Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'companies#index'
  resources :analyses, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :companies, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :balance_sheets, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :profit_and_loss_statements, only: [:new, :create, :show, :edit, :update, :destroy]
end

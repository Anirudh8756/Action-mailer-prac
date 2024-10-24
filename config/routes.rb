Rails.application.routes.draw do
  root "pages#home"
  devise_for :users,  controllers: {
    sessions: 'users/sessions'
  }
  resources :users do
    post 'send_welcome_email', to: 'users#send_welcome_email'
  end


end

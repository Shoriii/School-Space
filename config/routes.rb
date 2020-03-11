Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 ##管理者側
  namespace :admins do
    resources :customers, only: [:index,:show,:edit,:update]
    resources :facilities, except: [:destroy]
    resources :categories, only: [:index,:create,:edit,:update]
    resources :events, only: [:index]
  end

  ##会員側
  root to: 'homes#top'
  resources :customers, only: [:show, :edit, :update, :destroy] do
    member do
      get 'withdraw'
    end
  end
  resources :events do
    collection do
        get 'thanks'
        post 'confirm'
    end
  end
  resources :facilities, only: [:index,:show]

  get 'homes/about' => 'homes#about'

end

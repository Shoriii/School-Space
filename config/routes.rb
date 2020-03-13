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
    resources :events, only: [:index, :show]
  end

  ##会員側
  root to: 'homes#top'
  resource :customer, only: [:show, :edit, :update, :destroy] do
    member do
      get 'withdraw'
    end
  end
  get 'events/:facility_id/new' ,to: 'events#new', as: 'new_event'
  resources :events do
    collection do
        get 'thanks'
        get  'confirm'
        post 'confirm'
    end
  end
  resources :facilities, only: [:index,:show]

  get 'homes/about' => 'homes#about'

end

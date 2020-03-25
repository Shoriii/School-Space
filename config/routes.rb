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
    get 'facilities/:facility_id/calendar' ,to: 'facilities#calendar', as: 'facilities_calendar'
    resources :facilities, except: [:destroy] do
      resource :facility_comments, only: [:create, :destroy]
      collection do
        get 'top'
      end
    end
    resources :categories, only: [:index,:create,:edit,:update]
    resources :events, only: [:index, :show, :edit, :update, :destroy]
    get 'facilities/:facility_id/sub_facilities' ,to: 'sub_facilities#index', as: 'sub_facility_facilities'
    resources :sub_facilities, except: [:destroy]
  end

  ##会員側
  root to: 'homes#top'
  resource :customer, only: [:show, :edit, :update, :destroy] do
    resources :favorites, only: [:index]
    member do
      get 'withdraw'
    end
  end
  get 'events/:facility_id/new' ,to: 'events#new', as: 'new_event'
  resources :events do
    collection do
        get 'thanks'
        get 'cancel'
        get  'confirm'
        post 'confirm'
    end
  end
  get 'facilities/:facility_id/calendar' ,to: 'facilities#calendar', as: 'facilities_calendar'
  resources :facilities, only: [:index,:show] do
    get 'search', on: :collection
    resource :favorites, only: [:create, :destroy]
    resource :facility_comments, only: [:create, :destroy]
  end
  get 'facilities/:facility_id/sub_facilities' ,to: 'sub_facilities#index', as: 'sub_facility_facilities'
  resources :sub_facilities, only: [:index,:show]

  get 'homes/about' => 'homes#about'

end

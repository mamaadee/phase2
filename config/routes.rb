Rails.application.routes.draw do
  resources :camp_instructors
  resources :camps
  resources :instructors
  resources :locations
  resources :curriculums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

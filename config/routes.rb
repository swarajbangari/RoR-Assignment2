Rails.application.routes.draw do
  resources :team_leads
  resources :employees do
  	resources :skills
  end
  get 'employees/:id/subordinates', to: 'employees#subordinates', as: 'subordinates'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

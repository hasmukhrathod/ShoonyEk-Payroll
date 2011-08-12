Surveyor::Application.routes.draw do

  resources :departments
  resources :events
  resources :roles
  resources :employee_masters
  resources :designations

  devise_for :users

  resources :leave_managements do
    get :autocomplete_employee_master_emp_first_name, :on => :collection
  end

  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  get 'employee_masters/payslip'
  get "calendar/index"
  root :to => 'designations#index'

end

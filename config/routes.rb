Mars::Application.routes.draw do
  
  # Admin Login/Logout Paths
  match "admin-login" => "admin_sessions#check_session", :as => :admin_login
  match "admin-logout" => "admin_sessions#destroy", :as => :admin_logout
  # match "admin-dashboard" => "admins#admin_dashboard", :as => :admin_dashboard

  # User Login/Logout Paths
  match "login" => "user_sessions#check_session", :as => :login
  match "logout" => "user_sessions#destroy", :as => :logout
  # match "user-dashboard" => "users#show", :as => :dashboard
  
  match "print-collateral" => "pages#print", :as => :print
  match "landing-pages" => "pages#landing_pages", :as => :landing_pages
  match "email-campaigns" => "pages#emails", :as => :emails
  match "website-collateral" => "pages#website", :as  => :website
  match "signs-and-displays" => "pages#signs", :as => :signs
  match "miscellaneous-marketing-collateral" => "pages#misc", :as => :misc


  resources :users
  resources :admins
  resources :user_sessions
  resources :admin_sessions

  root :to => "pages#index"
end

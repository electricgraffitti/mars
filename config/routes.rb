Mars::Application.routes.draw do
  
  # Admin Login/Logout Paths
  match "admin-login" => "admin_sessions#check_session", :as => :admin_login
  match "admin-logout" => "admin_sessions#destroy", :as => :admin_logout
  match "admin-dashboard" => "admins#admin_dashboard", :as => :admin_dashboard

  # User Login/Logout Paths
  match "login" => "user_sessions#check_session", :as => :login
  match "logout" => "user_sessions#destroy", :as => :logout
  
  #Main Pages Paths
  match "asset-request-home" => "pages#index", :as => :home
  match "print-collateral" => "pages#print", :as => :print
  match "landing-pages" => "pages#landing_pages", :as => :landing_pages
  match "email-campaigns" => "pages#emails", :as => :emails
  match "website-collateral" => "pages#website", :as  => :website
  match "signs-and-displays" => "pages#signs", :as => :signs
  match "events-collateral" => "pages#events", :as => :events
  
  #Print Collateral Paths
  match "magazine-full-page-ad" => "pages#magazine_full", :as => :magazine_full
  match "magazine-half-page-ad" => "pages#magazine_half", :as => :magazine_half
  match "magazine-quarter-page-ad" => "pages#magazine_quarter", :as => :magazine_quarter
  match "magazine-eighth-page-ad" => "pages#magazine_eighth", :as => :magazine_eight
  


  resources :users
  resources :admins
  resources :user_sessions
  resources :admin_sessions
  resources :categories
  resources :print_collaterals

  root :to => "user_sessions#check_session"
  
end

class PagesController < ApplicationController
  
  before_filter :require_auth
  
  def index
    @users = User.all
  end
  
  def print
    
  end
  
  def landing_pages
    
  end
  
  def emails
    
  end
  
  def website
    
  end
  
  def signs
    
  end
  
  def misc
    
  end
  
end

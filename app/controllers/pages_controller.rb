class PagesController < ApplicationController
  
  before_filter :require_auth
  
  def index
    @categories = Category.all(:order => 'list_order')
  end
  
  def print
    @magazines = PrintCollateral.magazine(:order => 'list_order')
    @postcards = PrintCollateral.postcard(:order => 'list_order')
    @advertisements = PrintCollateral.advertisement(:order => 'list_order')
    @others = PrintCollateral.other(:order => 'list_order')

  end
  
  def landing_pages
    
  end
  
  def emails
    
  end
  
  def website
    
  end
  
  def signs
    
  end
  
  def events
    
  end
  
end

class PagesController < ApplicationController
  
  before_filter :require_auth
  
  def index
    @categories = Category.order('id DESC')
  end
  
  def print
    @magazines = PrintCollateral.magazine.order('id ASC')
    @postcards = PrintCollateral.postcard.order('id DESC')
    @advertisements = PrintCollateral.advertisement.order('id DESC')
    @others = PrintCollateral.other.order('id DESC')

    
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

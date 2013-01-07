# == Schema Information
#
# Table name: print_collaterals
#
#  id             :integer          not null, primary key
#  print_category :string(255)
#  title          :string(255)
#  description    :text
#  url            :string(255)
#  image          :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class PrintCollateral < ActiveRecord::Base
  attr_accessible :description, :image, :print_category, :title, :url
  
  scope :magazine, where(:print_category => 'magazine')
  scope :postcard, where(:print_category => 'postcard')
  scope :advertisement, where(:print_category => 'advertisement')
  scope :other, where(:print_category => 'other')
  
  
  #Associations
  # 
  # scope :magazine, :conditions => {:print_category => "magazine"}
  # scope :postcard, :conditions => {:print_category => "postcard"}
  # scope :advertisement, :conditions => {:print_category => "advertisement"}
  # scope :other, :conditions => {:print_category => "other"}

  
end

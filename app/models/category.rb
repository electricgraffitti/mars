# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  url_path    :string(255)
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ActiveRecord::Base
  attr_accessible :description, :image, :url_path, :title
  
  #Carrierwave
  mount_uploader :image, ImageUploader
end

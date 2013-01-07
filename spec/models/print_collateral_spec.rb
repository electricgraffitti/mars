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

require 'spec_helper'

describe PrintCollateral do
  pending "add some examples to (or delete) #{__FILE__}"
end

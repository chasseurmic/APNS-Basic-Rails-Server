# == Schema Information
#
# Table name: devices
#
#  id         :integer          not null, primary key
#  token      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Device < ActiveRecord::Base
  validates_uniqueness_of :token
end

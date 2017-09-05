# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :cities
  has_many :user_forecasts

  before_create do
    self.name = 'Noname'
  end
end

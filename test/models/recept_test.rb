# == Schema Information
#
# Table name: recepts
#
#  id               :integer          not null, primary key
#  link             :string
#  form_param       :string
#  current          :string
#  max              :string
#  min              :string
#  probability      :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  id_or_name       :string
#  name_input_field :string
#

require 'test_helper'

class ReceptTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  address    :string(255)
#  email      :string(255)
#  name       :string(255)
#  phone      :string(255)
#  zip_code   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

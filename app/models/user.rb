# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  address    :string
#  email      :string
#  name       :string
#  phone      :string
#  zip_code   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
end

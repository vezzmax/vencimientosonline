# == Schema Information
#
# Table name: presentations
#
#  id            :integer          not null, primary key
#  date          :date
#  detail        :string(255)
#  expiration_id :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Presentation < ActiveRecord::Base
  attr_accessible :date, :detail, :expiration_id, :user_id
end

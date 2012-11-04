# == Schema Information
#
# Table name: supervisions
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  associated_tax_id :integer
#  level             :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Supervision < ActiveRecord::Base
  attr_accessible :associated_tax_id, :level, :user_id
  belongs_to :user
  belongs_to :associated_tax

end

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

require 'spec_helper'

describe Supervision do
  pending "add some examples to (or delete) #{__FILE__}"
end

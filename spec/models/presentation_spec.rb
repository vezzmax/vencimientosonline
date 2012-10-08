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

require 'spec_helper'

describe Presentation do
  pending "add some examples to (or delete) #{__FILE__}"
end

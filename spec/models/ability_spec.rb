# == Schema Information
#
# Table name: abilities
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  power_mod   :float
#  context     :text
#  functions   :text
#  sprite      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Ability, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

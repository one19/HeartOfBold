# == Schema Information
#
# Table name: biomes
#
#  id          :integer          not null, primary key
#  map_mat     :text
#  description :text
#  name        :string
#  functions   :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Biome, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

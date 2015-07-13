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
  describe "A Biome" do
    before do
      @biome = Biome.create FactoryGirl.build(:biome).attributes
    end

    it "should be a valid biome" do
      biome = Biome.find(@biome.id)
      expect(biome.name).to_not eq nil
      expect(biome.map_mat).to_not eq nil
      expect(biome.functions).to_not eq nil
    end
  end
end

# == Schema Information
#
# Table name: abilities
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  power_mod   :float
#  functions   :text
#  sprite      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Ability, type: :model do
  describe "A Character" do
    before do
      @ability = Ability.create FactoryGirl.build(:ability).attributes
    end

    it "should be a valid ability" do
      ability = Ability.find(@ability.id)
      expect(ability.power_mod).to be > 0
      expect(ability.name).to_not eq nil
      expect(ability.sprite).to_not eq nil
      expect(ability.functions).to_not eq nil
    end

  end
end

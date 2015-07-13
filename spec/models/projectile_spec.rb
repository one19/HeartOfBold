# == Schema Information
#
# Table name: projectiles
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  element       :string
#  functions     :text
#  sprite        :text
#  sprite_start  :text
#  sprite_finish :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Projectile, type: :model do
  describe "A projectile" do
    before do
      @projectile = Projectile.create FactoryGirl.build(:projectile).attributes
    end

    it "should be a valid projectile" do
      projectile = Projectile.find(@projectile.id)
      expect(projectile.name).to_not eq nil
      expect(projectile.sprite).to_not eq nil
      expect(projectile.functions).to_not eq nil
    end

  end
end

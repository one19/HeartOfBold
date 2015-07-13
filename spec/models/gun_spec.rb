# == Schema Information
#
# Table name: guns
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  size          :integer
#  damage        :float
#  fire_rate     :float
#  clip_size     :integer
#  reload_time   :float
#  proj_size     :float
#  proj_speed    :float
#  proj_distance :integer
#  proj_number   :integer
#  proj_spread   :integer
#  functions     :text
#  sprite        :text
#  sprite_firing :text
#  sprite_reload :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Gun, type: :model do

  describe "A Gun" do
    before do
      @bullet1 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet2 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet3 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet4 = Projectile.create FactoryGirl.build(:projectile).attributes
      @gun = Gun.create FactoryGirl.build(:gun).attributes
    end

    it "should be a valid character" do
      gun = Gun.find(@gun.id)
      expect(gun.name).to_not eq nil
      expect(gun.sprite).to_not eq nil
      expect(gun.clip_size).to_not eq 0
    end

    it "should have 1 to 3 projectiles" do
      expect(@gun.projectiles).to_not eq nil
      expect(@gun.projectiles.length).to be > 0
      expect(@gun.projectiles.length).to be < 4
    end

  end
end
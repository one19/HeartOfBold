# == Schema Information
#
# Table name: characters
#
#  id                   :integer          not null, primary key
#  name                 :string
#  exp                  :float
#  hp                   :float
#  hp_regen             :float
#  power                :float
#  power_regen          :float
#  speed                :float
#  size                 :integer
#  move_type            :string
#  element              :string
#  color_schema         :text
#  emblem               :text
#  functions            :text
#  sprite               :text
#  sprite_idle          :text
#  sprite_death         :text
#  sprite_hat           :text
#  sprite_jacket        :text
#  sprite_shoes         :text
#  sprite_scarf         :text
#  user_id              :integer
#  prime_gun_id         :integer
#  secondary_gun_id     :integer
#  prime_ability_id     :integer
#  secondary_ability_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'rails_helper'

RSpec.describe Character, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe "A Character" do
    before do
      @bullet1 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet2 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet3 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet4 = Projectile.create FactoryGirl.build(:projectile).attributes
      @gun1 = Gun.create FactoryGirl.build(:gun).attributes
      @gun2 = Gun.create FactoryGirl.build(:gun).attributes
      @gun3 = Gun.create FactoryGirl.build(:gun).attributes
      @ability1 = Ability.create FactoryGirl.build(:ability).attributes
      @ability2 = Ability.create FactoryGirl.build(:ability).attributes
      @ability3 = Ability.create FactoryGirl.build(:ability).attributes
      @title1 = Title.create FactoryGirl.build(:title).attributes
      @title2 = Title.create FactoryGirl.build(:title).attributes
      @character = Character.create FactoryGirl.build(:character).attributes
    end

    it "should be a valid character" do
      character = Character.find(@character.id)
      expect(character.hp).to be > 0
      expect(character.name).to_not eq nil
      expect(character.sprite).to_not eq nil
    end

    it "should have 1 or 2 guns" do
      expect(@character.prime_gun_id).to_not eq nil
      expect(@character.guns.length).to be > 0
      expect(@character.guns.length).to be < 3
    end

    it "should have zero to 2 powers" do
      expect(@character.abilities.length).to be < 3
      expect(@character.abilities.length).to_not eq nil
    end

    it "should have a title" do
      character = Character.find(@character.id)
      expect(character.titles.length).to eq 1
    end

  end

end
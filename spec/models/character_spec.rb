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

  it {should belong_to :user}
  it {should have_many :guns}
  it {should have_many :abilities}

  describe "A Character" do
    before do
      @user = User.create :name => "Butt Hook"
      @gun1 = Gun.create :name => "shotgun"
      @gun2 = Gun.create :name => "pistol"
      @ability1 = Ability.create :name => "jump"
      @ability2 = Ability.create :name => "slice"
      @character = Character.create :name => 'Butters'
    end

    it "should have some stats" do
    end

    it "should have sprites" do
    end

    it "should be assigned at least one gun" do
    end

    it "should have correct ability assignment" do
    end

  end

end


# RSpec.describe Fruit, type: :model do
#   #pending "add some examples to (or delete) #{__FILE__}"
#   it { should belong_to :shelf }

#   describe "An Apple" do
#     before do
#       @apple = Apple.create :name => 'Golden Delicious'
#       # @apple = Fruit.new(:name => 'Apple')
#     end

#     it "Should not be squishy" do
#       expect(@apple.squishy?).to be false
#       expect(@apple.squishy?).to eq false
#     end

#     it "should remember the class via single table inheritance (STI)" do
#       apple = Fruit.find(@apple.id)
#       expect(apple.class).to eq Apple
#       expect(apple).to eq @apple
#       expect(apple.is_a?(Fruit)).to be true
#       expect(apple.class.ancestors).to include Fruit
#     end
#   end

#   describe "A pear" do
#     before do
#       @pear = Pear.create :name => 'Nazi'
#     end

#     it "Should be at least a bit squishy" do
#       expect(@pear.squishy?).to be true
#       expect(@pear.squishy?).to eq true
#     end

#     it "should remember the class via single table inheritance (STI)" do
#       pear = Fruit.find(@pear.id)
#       expect(pear.class).to eq Pear
#       expect(pear).to eq @pear
#       expect(pear.is_a?(Fruit)).to be true
#       expect(pear.class.ancestors).to include Fruit
#     end

#   end

# end


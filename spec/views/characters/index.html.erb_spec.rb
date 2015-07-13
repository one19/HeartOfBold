require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
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
    assign(:characters, [
      Character.create!(
        :name => "Name",
        :exp => 100,
        :hp => 5,
        :hp_regen => 1.55,
        :power => 1.5,
        :power_regen => 1.555,
        :speed => 250,
        :size => 1,
        :move_type => "float",
        :element => "Element",
        :color_schema => "Color",
        :emblem => "emblem",
        :functions => "function",
        :sprite => "sprite",
        :sprite_idle => "idle",
        :sprite_death => "death",
        :sprite_hat => "hat",
        :sprite_jacket => "jacket",
        :sprite_shoes => "shoes",
        :sprite_scarf => "scarf",
        :user_id => nil
      ),
      Character.create!(
        :name => "Name 2",
        :exp => 100,
        :hp => 5,
        :hp_regen => 1.55,
        :power => 1.5,
        :power_regen => 1.555,
        :speed => 250,
        :size => 1,
        :move_type => "float",
        :element => "Element",
        :color_schema => "Color",
        :emblem => "emblem",
        :functions => "function",
        :sprite => "sprite",
        :sprite_idle => "idle",
        :sprite_death => "death",
        :sprite_hat => "hat",
        :sprite_jacket => "jacket",
        :sprite_shoes => "shoes",
        :sprite_scarf => "scarf",
        :user_id => nil
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Name 2".to_s, :count => 1
    assert_select "tr>td", :presence => true
    assert_select "tr>td", :text => 1.55.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "float".to_s, :count => 2
    assert_select "tr>td", :text => "Element".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "emblem".to_s, :count => 2
    assert_select "tr>td", :text => "function".to_s, :count => 2
    assert_select "tr>td", :text => "sprite".to_s, :count => 2
    assert_select "tr>td", :text => "idle".to_s, :count => 2
    assert_select "tr>td", :text => "death".to_s, :count => 2
    assert_select "tr>td", :text => "hat".to_s, :count => 2
    assert_select "tr>td", :text => "jacket".to_s, :count => 2
    assert_select "tr>td", :text => "shoes".to_s, :count => 2
    assert_select "tr>td", :text => "scarf".to_s, :count => 2
  end
end

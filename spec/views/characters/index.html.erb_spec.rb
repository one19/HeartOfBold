require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        :name => "Name",
        :exp => 1.5,
        :hp => 1.5,
        :hp_regen => 1.5,
        :power => 1.5,
        :power_regen => 1.5,
        :speed => 1.5,
        :size => 1,
        :move_type => "Move Type",
        :element => "Element",
        :color_schema => "MyText",
        :emblem => "MyText",
        :functions => "MyText",
        :sprite => "MyText",
        :sprite_idle => "MyText",
        :sprite_death => "MyText",
        :sprite_hat => "MyText",
        :sprite_jacket => "MyText",
        :sprite_shoes => "MyText",
        :sprite_scarf => "MyText",
        :user_id => 2,
        :prime_gun_id => 3,
        :secondary_gun_id => 4,
        :prime_ability_id => 5,
        :secondary_ability_id => 6
      ),
      Character.create!(
        :name => "Name",
        :exp => 1.5,
        :hp => 1.5,
        :hp_regen => 1.5,
        :power => 1.5,
        :power_regen => 1.5,
        :speed => 1.5,
        :size => 1,
        :move_type => "Move Type",
        :element => "Element",
        :color_schema => "MyText",
        :emblem => "MyText",
        :functions => "MyText",
        :sprite => "MyText",
        :sprite_idle => "MyText",
        :sprite_death => "MyText",
        :sprite_hat => "MyText",
        :sprite_jacket => "MyText",
        :sprite_shoes => "MyText",
        :sprite_scarf => "MyText",
        :user_id => 2,
        :prime_gun_id => 3,
        :secondary_gun_id => 4,
        :prime_ability_id => 5,
        :secondary_ability_id => 6
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Move Type".to_s, :count => 2
    assert_select "tr>td", :text => "Element".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end

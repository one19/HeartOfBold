require 'rails_helper'

RSpec.describe "characters/show", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Move Type/)
    expect(rendered).to match(/Element/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end

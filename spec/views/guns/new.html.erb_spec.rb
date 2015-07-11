require 'rails_helper'

RSpec.describe "guns/new", type: :view do
  before(:each) do
    assign(:gun, Gun.new(
      :name => "MyString",
      :description => "MyText",
      :length => 1,
      :damage => 1.5,
      :fire_rate => 1.5,
      :clip_size => 1,
      :reload_time => 1.5,
      :proj_size => 1.5,
      :proj_speed => 1.5,
      :proj_distance => 1,
      :proj_number => 1,
      :proj_spread => 1,
      :functions => "MyText",
      :sprite => "MyText",
      :sprite_firing => "MyText",
      :sprite_reload => "MyText"
    ))
  end

  it "renders new gun form" do
    render

    assert_select "form[action=?][method=?]", guns_path, "post" do

      assert_select "input#gun_name[name=?]", "gun[name]"

      assert_select "textarea#gun_description[name=?]", "gun[description]"

      assert_select "input#gun_length[name=?]", "gun[length]"

      assert_select "input#gun_damage[name=?]", "gun[damage]"

      assert_select "input#gun_fire_rate[name=?]", "gun[fire_rate]"

      assert_select "input#gun_clip_size[name=?]", "gun[clip_size]"

      assert_select "input#gun_reload_time[name=?]", "gun[reload_time]"

      assert_select "input#gun_proj_size[name=?]", "gun[proj_size]"

      assert_select "input#gun_proj_speed[name=?]", "gun[proj_speed]"

      assert_select "input#gun_proj_distance[name=?]", "gun[proj_distance]"

      assert_select "input#gun_proj_number[name=?]", "gun[proj_number]"

      assert_select "input#gun_proj_spread[name=?]", "gun[proj_spread]"

      assert_select "textarea#gun_functions[name=?]", "gun[functions]"

      assert_select "textarea#gun_sprite[name=?]", "gun[sprite]"

      assert_select "textarea#gun_sprite_firing[name=?]", "gun[sprite_firing]"

      assert_select "textarea#gun_sprite_reload[name=?]", "gun[sprite_reload]"
    end
  end
end

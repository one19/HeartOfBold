require 'rails_helper'

RSpec.describe "guns/index", type: :view do
  before(:each) do
    assign(:guns, [
      Gun.create!(
        :name => "Name",
        :description => "MyText",
        :size => 1,
        :damage => 1.5,
        :fire_rate => 1.5,
        :clip_size => 2,
        :reload_time => 1.5,
        :proj_size => 1.5,
        :proj_speed => 1.5,
        :proj_distance => 3,
        :proj_number => 4,
        :proj_spread => 5,
        :functions => "MyText",
        :sprite => "MyText",
        :sprite_firing => "MyText",
        :sprite_reload => "MyText"
      ),
      Gun.create!(
        :name => "Name",
        :description => "MyText",
        :size => 1,
        :damage => 1.5,
        :fire_rate => 1.5,
        :clip_size => 2,
        :reload_time => 1.5,
        :proj_size => 1.5,
        :proj_speed => 1.5,
        :proj_distance => 3,
        :proj_number => 4,
        :proj_spread => 5,
        :functions => "MyText",
        :sprite => "MyText",
        :sprite_firing => "MyText",
        :sprite_reload => "MyText"
      )
    ])
  end

  it "renders a list of guns" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

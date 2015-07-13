require 'rails_helper'

RSpec.describe "guns/index", type: :view do
  before(:each) do
    @bullet1 = Projectile.create FactoryGirl.build(:projectile).attributes
    @bullet2 = Projectile.create FactoryGirl.build(:projectile).attributes
    @bullet3 = Projectile.create FactoryGirl.build(:projectile).attributes
    @bullet4 = Projectile.create FactoryGirl.build(:projectile).attributes
    assign(:guns, [
      Gun.create!(
        :name => "Name",
        :description => "MyText",
        :size => 1,
        :damage => 1.5,
        :fire_rate => 1.55,
        :clip_size => 2,
        :reload_time => 1.555,
        :proj_size => 1.6,
        :proj_speed => 1.7,
        :proj_distance => 3,
        :proj_number => 4,
        :proj_spread => 5,
        :functions => "func",
        :sprite => "sprite",
        :sprite_firing => "fire",
        :sprite_reload => "reload"
      ),
      Gun.create!(
        :name => "Name 2",
        :description => "MyText",
        :size => 1,
        :damage => 1.5,
        :fire_rate => 1.55,
        :clip_size => 2,
        :reload_time => 1.555,
        :proj_size => 1.6,
        :proj_speed => 1.7,
        :proj_distance => 3,
        :proj_number => 4,
        :proj_spread => 5,
        :functions => "func",
        :sprite => "sprite",
        :sprite_firing => "fire",
        :sprite_reload => "reload"
      )
    ])
  end

  it "renders a list of guns" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Name 2".to_s, :count => 1
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :presence => true
    assert_select "tr>td", :text => 1.55.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.555.to_s, :count => 2
    assert_select "tr>td", :text => 1.6.to_s, :count => 2
    assert_select "tr>td", :text => 1.7.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "func".to_s, :count => 2
    assert_select "tr>td", :text => "sprite".to_s, :count => 2
    assert_select "tr>td", :text => "fire".to_s, :count => 2
    assert_select "tr>td", :text => "reload".to_s, :count => 2
  end
end

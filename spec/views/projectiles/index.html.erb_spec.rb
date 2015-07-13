require 'rails_helper'

RSpec.describe "projectiles/index", type: :view do
  before(:each) do
    assign(:projectiles, [
      Projectile.create!(
        :name => "Name",
        :description => "MyText",
        :element => "Element",
        :functions => "func",
        :sprite => "sprite",
        :sprite_start => "star",
        :sprite_finish => "final"
      ),
      Projectile.create!(
        :name => "Name 2",
        :description => "MyText",
        :element => "Element",
        :functions => "func",
        :sprite => "sprite",
        :sprite_start => "star",
        :sprite_finish => "final"
      )
    ])
  end

  it "renders a list of projectiles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Name 2".to_s, :count => 1
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Element".to_s, :count => 2
    assert_select "tr>td", :text => "func".to_s, :count => 2
    assert_select "tr>td", :text => "sprite".to_s, :count => 2
    assert_select "tr>td", :text => "star".to_s, :count => 2
    assert_select "tr>td", :text => "final".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "projectiles/index", type: :view do
  before(:each) do
    assign(:projectiles, [
      Projectile.create!(
        :name => "Name",
        :description => "MyText",
        :element => "Element",
        :functions => "MyText",
        :sprite => "MyText",
        :sprite_start => "MyText",
        :sprite_finish => "MyText"
      ),
      Projectile.create!(
        :name => "Name",
        :description => "MyText",
        :element => "Element",
        :functions => "MyText",
        :sprite => "MyText",
        :sprite_start => "MyText",
        :sprite_finish => "MyText"
      )
    ])
  end

  it "renders a list of projectiles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Element".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

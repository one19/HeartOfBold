require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :orientation => 11,
        :size => 2,
        :functions => "MyText",
        :sprite => "sprite",
        :biome_id => 3
      ),
      Room.create!(
        :orientation => 11,
        :size => 2,
        :functions => "MyText",
        :sprite => "sprite",
        :biome_id => 3
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "sprite".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end

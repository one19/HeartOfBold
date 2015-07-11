require 'rails_helper'

RSpec.describe "biomes/index", type: :view do
  before(:each) do
    assign(:biomes, [
      Biome.create!(
        :map_mat => "MyText",
        :description => "MyText",
        :name => "Name",
        :functions => "MyText"
      ),
      Biome.create!(
        :map_mat => "MyText",
        :description => "MyText",
        :name => "Name",
        :functions => "MyText"
      )
    ])
  end

  it "renders a list of biomes" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

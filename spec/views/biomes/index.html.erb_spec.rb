require 'rails_helper'

RSpec.describe "biomes/index", type: :view do
  before(:each) do
    assign(:biomes, [
      Biome.create!(
        :map_mat => "MyText MAT",
        :description => "MyText",
        :name => "Name",
        :functions => "MyText FUNC"
      ),
      Biome.create!(
        :map_mat => "MyText MAT",
        :description => "MyText",
        :name => "Name 2",
        :functions => "MyText FUNC"
      )
    ])
  end

  it "renders a list of biomes" do
    render
    assert_select "tr>td", :text => "MyText MAT".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Name 2".to_s, :count => 1
    assert_select "tr>td", :text => "MyText FUNC".to_s, :count => 2
  end
end

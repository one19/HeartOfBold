require 'rails_helper'

RSpec.describe "biomes/new", type: :view do
  before(:each) do
    assign(:biome, Biome.new(
      :map_mat => "MyText",
      :description => "MyText",
      :name => "MyString",
      :functions => "MyText"
    ))
  end

  it "renders new biome form" do
    render

    assert_select "form[action=?][method=?]", biomes_path, "post" do

      assert_select "textarea#biome_map_mat[name=?]", "biome[map_mat]"

      assert_select "textarea#biome_description[name=?]", "biome[description]"

      assert_select "input#biome_name[name=?]", "biome[name]"

      assert_select "textarea#biome_functions[name=?]", "biome[functions]"
    end
  end
end

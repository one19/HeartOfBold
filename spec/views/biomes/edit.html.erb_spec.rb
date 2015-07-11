require 'rails_helper'

RSpec.describe "biomes/edit", type: :view do
  before(:each) do
    @biome = assign(:biome, Biome.create!(
      :map_mat => "MyText",
      :description => "MyText",
      :name => "MyString",
      :functions => "MyText"
    ))
  end

  it "renders the edit biome form" do
    render

    assert_select "form[action=?][method=?]", biome_path(@biome), "post" do

      assert_select "textarea#biome_map_mat[name=?]", "biome[map_mat]"

      assert_select "textarea#biome_description[name=?]", "biome[description]"

      assert_select "input#biome_name[name=?]", "biome[name]"

      assert_select "textarea#biome_functions[name=?]", "biome[functions]"
    end
  end
end

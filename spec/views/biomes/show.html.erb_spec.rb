require 'rails_helper'

RSpec.describe "biomes/show", type: :view do
  before(:each) do
    @biome = assign(:biome, Biome.create!(
      :map_mat => "MyText",
      :description => "MyText",
      :name => "Name",
      :functions => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end

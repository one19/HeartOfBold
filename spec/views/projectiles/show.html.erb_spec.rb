require 'rails_helper'

RSpec.describe "projectiles/show", type: :view do
  before(:each) do
    @projectile = assign(:projectile, Projectile.create!(
      :name => "Name",
      :description => "MyText",
      :element => "Element",
      :functions => "MyText",
      :sprite => "MyText",
      :sprite_start => "MyText",
      :sprite_finish => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Element/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

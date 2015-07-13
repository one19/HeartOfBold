require 'rails_helper'

RSpec.describe "abilities/show", type: :view do
  before(:each) do
    @ability = assign(:ability, Ability.create!(
      :name => "Name",
      :description => "MyText",
      :power_mod => 1.5,
      :functions => "MyText",
      :sprite => "Sprite"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Sprite/)
  end
end

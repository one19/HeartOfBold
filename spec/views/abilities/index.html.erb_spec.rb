require 'rails_helper'

RSpec.describe "abilities/index", type: :view do
  before(:each) do
    assign(:abilities, [
      Ability.create!(
        :name => "Name",
        :description => "MyText",
        :power_mod => 1.5,
        :context => "MyText",
        :functions => "MyText",
        :sprite => "Sprite"
      ),
      Ability.create!(
        :name => "Name",
        :description => "MyText",
        :power_mod => 1.5,
        :context => "MyText",
        :functions => "MyText",
        :sprite => "Sprite"
      )
    ])
  end

  it "renders a list of abilities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Sprite".to_s, :count => 2
  end
end

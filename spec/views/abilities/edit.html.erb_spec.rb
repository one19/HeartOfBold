require 'rails_helper'

RSpec.describe "abilities/edit", type: :view do
  before(:each) do
    @ability = assign(:ability, Ability.create!(
      :name => "MyString",
      :description => "MyText",
      :power_mod => 1.5,
      :functions => "MyText",
      :sprite => "MyString"
    ))
  end

  it "renders the edit ability form" do
    render

    assert_select "form[action=?][method=?]", ability_path(@ability), "post" do

      assert_select "input#ability_name[name=?]", "ability[name]"

      assert_select "textarea#ability_description[name=?]", "ability[description]"

      assert_select "input#ability_power_mod[name=?]", "ability[power_mod]"

      assert_select "textarea#ability_functions[name=?]", "ability[functions]"

      assert_select "input#ability_sprite[name=?]", "ability[sprite]"
    end
  end
end

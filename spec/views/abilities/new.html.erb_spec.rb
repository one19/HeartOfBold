require 'rails_helper'

RSpec.describe "abilities/new", type: :view do
  before(:each) do
    assign(:ability, Ability.new(
      :name => "MyString",
      :description => "MyText",
      :power_mod => 1.5,
      :context => "MyText",
      :functions => "MyText",
      :sprite => "MyString"
    ))
  end

  it "renders new ability form" do
    render

    assert_select "form[action=?][method=?]", abilities_path, "post" do

      assert_select "input#ability_name[name=?]", "ability[name]"

      assert_select "textarea#ability_description[name=?]", "ability[description]"

      assert_select "input#ability_power_mod[name=?]", "ability[power_mod]"

      assert_select "textarea#ability_context[name=?]", "ability[context]"

      assert_select "textarea#ability_functions[name=?]", "ability[functions]"

      assert_select "input#ability_sprite[name=?]", "ability[sprite]"
    end
  end
end

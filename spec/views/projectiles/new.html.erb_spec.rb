require 'rails_helper'

RSpec.describe "projectiles/new", type: :view do
  before(:each) do
    assign(:projectile, Projectile.new(
      :name => "MyString",
      :description => "MyText",
      :element => "MyString",
      :functions => "MyText",
      :sprite => "MyText",
      :sprite_start => "MyText",
      :sprite_finish => "MyText"
    ))
  end

  it "renders new projectile form" do
    render

    assert_select "form[action=?][method=?]", projectiles_path, "post" do

      assert_select "input#projectile_name[name=?]", "projectile[name]"

      assert_select "textarea#projectile_description[name=?]", "projectile[description]"

      assert_select "input#projectile_element[name=?]", "projectile[element]"

      assert_select "textarea#projectile_functions[name=?]", "projectile[functions]"

      assert_select "textarea#projectile_sprite[name=?]", "projectile[sprite]"

      assert_select "textarea#projectile_sprite_start[name=?]", "projectile[sprite_start]"

      assert_select "textarea#projectile_sprite_finish[name=?]", "projectile[sprite_finish]"
    end
  end
end

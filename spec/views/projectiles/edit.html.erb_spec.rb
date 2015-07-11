require 'rails_helper'

RSpec.describe "projectiles/edit", type: :view do
  before(:each) do
    @projectile = assign(:projectile, Projectile.create!(
      :name => "MyString",
      :description => "MyText",
      :element => "MyString",
      :functions => "MyText",
      :sprite => "MyText",
      :sprite_start => "MyText",
      :sprite_finish => "MyText"
    ))
  end

  it "renders the edit projectile form" do
    render

    assert_select "form[action=?][method=?]", projectile_path(@projectile), "post" do

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

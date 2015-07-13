require 'rails_helper'

RSpec.describe "characters/new", type: :view do
  before(:each) do
    @bullet1 = Projectile.create FactoryGirl.build(:projectile).attributes
    @bullet2 = Projectile.create FactoryGirl.build(:projectile).attributes
    @bullet3 = Projectile.create FactoryGirl.build(:projectile).attributes
    @bullet4 = Projectile.create FactoryGirl.build(:projectile).attributes
    @gun1 = Gun.create FactoryGirl.build(:gun).attributes
    @gun2 = Gun.create FactoryGirl.build(:gun).attributes
    @gun3 = Gun.create FactoryGirl.build(:gun).attributes
    @ability1 = Ability.create FactoryGirl.build(:ability).attributes
    @ability2 = Ability.create FactoryGirl.build(:ability).attributes
    @ability3 = Ability.create FactoryGirl.build(:ability).attributes
    @title1 = Title.create FactoryGirl.build(:title).attributes
    @title2 = Title.create FactoryGirl.build(:title).attributes
    assign(:character, Character.new(
      :name => "MyString",
      :exp => 1.5,
      :hp => 1.5,
      :hp_regen => 1.5,
      :power => 1.5,
      :power_regen => 1.5,
      :speed => 1.5,
      :size => 1,
      :move_type => "MyString",
      :element => "MyString",
      :color_schema => "MyText",
      :emblem => "MyText",
      :functions => "MyText",
      :sprite => "MyText",
      :sprite_idle => "MyText",
      :sprite_death => "MyText",
      :sprite_hat => "MyText",
      :sprite_jacket => "MyText",
      :sprite_shoes => "MyText",
      :sprite_scarf => "MyText",
      :user_id => 1,
      :prime_gun_id => 1,
      :secondary_gun_id => 1,
      :prime_ability_id => 1,
      :secondary_ability_id => 1
    ))
  end

  it "renders new character form" do
    render

    assert_select "form[action=?][method=?]", characters_path, "post" do

      assert_select "input#character_name[name=?]", "character[name]"

      assert_select "input#character_exp[name=?]", "character[exp]"

      assert_select "input#character_hp[name=?]", "character[hp]"

      assert_select "input#character_hp_regen[name=?]", "character[hp_regen]"

      assert_select "input#character_power[name=?]", "character[power]"

      assert_select "input#character_power_regen[name=?]", "character[power_regen]"

      assert_select "input#character_speed[name=?]", "character[speed]"

      assert_select "input#character_size[name=?]", "character[size]"

      assert_select "input#character_move_type[name=?]", "character[move_type]"

      assert_select "input#character_element[name=?]", "character[element]"

      assert_select "textarea#character_color_schema[name=?]", "character[color_schema]"

      assert_select "textarea#character_emblem[name=?]", "character[emblem]"

      assert_select "textarea#character_functions[name=?]", "character[functions]"

      assert_select "textarea#character_sprite[name=?]", "character[sprite]"

      assert_select "textarea#character_sprite_idle[name=?]", "character[sprite_idle]"

      assert_select "textarea#character_sprite_death[name=?]", "character[sprite_death]"

      assert_select "textarea#character_sprite_hat[name=?]", "character[sprite_hat]"

      assert_select "textarea#character_sprite_jacket[name=?]", "character[sprite_jacket]"

      assert_select "textarea#character_sprite_shoes[name=?]", "character[sprite_shoes]"

      assert_select "textarea#character_sprite_scarf[name=?]", "character[sprite_scarf]"

      assert_select "input#character_user_id[name=?]", "character[user_id]"

      assert_select "input#character_prime_gun_id[name=?]", "character[prime_gun_id]"

      assert_select "input#character_secondary_gun_id[name=?]", "character[secondary_gun_id]"

      assert_select "input#character_prime_ability_id[name=?]", "character[prime_ability_id]"

      assert_select "input#character_secondary_ability_id[name=?]", "character[secondary_ability_id]"
    end
  end
end

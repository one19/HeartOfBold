require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :orientation => 1,
      :size => 1,
      :functions => "MyText",
      :sprite => "MyText",
      :biome_id => 1
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input#room_orientation[name=?]", "room[orientation]"

      assert_select "input#room_size[name=?]", "room[size]"

      assert_select "textarea#room_functions[name=?]", "room[functions]"

      assert_select "textarea#room_sprite[name=?]", "room[sprite]"

      assert_select "input#room_biome_id[name=?]", "room[biome_id]"
    end
  end
end

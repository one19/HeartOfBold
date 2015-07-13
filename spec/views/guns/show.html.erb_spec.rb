require 'rails_helper'

RSpec.describe "guns/show", type: :view do
  before(:each) do
    @gun = assign(:gun, Gun.create!(
      :name => "Name",
      :description => "MyText",
      :size => 1,
      :damage => 1.5,
      :fire_rate => 1.5,
      :clip_size => 2,
      :reload_time => 1.5,
      :proj_size => 1.5,
      :proj_speed => 1.5,
      :proj_distance => 3,
      :proj_number => 4,
      :proj_spread => 5,
      :functions => "MyText",
      :sprite => "MyText",
      :sprite_firing => "MyText",
      :sprite_reload => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

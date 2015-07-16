require 'rails_helper'

RSpec.describe "pages/home.html.erb", type: :view do
  it "renders the game main page" do
    render

    assert_select "h1", :presence => true
    assert_select "h1", :text => "HEART OF BOLD".to_s, :count => 1
    assert_select "#gameContainer", :presence => true
  end
end

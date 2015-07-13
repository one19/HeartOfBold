require 'rails_helper'

RSpec.describe "pages/about.html.erb", type: :view do
  it "renders the about game page" do
    render

    assert_select "h1", :presence => true
    assert_select "h1", :text => "About Heart of Bold:".to_s, :count => 1
  end
end

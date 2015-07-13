require 'rails_helper'

RSpec.describe "titles/index", type: :view do
  before(:each) do
    assign(:titles, [
      Title.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Title.create!(
        :name => "Name 2",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of titles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Name 2".to_s, :count => 1
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

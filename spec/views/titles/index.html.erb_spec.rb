require 'rails_helper'

RSpec.describe "titles/index", type: :view do
  before(:each) do
    assign(:titles, [
      Title.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Title.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of titles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

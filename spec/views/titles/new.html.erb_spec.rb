require 'rails_helper'

RSpec.describe "titles/new", type: :view do
  before(:each) do
    assign(:title, Title.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new title form" do
    render

    assert_select "form[action=?][method=?]", titles_path, "post" do

      assert_select "input#title_name[name=?]", "title[name]"

      assert_select "textarea#title_description[name=?]", "title[description]"
    end
  end
end

require 'rails_helper'

RSpec.describe "titles/edit", type: :view do
  before(:each) do
    @title = assign(:title, Title.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit title form" do
    render

    assert_select "form[action=?][method=?]", title_path(@title), "post" do

      assert_select "input#title_name[name=?]", "title[name]"

      assert_select "textarea#title_description[name=?]", "title[description]"
    end
  end
end

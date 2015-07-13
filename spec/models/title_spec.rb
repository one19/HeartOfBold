# == Schema Information
#
# Table name: titles
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Title, type: :model do
  describe "A title" do
    before do
      @title = Title.create FactoryGirl.build(:title).attributes
    end

    it "should be a valid title" do
      title = Title.find(@title.id)
      expect(title.name).to_not eq nil
    end

  end
end

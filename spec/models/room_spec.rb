# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  orientation :integer
#  size        :integer
#  functions   :text
#  sprite      :text
#  biome_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Room, type: :model do
  describe "A room" do
    before do
      @room = Room.create FactoryGirl.build(:room).attributes
    end

    it "should be a valid room" do
      room = Room.find(@room.id)
      expect(room.sprite).to_not eq nil
      expect(room.functions).to_not eq nil
      expect(room.orientation).to be > -1
      expect(room.size).to be > 0
    end

  end
end

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

FactoryGirl.define do
  factory :room do
    orientation 1
size 1
functions "MyText"
sprite "MyText"
biome_id 1
  end

end

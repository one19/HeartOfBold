# == Schema Information
#
# Table name: biomes
#
#  id          :integer          not null, primary key
#  map_mat     :text
#  description :text
#  name        :string
#  functions   :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :biome do
    map_mat "MyText"
description "MyText"
name "MyString"
functions "MyText"
  end

end

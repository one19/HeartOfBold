# == Schema Information
#
# Table name: projectiles
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  element       :string
#  functions     :text
#  sprite        :text
#  sprite_start  :text
#  sprite_finish :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :projectile do
    name "MyString"
description "MyText"
element "MyString"
functions "MyText"
sprite "MyText"
sprite_start "MyText"
sprite_finish "MyText"
  end

end

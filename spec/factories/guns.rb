# == Schema Information
#
# Table name: guns
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  length        :integer
#  damage        :float
#  fire_rate     :float
#  clip_size     :integer
#  reload_time   :float
#  proj_size     :float
#  proj_speed    :float
#  proj_distance :integer
#  proj_number   :integer
#  proj_spread   :integer
#  functions     :text
#  sprite        :text
#  sprite_firing :text
#  sprite_reload :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :gun do
    name "MyString"
description "MyText"
length 1
damage 1.5
fire_rate 1.5
clip_size 1
reload_time 1.5
proj_size 1.5
proj_speed 1.5
proj_distance 1
proj_number 1
proj_spread 1
functions "MyText"
sprite "MyText"
sprite_firing "MyText"
sprite_reload "MyText"
  end

end

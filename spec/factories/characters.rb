# == Schema Information
#
# Table name: characters
#
#  id                   :integer          not null, primary key
#  name                 :string
#  exp                  :float
#  hp                   :float
#  hp_regen             :float
#  power                :float
#  power_regen          :float
#  speed                :float
#  size                 :integer
#  move_type            :string
#  element              :string
#  color_schema         :text
#  emblem               :text
#  functions            :text
#  sprite               :text
#  sprite_idle          :text
#  sprite_death         :text
#  sprite_hat           :text
#  sprite_jacket        :text
#  sprite_shoes         :text
#  sprite_scarf         :text
#  user_id              :integer
#  prime_gun_id         :integer
#  secondary_gun_id     :integer
#  prime_ability_id     :integer
#  secondary_ability_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

FactoryGirl.define do
  factory :character do
    name "MyString"
exp 1.5
hp 1.5
hp_regen 1.5
power 1.5
power_regen 1.5
speed 1.5
size 1
move_type "MyString"
element "MyString"
color_schema "MyText"
emblem "MyText"
functions "MyText"
sprite "MyText"
sprite_idle "MyText"
sprite_death "MyText"
sprite_hat "MyText"
sprite_jacket "MyText"
sprite_shoes "MyText"
sprite_scarf "MyText"
user_id 1
prime_gun_id 1
secondary_gun_id 1
prime_ability_id 1
secondary_ability_id 1
  end

end

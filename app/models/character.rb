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

class Character < ActiveRecord::Base
  belongs_to :user
  
  has_many :ability_characters
  has_many :abilities, :through => :ability_characters

  has_many :character_guns
  has_many :guns, :through => :character_guns

  has_many :character_titles
  has_many :titles, :through => :character_titles
end

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

class Projectile < ActiveRecord::Base
  has_and_belongs_to_many :guns
  # has_many :gun_projectiles
  # has_many :gun_projectiles, :through => :gun_projectiles
end

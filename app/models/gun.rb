# == Schema Information
#
# Table name: guns
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  size          :integer
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

class Gun < ActiveRecord::Base
  before_save :add_projectile

  has_and_belongs_to_many :characters
  # has_many :character_guns
  # has_many :characters, :through => :character_guns

  has_and_belongs_to_many :projectiles
  # has_many :gun_projectiles
  # has_many :projectiles, :through => :gun_projectiles

  #code for adding projectiles to our new gun
  def add_projectile
    @projectiles = Projectile.all
    a = [1, 1, 1, 1, 1, 1, 1, 2, 2, 3].sample #generates a weighted selection for the number of projectile types the weapon can have bound to it
    if a == 1
      self.damage +=1
      self.clip_size = ( self.clip_size * 1.25 ).floor
    elsif a == 3
      self.clip_size = ( self.clip_size * 0.8 ).floor
    end
    projects = @projectiles.sample(a)
    projects.uniq.each { |el| self.projectiles << el }
  end

end

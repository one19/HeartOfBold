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
  before_save :add_abilities, :add_guns, :add_titles

  belongs_to :user

  has_and_belongs_to_many :titles  
  has_and_belongs_to_many :abilities
  has_and_belongs_to_many :guns

  validates :name, :presence => true
  validates :name, :uniqueness => true

  def add_abilities
    #selects the abilities our character will have
    @abilities = Ability.all
    b = [2, 2, 2, 2, 2, 2, 2, 1, 1, 0].sample #generates a weighted selection for the number of powers the character will have
    if b == 0
      self.hp += 3
      self.power = 0
    elsif b == 1
      self.hp += 1
      self.power += 1
      self.power_regen += 1
    end
    powers = @abilities.sample(b)
    powers.uniq.each { |el| self.abilities << el }
    # binding.pry
    if powers.count == 1
      self.prime_ability_id = self.abilities.first['id']
    elsif powers.count == 2
      self.prime_ability_id = self.abilities.first['id']
      self.secondary_ability_id = self.abilities.last['id']
    end
  end

  def add_guns
    #selects the guns our character will have
    @guns = Gun.all
    a = [1, 2, 2, 2].sample #generates a weighted selection for the number of guns the character will have
    if a == 1
      self.hp += 2
      self.speed += 50
    end
    gunnage = @guns.sample(a)
    gunnage.uniq.each { |el| self.guns << el }

    self.prime_gun_id = self.guns.first['id'] if self.guns.first
    if gunnage.count == 2
      self.secondary_gun_id = self.guns.last['id']
    end
  end

  def add_titles
    #selects the title the character will have
    @titles = Title.all
    self.titles << @titles.sample
  end
end

# == Schema Information
#
# Table name: abilities
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  power_mod   :float
#  functions   :text
#  sprite      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ability < ActiveRecord::Base
  has_and_belongs_to_many :characters
  # has_many :ability_characters
  # has_many :characters, :through => :ability_characters
  validates :name, :functions, :presence => true
  validates :name, :uniqueness => true
end

# == Schema Information
#
# Table name: abilities
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  power_mod   :float
#  context     :text
#  functions   :text
#  sprite      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ability < ActiveRecord::Base
  has_many :ability_characters
  has_many :characters, :through => :ability_characters
end

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

class Biome < ActiveRecord::Base
  has_many :rooms

  validates :name, :presence => true
  validates :name, :uniqueness => true
end

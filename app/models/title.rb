# == Schema Information
#
# Table name: titles
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Title < ActiveRecord::Base
  has_and_belongs_to_many :characters
  # has_many :character_titles
  # has_many :characters, :through => :character_titles

  validates :name, :presence => true
  validates :name, :uniqueness => true
end

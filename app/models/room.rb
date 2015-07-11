# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  orientation :integer
#  size        :integer
#  functions   :text
#  sprite      :text
#  biome_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Room < ActiveRecord::Base
end

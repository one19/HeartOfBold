# == Schema Information
#
# Table name: guns
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  length        :integer
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

require 'rails_helper'

RSpec.describe Gun, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

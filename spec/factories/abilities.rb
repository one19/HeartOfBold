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

FactoryGirl.define do
  factory :ability do
    name "MyString"
description "MyText"
power_mod 1.5
context "MyText"
functions "MyText"
sprite "MyString"
  end

end

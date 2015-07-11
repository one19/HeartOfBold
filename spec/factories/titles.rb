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

FactoryGirl.define do
  factory :title do
    name "MyString"
description "MyText"
  end

end

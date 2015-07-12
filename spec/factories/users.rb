# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#  admin                  :boolean
#  highest_level          :integer
#  rooms_explored         :float
#  enemies_killed         :float
#  emblem                 :text
#  title                  :string
#

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
    last_sign_in_ip { Faker::Internet.ip_v4_address }
    current_sign_in_ip { Faker::Internet.ip_v4_address }
    name { Faker::Name.name }
    admin false
    highest_level { Faker::Number.between(1, 100) }
    rooms_explored { Faker::Number.between(1, 1000) }
    enemies_killed { Faker::Number.between(1, 100000) }
    emblem { Faker::Avatar.image(nil, "100x100") }
    title { Faker::Lorem.word }
  end

end

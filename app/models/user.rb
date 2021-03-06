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

class User < ActiveRecord::Base
  before_create :add_character
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :characters
  has_many :abilities, :through => :characters
  has_many :guns, :through => :characters
  has_many :titles, :through => :characters

  validates :email, :presence => true
  validates :email, :uniqueness => true

  def add_character
    @character = Character.create FactoryGirl.build(:character).attributes
    self.characters << @character
  end
end

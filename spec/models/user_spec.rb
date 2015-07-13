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

require 'rails_helper'

RSpec.describe User, type: :model do
  describe "A User" do
    before do
      @bullet1 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet2 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet3 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet4 = Projectile.create FactoryGirl.build(:projectile).attributes
      @gun1 = Gun.create FactoryGirl.build(:gun).attributes
      @gun2 = Gun.create FactoryGirl.build(:gun).attributes
      @gun3 = Gun.create FactoryGirl.build(:gun).attributes
      @ability1 = Ability.create FactoryGirl.build(:ability).attributes
      @ability2 = Ability.create FactoryGirl.build(:ability).attributes
      @ability3 = Ability.create FactoryGirl.build(:ability).attributes
      @title1 = Title.create FactoryGirl.build(:title).attributes
      @title2 = Title.create FactoryGirl.build(:title).attributes
      @user = User.create FactoryGirl.build(:user).attributes
    end

    it "should be a valid user" do
      user = User.find(@user.id)
      expect(user.admin).to eq false
      expect(user.name).to_not eq nil
      expect(user.email).to_not eq nil
    end

    it "should have 1 character" do
      expect(@user.characters.length).to_not eq nil
      expect(@user.characters.length).to eq 1
    end

    it "should have 1 title" do
      expect(@user.titles.length).to_not eq nil
      expect(@user.titles.length).to eq 1
    end

    it "should have 1 to 2 guns" do
      expect(@user.guns.length).to_not eq nil
      expect(@user.guns.length).to be < 3
      expect(@user.guns.length).to be > 0
    end

    it "should have 0 to 2 abilities" do
      expect(@user.abilities.length).to be < 3
    end

  end
end

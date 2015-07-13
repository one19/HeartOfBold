# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
      @bullet1 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet2 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet3 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet4 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet5 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet6 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet7 = Projectile.create FactoryGirl.build(:projectile).attributes
      @bullet8 = Projectile.create FactoryGirl.build(:projectile).attributes
      @gun1 = Gun.create FactoryGirl.build(:gun).attributes
      @gun2 = Gun.create FactoryGirl.build(:gun).attributes
      @gun3 = Gun.create FactoryGirl.build(:gun).attributes
      @gun4 = Gun.create FactoryGirl.build(:gun).attributes
      @gun5 = Gun.create FactoryGirl.build(:gun).attributes
      @gun6 = Gun.create FactoryGirl.build(:gun).attributes
      @ability1 = Ability.create FactoryGirl.build(:ability).attributes
      @ability2 = Ability.create FactoryGirl.build(:ability).attributes
      @ability3 = Ability.create FactoryGirl.build(:ability).attributes
      @ability4 = Ability.create FactoryGirl.build(:ability).attributes
      @ability5 = Ability.create FactoryGirl.build(:ability).attributes
      @title1 = Title.create FactoryGirl.build(:title).attributes
      @title2 = Title.create FactoryGirl.build(:title).attributes
      @title3 = Title.create FactoryGirl.build(:title).attributes
      @title4 = Title.create FactoryGirl.build(:title).attributes
      @title5 = Title.create FactoryGirl.build(:title).attributes
      @title6 = Title.create FactoryGirl.build(:title).attributes
      @title7 = Title.create FactoryGirl.build(:title).attributes
      @title8 = Title.create FactoryGirl.build(:title).attributes
      @title9 = Title.create FactoryGirl.build(:title).attributes
      @title10 = Title.create FactoryGirl.build(:title).attributes
      @title11 = Title.create FactoryGirl.build(:title).attributes
      @title12 = Title.create FactoryGirl.build(:title).attributes

      @character = Character.create FactoryGirl.build(:character).attributes
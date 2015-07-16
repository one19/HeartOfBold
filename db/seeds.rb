# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Room.destroy_all
Biome.destroy_all
Projectile.destroy_all
Gun.destroy_all
Ability.destroy_all
Title.destroy_all
Character.destroy_all
User.destroy_all


room1 = Room.create :orientation => 0, :size => 1, :functions => '', :sprite => 'a'
room2 = Room.create :orientation => 0, :size => 1, :functions => '', :sprite => 'a'
room3 = Room.create :orientation => 1, :size => 1, :functions => '', :sprite => 'a'
room4 = Room.create :orientation => 1, :size => 1, :functions => '', :sprite => 'a'
room5 = Room.create :orientation => 2, :size => 1, :functions => '', :sprite => 'a'
room6 = Room.create :orientation => 3, :size => 1, :functions => '', :sprite => 'a'
room7 = Room.create :orientation => 3, :size => 1, :functions => '', :sprite => 'a'
room8 = Room.create :orientation => 4, :size => 1, :functions => '', :sprite => 'a'
room9 = Room.create :orientation => 5, :size => 1, :functions => '', :sprite => 'a'
room10 = Room.create :orientation => 5, :size => 1, :functions => '', :sprite => 'a'
room11 = Room.create :orientation => 6, :size => 1, :functions => '', :sprite => 'a'
room12 = Room.create :orientation => 7, :size => 1, :functions => '', :sprite => 'a'
room13 = Room.create :orientation => 7, :size => 1, :functions => '', :sprite => 'a'
room14 = Room.create :orientation => 8, :size => 1, :functions => '', :sprite => 'a'

#biome1 = Biome.create :map_mat => '[[8,1,1,2],[7,0,0,3],[7,0,0,3],[6,5,5,4]]', :description => 'This is a standard 4x4 map.', :name => 'Ice World', :functions => ''
#biome2 = Biome.create :map_mat => '[[8,1,2],[7,0,3],[7,0,3],[7,0,3],[6,5,4]]', :description => 'This is a smaller 3x5 corridor map.', :name => 'Ice Pick', :functions => ''
biome3 = Biome.create :map_mat => '[[8,1,1,1,2],[7,0,0,0,3],[7,0,0,0,3],[7,0,0,0,3],[6,5,5,5,4]],[[8,1,2],[7,0,3],[7,0,3],[7,0,3],[6,5,4]],[[8,1,1,2],[7,0,0,3],[7,0,0,3],[6,5,5,4]]', :description => 'This is a standard 5x5 map.', :name => 'Ice Planet', :functions => ''

bullet1 = Projectile.create :name => '.22', :description => 'Small chamber low caliber round', :element => 'none', :functions => '', :sprite => 'a', :sprite_start => '', :sprite_finish => ''
bullet2 = Projectile.create :name => 'Rocket', :description => 'Rocket Propelled Grenade', :element => 'none', :functions => '', :sprite => 'a', :sprite_start => '', :sprite_finish => ''
bullet3 = Projectile.create :name => 'Laser', :description => 'Concentrated Light Beams', :element => 'none', :functions => '', :sprite => 'a', :sprite_start => '', :sprite_finish => ''
bullet4 = Projectile.create :name => 'Cannon Ball', :description => 'A giant lead cannon ball', :element => 'none', :functions => '', :sprite => 'a', :sprite_start => '', :sprite_finish => ''
bullet5 = Projectile.create :name => 'Mine', :description => 'Large radius explosive round', :element => 'none', :functions => '', :sprite => 'a', :sprite_start => '', :sprite_finish => ''
bullet6 = Projectile.create :name => 'Buckshot', :description => 'Large shotgun pellets', :element => 'none', :functions => '', :sprite => 'a', :sprite_start => '', :sprite_finish => ''
bullet7 = Projectile.create :name => 'Arrow', :description => "A child's rubber arrow, just kidding; it's deadly", :element => 'none', :functions => '', :sprite => 'a', :sprite_start => '', :sprite_finish => ''

gun1 = Gun.create :name => 'Shotty', :description => 'A raptor-shooting folding stock shotgun', :size => 8, :damage => 2, :fire_rate => 200, :clip_size => 6, :reload_time => 800, :proj_size => 1, :proj_speed => 300, :proj_distance => 200, :proj_number => 5, :proj_spread => 10, :functions => '', :sprite => 'a', :sprite_firing => '', :sprite_reload => ''
gun2 = Gun.create :name => 'Pistols', :description => 'Two pistols, fired like an idiot', :size => 4, :damage => 4, :fire_rate => 100, :clip_size => 20, :reload_time => 1000, :proj_size => 1, :proj_speed => 300, :proj_distance => 400, :proj_number => 1, :proj_spread => 10, :functions => '', :sprite => 'a', :sprite_firing => '', :sprite_reload => ''
gun3 = Gun.create :name => 'Rocket Launcher', :description => 'A fuckoff-huge rocket lawnchair', :size => 12, :damage => 10, :fire_rate => 800, :clip_size => 3, :reload_time => 800, :proj_size => 3, :proj_speed => 400, :proj_distance => 400, :proj_number => 1, :proj_spread => 10, :functions => 'console.log("write a function to make the rocket veer over time")', :sprite => 'a', :sprite_firing => '', :sprite_reload => ''
gun4 = Gun.create :name => 'Sniper', :description => 'A hip-fired high-caliber n00b head-popper', :size => 9, :damage => 9, :fire_rate => 600, :clip_size => 10, :reload_time => 1000, :proj_size => 1, :proj_speed => 800, :proj_distance => 900, :proj_number => 1, :proj_spread => 5, :functions => '', :sprite => 'a', :sprite_firing => '', :sprite_reload => ''
gun5 = Gun.create :name => 'ChainGun', :description => 'The dumbest way to cut down a tree (and the most badass)', :size => 10, :damage => 3, :fire_rate => 100, :clip_size => 100, :reload_time => 1200, :proj_size => 1, :proj_speed => 300, :proj_distance => 300, :proj_number => 2, :proj_spread => 10, :functions => '', :sprite => 'a', :sprite_firing => '', :sprite_reload => ''
gun6 = Gun.create :name => 'McGuyver', :description => 'A gun primarily made of duct-tape and brawn', :size => 6, :damage => 6, :fire_rate => 300, :clip_size => 10, :reload_time => 400, :proj_size => 2, :proj_speed => 150, :proj_distance => 300, :proj_number => 3, :proj_spread => 15, :functions => 'console.log("write a function that knocks the player back on fire")', :sprite => 'a', :sprite_firing => '', :sprite_reload => ''

ability1 = Ability.create :name => 'Jump', :description => 'You use your legs to hop up into the air', :power_mod => 1, :functions => 'a', :sprite => ''
ability2 = Ability.create :name => 'Sprint', :description => 'You use your legs to run faster for a bit', :power_mod => 0.1, :functions => 'a', :sprite => ''
ability3 = Ability.create :name => 'Slice', :description => 'You cut everything around you with a hidden sword', :power_mod => 2, :functions => 'a', :sprite => ''
ability4 = Ability.create :name => 'Bulletmancy', :description => 'You speed your bullets and raise their range for a bit', :power_mod => 2, :functions => 'a', :sprite => ''

title1 = Title.create :name => 'Duke of Butts', :description => "Discount viscount Buttington Butt's old title"
title2 = Title.create :name => 'ButtLord', :description => "Better known as Peter Swill"
title3 = Title.create :name => 'Rocket-Ninja', :description => "A ninja, wearing rockets... what?"
title4 = Title.create :name => '119', :description => "WHO SAYS A NUMBER CAN'T BE A TITLE!?"
title5 = Title.create :name => 'Hex Zero Rouge', :description => "Hell hadn't made no more"
title6 = Title.create :name => 'Muse', :description => "An inspiration to us all"
title7 = Title.create :name => 'Killer', :description => "You kill. You're a killer. Hence"
title8 = Title.create :name => 'From whence all things come', :description => "Re: This Title"
title9 = Title.create :name => 'Dr.', :description => "You're a REAL doctor!"
title10 = Title.create :name => 'Attending Rocket Surgeon', :description => "It's rocket science, and blood!"
title11 = Title.create :name => 'Village Idiot', :description => "There's always one"
title12 = Title.create :name => 'Croc Cutter', :description => "They ususally cut you back, but with teeth"
title13 = Title.create :name => 'Hitman', :description => "47"
title14 = Title.create :name => 'The answer', :description => "42"
title15 = Title.create :name => 'Amateur Lepidopterist', :description => "Butt is in there somewhere, probably before fly"
title16 = Title.create :name => 'King', :description => "GARY King. The once and future king."
title17 = Title.create :name => "Panic! It's", :description => "At the disco"
title18 = Title.create :name => 'Slug head', :description => "You're not invincible"
title19 = Title.create :name => 'Sniper', :description => "It's a good job mate"


character1 = Character.create :name => 'Berago', :exp => 0, :hp => 10, :hp_regen => 1, :power => 5, :power_regen => 1, :speed => 200, :size => 1, :move_type => 'static', :element => 'none', :color_schema => 'none', :emblem => '', :functions => '', :sprite => 'a', :sprite_idle => '', :sprite_death => '', :sprite_hat => '', :sprite_jacket => '', :sprite_shoes => '', :sprite_scarf => '', :user_id => nil
character2 = Character.create :name => 'Dengo', :exp => 0, :hp => 15, :hp_regen => 1.5, :power => 2, :power_regen => 1, :speed => 150, :size => 1, :move_type => 'static', :element => 'none', :color_schema => 'none', :emblem => '', :functions => '', :sprite => 'a', :sprite_idle => '', :sprite_death => '', :sprite_hat => '', :sprite_jacket => '', :sprite_shoes => '', :sprite_scarf => '', :user_id => nil
character3 = Character.create :name => 'The Will', :exp => 0, :hp => 5, :hp_regen => 3, :power => 2, :power_regen => 3, :speed => 250, :size => 1, :move_type => 'float', :element => 'none', :color_schema => 'none', :emblem => '', :functions => '', :sprite => '', :sprite_idle => '', :sprite_death => '', :sprite_hat => '', :sprite_jacket => '', :sprite_shoes => '', :sprite_scarf => '', :user_id => nil
character4 = Character.create :name => 'Jon', :exp => 0, :hp => 15, :hp_regen => 2, :power => 3, :power_regen => 1, :speed => 200, :size => 1, :move_type => 'float', :element => 'none', :color_schema => 'none', :emblem => '', :functions => '', :sprite => 'a', :sprite_idle => '', :sprite_death => '', :sprite_hat => '', :sprite_jacket => '', :sprite_shoes => '', :sprite_scarf => '', :user_id => nil
character5 = Character.create :name => 'Timmy', :exp => 0, :hp => 20, :hp_regen => 0, :power => 5, :power_regen => 1, :speed => 250, :size => 1.25, :move_type => 'float', :element => 'none', :color_schema => 'none', :emblem => '', :functions => '', :sprite => 'a', :sprite_idle => '', :sprite_death => '', :sprite_hat => '', :sprite_jacket => '', :sprite_shoes => '', :sprite_scarf => '', :user_id => nil
character6 = Character.create :name => 'Jack', :exp => 0, :hp => 5, :hp_regen => 1, :power => 10, :power_regen => 1, :speed => 400, :size => 1, :move_type => 'float', :element => 'none', :color_schema => 'none', :emblem => '', :functions => '', :sprite => 'a', :sprite_idle => '', :sprite_death => '', :sprite_hat => '', :sprite_jacket => '', :sprite_shoes => '', :sprite_scarf => '', :user_id => nil
character7 = Character.create :name => 'Ted', :exp => 0, :hp => 10, :hp_regen => 0.6, :power => 10, :power_regen => 6, :speed => 200, :size => 1, :move_type => 'static', :element => 'none', :color_schema => 'none', :emblem => '', :functions => '', :sprite => 'a', :sprite_idle => '', :sprite_death => '', :sprite_hat => '', :sprite_jacket => '', :sprite_shoes => '', :sprite_scarf => '', :user_id => nil

biome3.rooms << room1 << room2 << room3 << room4 << room5 << room6 << room7 << room8 << room9 << room10 << room11 << room12 << room13 << room14

#@user = User.create FactoryGirl.build(:user).attributes
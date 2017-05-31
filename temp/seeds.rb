require 'active_record'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'

Pokemon.destroy_all
Pokemon.create(name: "MewTwo", cp: rand(9999), poke_type: "Mystic", img_url: "http://orig12.deviantart.net/606d/f/2013/139/f/9/mewtwo_by_kicktyan-d65s6xy.jpg")
Pokemon.create(name: "Lugia", cp: rand(5500), poke_type: "Unknown", img_url: "http://orig04.deviantart.net/12de/f/2013/085/5/e/lugia_by_alectorfencer-d5zcov1.jpg")
Pokemon.create(name: "Mew", cp: rand(????), poke_type: "Mystic", img_url: "https://s-media-cache-ak0.pinimg.com/originals/a9/37/03/a9370377b69c581e0f9fc7b1ea4d2f77.jpg")
Pokemon.create(name: "Arcanine", cp: rand(2000), poke_type: "Fire", img_url: "http://t09.deviantart.net/XQUgJmjFx-TydwKa6-aCZuglOZY=/fit-in/700x350/filters:fixed_height(100,100):origin()/pre15/ee10/th/pre/i/2013/086/f/b/arcanine_by_tsaoshin-d5zhybu.png")
Pokemon.create(name: "Articuno", cp: rand(4595), poke_type: "Ice", img_url: "http://img07.deviantart.net/456a/i/2015/262/7/7/pokemon___articuno_above_the_nightsky_by_anime4ewa-d9a4jw5.jpg")

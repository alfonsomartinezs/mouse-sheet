# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Character.destroy_all
User.destroy_all

##seed cities
City.destroy_all
 
city_names = ["Copperwood",
"Barkstone",
"Elmoss",
"Ivydale",
"Lockhaven",
"Port Sumac",
"Shaleburrow",
"Sprucetuck",
"Appleloft",
"Blackrock",
"Butterloch",
"Calogero",
"Darkwater",
"Dorigift",
"Flintrust",
"Frostic",
"Gilpledge",
"Ironwood",
"Mapleharber",
"Pebblebrook",
"Rootwallow",
"Rustleaf",
"Sandmason",
"Shorestone",
"Windselm",
"Wolfepointe"]
 
 
city_names.each do |name|
 City.create(name: name)
end
 
##seed skills
Skill.destroy_all
skill_names = ["administrator",
"apiarist",
"archivist",
"armorer",
"baker",
"boatcrafter",
"brewer",
"carpenter",
"cartographer",
"cook",
"fighter",
"glazier",
"haggler",
"harvester",
"healer",
"hunter",
"insectrist",
"instructor",
"laborer",
"loremouse",
"manipulator",
"militarist",
"miller",
"orator",
"pathfinder",
"persuader",
"potter",
"scientist",
"scout",
"smith",
"stonemason",
"survivalist",
"weather watcher",
"weaver"]
 
skill_names.each do |name|
 Skill.create(name: name)
end
 
##seed traits
Trait.destroy_all
 
trait_names = [
 "alert",
 "bigpaw",
 "bitter",
 "bodyguard",
 "bold",
 "brave",
 "calm",
 "clever",
 "compassionate",
 "cunning",
 "curious",
 "deep ear",
 "defender",
 "determined",
 "driven",
 "early riser",
 "extrovert",
 "fat",
 "fearful",
 "fiery",
 "generous",
 "graceful",
 "guard's honor",
 "hard worker",
 "independent",
 "innocent",
 "inquisitive",
 "jaded",
 "leader",
 "longtial",
 "lost",
 "natural bearings",
 "nimble",
 "nocturnal",
 "oldfur",
 "open-minded",
 "quick-witted",
 "quiet",
 "rational",
 "scarred",
 "sharp-eyed",
 "sharptooh",
 "short",
 "skeptical",
 "skinny",
 "steady paws",
 "stoic",
 "stubborn",
 "suspicious",
 "tall",
 "thoughtful",
 "weather sense",
 "wise" ,
 "wolf's snout",
 "young",
]
 
trait_names.each do |name|
 Trait.create(name: name)
end
 
##seed wises
Wise.destroy_all
 
wise_names = [
 "Path-wise",
 "Duck-wise",
 "Escort-wise",
 "Weasel-wise",
 "Darkheather-wise",
 "Coast-wise",
 "Herb-wise",
 "Hidey-hole-wise",
 "Snow-wise",
 "Owl-wise",
 "Bonehead-wise",
 "Rain-wise",
 "Governer-wise",
 "Legends of the Guard-wise",
 "Leaf-wise",
 "Beer-wise",
 "Mushroom-wise",
 "Rock-wise",
 "Wild Radish-wise",
 "Axe-wise",
 "Code of the Guard-wise",
 "Bread-wise"
]
 
wise_names.each do |name|
 Wise.create(name: name)
end


##seed ranks
Rank.destroy_all

rank_attrs = [
  {name: "Tenderpaw",rank_will: 2,rank_health: 6, rank_resources: 1, rank_circles: 1},
  {name: "Guardmouse", rank_will: 3, rank_health: 5, rank_resources: 2, rank_circles: 2},
  {name: "Patrol Guard",rank_will: 4, rank_health: 4,rank_resources: 3, rank_circles: 2},
  {name: "Patrol Leader",rank_will: 5, rank_health: 4, rank_resources: 4, rank_circles: 3},
  {name: "Guard Captain",rank_will: 6, rank_health: 3, rank_resources: 5, rank_circles: 4}
]
Rank.create(rank_attrs)
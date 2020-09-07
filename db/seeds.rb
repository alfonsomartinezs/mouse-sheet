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
 
traits = [
 {name: "alert", description: "Most residents of Elmoss earn their keep as
 harvesters. They scour the surrounding forest
 and bring its fruits back into the city for sale.
 While at their labors, they must remain alert for
 predators and bad weather. Those that keep at it
 for too long become paranoid and skittish. "},
 {name:"bigpaw",description: "Mice with this trait are good at physical tasks
 requiring sturdy, broad paws. They’re a bit
 clumsy with tasks requiring fine or delicate
 work."},
 {name:"bitter",description:"Some guardmice grow bitter in the field. They feel
 all their efforts are for nothing. This may protect
 them from the many and varied disappointments
 of life in the Guard, but it also burdens them.
 They have trouble taking an optimistic course."},
 {name:"bodyguard",description:"The bodyguard is trained to protect his charge
 from harm, danger and exposure. Bodyguards
 are often a valuable asset, but they can become
 overprotective and hinder or impede the one
 they are to protect."},
 {name:"bold",description:"The bold rush into action without a thought for
 their own safety. Daring stratagems and reckless
 abandon are hallmarks of the bold. Forethought
 and caution are not for these mice."},
 {name:"brave",description:"The brave never hesitate to step into the
 unknown. They are susceptible to wild tales of
 far-off places and dangerous adventures. Brave
 mice almost universally detest being called
 cowards. It’s the surest way to earn their ire."},
 {name:"calm",description:"Calm mice are difficult to anger and are adept at
 shrugging off any emotion that does manage to
 burden their heart. However, they risk becoming
 too sedate and perhaps missing a threat. "},
 {name:"clever",description:"Clever mice are useful in all fields. They are adept
 at figuring answers to pernicious problems.
 However, the Territories are rife with tales of
 clever mice who were too smart for their own
 good."},
 {name:"compassionate",description:"Compassionate mice are able to see and
 understand a problem from their opponent’s
 viewpoint. This is a great benefit in many
 situations, but it makes duty difficult when
 ruthless action is called for."},
 {name:"cunning",description:"Cunning mice are adept at deceit and plotting
 traps. They are often either arrogant or, if caught
 at their games, known as dishonest."},
 {name:"curious",description:"Curious mice are always eager to learn and
 on the lookout for new aspects to life in the
 Territories. But there’s a cautionary saying in
 Lockhaven, “Curiosity killed the mouse first,”
 that all mice should keep in mind."},
 {name:"deep ear",description:"Mice with the Deep Ear trait have keen hearing,
 but it does make them susceptible to loud noises
 and the general din of the big cities."},
 {name:"defender",description:"During the Winter War of 1149, certain civilian
 mice were called upon to defend their homes
 from the invasion. They were civilians without
 training, support or even proper equipment.
 These mice now know the value and cost of
 defending one’s home"},
 {name:"determined",description:"Determined mice focus their energies on
 accomplishing their goals. While this is a useful
 characteristic, it can turn from determination to
 tunnel vision."},
 {name:"driven",description:"Driven mice follow their beliefs no matter what
 the cost. However, if they are not careful, that
 cost can prove to be very dear."},
 {name:"early riser",description:"Early risers are up first in the morning. Awake
 before the sun, they’re clear-headed and sharp
 while everyone else is bleary-eyed and sleepy.
 Of course, they must be early to bed to be so
 early to rise."},
 {name:"extrovert",description:"Extroverts are adept at meeting mice or
 introducing themselves to strangers. However,
 they often lead public or semipublic lives and
 are easy to track down, even when they don’t
 want to be."},
 {name:"fat",description:"Times are lean in the Territories, but a few mice
 manage to put on the stones, usually by hanging
 around the bakery."},
 {name:"fearful",description:"There was an adage in Walnutpeck, “A fearful
 mouse is a wise mouse.” In other words, it’s better
 to flee a potential predator than wait around to
 be surprised. Of course, this instinct preserves
 mice who live in dangerous areas, but it hurts
 them when they come into the more civilized
 towns and have to deal with polite society."},
 {name:"fearless",description:"Fearless fighters charge into the face of danger
 without a thought for their own safety. However,
 they tend to forget when discretion should come
 before valor."},
 {name:"fiery",description:"Fiery mice know how to stir up a crowd, but they
 are quick to anger."},
 {name:"generous",description:"Generous mice always seem to have something
 to give to others, even if it means going without
 themselves."},
 {name:"graceful",description:"Some mice possess a poise and grace like unto a
 stalking cat or wheeling jay. However, these mice
 must take care not to be injured or hurt, lest they
 lose their youthful gifts."},
 {name:"guard's honor",description:"Those who live or were raised in Lockhaven
 have a special relationship with the Guard.
 They know its inner workings, its needs and
 travails. Living so closely with the Guard earns
 these mice a trait called Guard’s Honor. They
 are more intimately connected to the financial
 and social body of the Guard and are trusted to
 a greater degree. Should a mouse ever betray
 that trust, he is cast out—out of Lockhaven and
 perhaps even beyond the scent border."},
 {name:"hard worker",description:"The mice of Ivydale are renowned for their work
 ethic. No mouse works harder or labors longer
 than an Ivydaler! Of course, these same hard
 workers rarely take a holiday, and some work
 themselves right into the grave."},
 {name:"independent",description:"Copperwood’s residents are known for their
 strong independent streak. They prefer to do
 things on their own, their way. They feel that
 helping paws just get in the way."},
 {name:"innocent",description:"Innocent mice have an honesty and simplicity
 about them that makes their requests difficult
 to deny. However, they are often naive to the
 world’s true nature"},
 {name:"inquisitive",description:"The learned mice of Sprucetuck are renowned
 for their inquisitive nature. They are always
 searching for meaning and truth. Which, of
 course, leads them into all manner of dangerous
 situations."},
 {name:"jaded",description:"Life in the Guard hardens some mice and makes
 them callous. This protects them from the folly
 of youthful ideals and heroism, but it also makes
 them stubborn regarding new ideas."},
 {name:"leader",description:"The Guard is always in need of strong leaders.
 Such mice have a rare quality that inspires groups
 of mice to listen to them, even when they speak
 softly or indirectly. But it is important that these
 leaders do not abuse their powers and remain
 capable of following orders themselves."},
 {name:"longtail",description:"Occasionally, a mouse is born with an
 abnormally long tail. With a little practice, he
 can train himself to do all manner of tricks with
 it. Of course, it’s forever getting caught in doors,
 wrapped in wheels, trodden upon and yanked."},
 {name:"lost",description:"Some mice have no sense of direction. Useless
 at pathfinding, their wandering treks make them
 difficult to track down."},
 {name:"natural bearings",description:"Quite the opposite of Lost mice, those with
 natural bearings always seem to know where
 they are. They also tend to have a wanderlust
 that makes them uncomfortable when in cities
 or towns for too long."},
 {name:"nimble",description:"A nimble mouse is adept at leaping and climbing.
 When out of the spotlight, though, they can be
 just as clumsy as everyone else, if not more so."},
 {name:"nocturnal",description:"Certain mice retain nocturnal habits. When
 others are asleep, they’re awake and prowling
 about, clear-headed and sharp-eyed. Of course,
 come noontime the next day, you’ll find them
 fast asleep."},
 {name:"oldfur",description:"An oldfur is a mouse who’s past his prime
 physically. Even so, oldfurs hold the collected
 wisdom of generations who have gone before."},
 {name:"open-minded",description:"The culture of Shaleburrow is very liberal and
 forward-thinking. They are an open-minded
 people. This is reflected in their democratic
 government and proliferation of many different
 types of schools."},
 {name:"quick-witted",description:"A quick-witted mouse acts on instinct, without
 need for thought or consideration. While this
 attribute is clearly useful, it can lead to difficulties
 when patience and planning are required."},
 {name:"quiet",description:"Mice are quiet by nature, but these mice are even
 more so. They’re quiet in everything they do—
 the way they speak, the way they work and the
 way they walk. Some sink so far into quietude,
 they have difficulty coming out of their shells."},
 {name:"rational",description:"Sprucetuck’s schools teach a tradition of steady,
 rational thought. Mice taught in those schools
 are persuasive when using their logic and reason.
 But they lose their veneer of education if they let
 emotion get the better of them. "},
 {name:"scarred",description:"Mice in the Guard who lived through the Weasel
 Wars are often scarred by their experiences.
 They’re tough, and not easily flustered by
 injury or fear, but they are also maimed or
 psychologically scarred by their experiences."},
 {name:"sharp-eyed",description:"A sharp-eyed mouse is always welcome on
 patrol. He makes a good scout or hunter.
 Sometimes, after staring at the brush for days
 on end, the sharp-eyed mouse can get a little
 jumpy. "},
 {name:"sharptooh",description:"Certain mice have naturally sharp teeth, and
 they’re not above using them in a fight or another
 close situation. These mice also have problems
 with bruxing—grinding their teeth. They can
 keep their fellow patrol mice up all night when
 they grind their teeth in their sleep! "},
 {name:"short",description:"Some mice are shorter than others. They are
 particularly adept at slipping through cracks
 and getting into hard-to-reach places. Of course,
 they have a difficult time getting the plates and
 jars out of the cupboard."},
 {name:"skeptical",description:"Skeptical mice are always watching for lies and
 deceit, a good quality. It can go too far when the
 skeptic thinks even the truthful are liars."},
 {name:"skinny",description:"It’s always good to keep a slim build, but it’s
 important for mice to stay healthy, too."},
 {name:"steady paws",description:"The steady paws of Barkstone come from a tradition
 of skilled labor in the city, specifically smiths.
 Some smiths value their hands so highly, they’ve
 taken out insurance policies with local banks!"},
 {name:"stoic",description:"A stoic mouse never complains about the
 hardships of life in the Guard. He accepts them
 and soldiers on. However, this same quality
 makes him emotionally remote and difficult
 to reach in matters of empathy, love and
 compassion. "},
 {name:"stubborn",description:"It is good to stand for what you believe in, just
 be careful of taking too hard a stance. Other
 mice may dismiss you as being intractable and
 unhelpful."},
 {name:"suspicious",description:"Life among the mice of the Territories is not one
 of complete harmony. There are schemes and
 plots hatched. The suspicious mouse is always
 on the watch for such plots. Of course, he’s also
 much more prone to seeing a plot even when
 there is none. "},
 {name:"tall",description:"Most mice in the Territories are about the same
 height. Every so often, a proud mother bears
 forth a strapping young mouse who sprouts up
 taller than the rest. Certainly a useful attribute
 for helping mum get the jam down from the
 cupboard or bossing around brothers and
 sisters. Not so useful when it’s time to duck into
 that tiny little bolt hole."},
 {name:"thoughtful",description:"A thoughtful mouse will ponder all of his options
 and all possible courses of action before making
 a decision. This is very useful when there’s time
 to plan or ponder, but useless when it’s time to
 act with haste."},
 {name:"tough",description:"Some mice are built tougher than others. They’re
 better at coping with injury and sickness, but
 this quality also leads to a certain hubris.
 They’re vulnerable to another mouse who plays
 into their strength."},
 {name:"weather sense",description:"Some mice are born with an innate sense of the
 weather, others learn it through experience—
 they feel it in their bones. Of course, when you
 can accurately predict the weather, everyone
 blames the rain on you."},
 {name:"wise",description:"Wisdom is a rare thing in this day and age. Many
 mice are quick to judge and don’t remember the
 lessons of the past. This mouse carries wisdom
 with him that helps him see truth and the right path to action. But he must constantly fight his
 own inner demons lest that wisdom turn to
 arrogance and pride."} ,
 {name:"wolf's snout",description:"Some mice have an extremely keen sense of
 smell. These mice are said to have the “wolf’s
 snout,” a reference to the mouse’s most feared
 enemy and the most dangerous predator. The
 trait is useful when hunting, but a mouse with
 this gift must take care that he does not become
 savage and bestial like the wolves."},
 {name:"young",description:"This mouse, no matter his actual age, is vigorous
 and youthful. He’s healthy and rarely gets tired
 or sick. The youthful exuberance often comes
 with a youthful impatience."}
]
 
Trait.create(traits)

 
##seed wises
Wise.destroy_all
 
wise_names = [
 "path-wise",
 "duck-wise",
 "escort-wise",
 "weasel-wise",
 "darkheather-wise",
 "coast-wise",
 "herb-wise",
 "hidey-hole-wise",
 "snow-wise",
 "owl-wise",
 "bonehead-wise",
 "rain-wise",
 "governer-wise",
 "legends of the Guard-wise",
 "leaf-wise",
 "beer-wise",
 "mushroom-wise",
 "rock-wise",
 "wild Radish-wise",
 "axe-wise",
 "code of the Guard-wise",
 "bread-wise"
]
 
wise_names.each do |name|
 Wise.create(name: name.downcase)
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


##Seed condition_types
Condition.destroy_all

condition_types = [
  {name:"Angry",
  description:"Life in 
  the guard can be frustrating. 
  The Guard are caretakers and problem solvers; mice from all over the territories seek them out and lay problems at their paws. 
  It's important for a guardmouse to keep a cool head and an objective viewpoint.",
  consequence:"Being Angry subtracts 1 from your disposition for any conflict that uses Will as its base."},
  {name:"Hungry and Thirsty",
  description:"Being Hungry and Thirsty can impair your
  guardmouse when it’s time for him to step up
  and face danger. A wise mouse once said, “The
  Guard fights on its stomach.” A well-fed guard
  is a brave guard.",
  consequence:"Hungry and Thirsty subtracts 1 from
  disposition for any conflict. "},
  {name:"Tired",
  description:"The labors of the Guard are ceaseless and
  exhausting. The work is never done, but it’s
  important to get enough rest. An exhausted
  guardmouse can jeopardize the mission.",
  consequence:"Tired subtracts 1 disposition from all
  conflicts."},
  {name:"Injured",
  description:"The Guard put their very lives on the line every
  day. They’re often Injured in their efforts.
  Injuries are difficult things. They don’t take a
  guardmouse out of action, but they reduce his
  overall effectiveness",
  consequence:"Being Injured imposes a -1D penalty to
  Nature, Will, Health and skill tests. This
  penalty is not applied to Resources and Circles
  tests, nor to Will and Health tests for recovery."},
  {name:"Sick",
  description:"Being out in the cold and wet, exposed to the
  raw edge of nature, a guardmouse is always at
  risk of falling ill. It’s important to eat right and
  keep warm and dry, lest you get Sick.",
  consequence:"Being Sick imposes a -1D penalty to
  Nature, Will, Health and skill tests. This
  penalty is not applied to Resources and Circles
  tests, nor to Will and Health tests for recovery"} 
]

condition_types.each do |type|
  ct = Condition.new(type)
  unless ct.valid?
    puts ct.errors.full_messages
  end
  ct.save
end

## Seed demo user

demo_user = User.new
demo_user.email = "test@mail.com"
demo_user.password = "password"
demo_user.password_confirmation = "password"
demo_user.save
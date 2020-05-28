# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Tyrant.destroy_all
Rating.destroy_all
Comment.destroy_all

u1 = User.create(name:"Eric", password: "asdf")
u2 = User.create(name:"Luis", password: "fdsa")
u3 = User.create(name:"Cole", password: "qwer")
u4 = User.create(name:"Edwin", password: "rewq")
u5 = User.create(name:"Phyllis", password: "tyui")

t1 = Tyrant.create(name:"Fire Lord Zuko",
bio:"He was banishededeem hi by his father, Firelord Ozai and sought to 
capture or kill Avatar Aang to rmself. He gradually became good and eventually 
joined Aang's companions. He became Firelord after he defeated his sister Azula 
on the day that would have marked the coronation of his sister as Fire Lord.",
economics_policy: "Money for all",
social_policy: "Peace for all 4 nations",
warmongering_policy: "Destruction as a last resort"
)
t2 = Tyrant.create(name:"Fire Lord Ozai",
bio:"Ozai was the Fire Lord and absolute ruler of the Fire Nation during the 
final years of the Hundred Year War. He was the second son of Fire Lord Azulon 
and Ilah, the younger brother of Iroh, uncle of Lu Ten, husband to Ursa, the 
father of Prince Zuko and Princess Azula,[2] and paternal grandfather of Izumi.
Ozai was a firebending master and, prior to the ending of the War, was believed 
to have been one of the most powerful firebenders in the world. After Iroh's 
only son, Lu Ten, died, Ozai usurped his brother's birthright to the throne
in a scheme that resulted in his father's death and Ursa's banishment.",
economics_policy: "Everything nad anything for the Fire Nation.",
social_policy: "Join us or die to us",
warmongering_policy: "Destructio is key to take over the nations!"
)

t3 = Tyrant.create(name:"Tywin Lannister",
bio:"Lord Tywin Lannister was the head of House Lannister, Lord of Casterly 
Rock, Warden of the West, Lord Paramount of the Westerlands, Hand of the King 
for three different kings, and Protector of the Realm. He was the father of 
Cersei, Jaime, and Tyrion Lannister, and sole grandfather of the incest-born 
Joffrey, Myrcella, and Tommen Baratheon.",
economics_policy: "A Lannister always pays his debts",
social_policy: "Only highborn matter",
warmongering_policy: "Strike down all who oppose the Lannisters"
)

t4 = Tyrant.create(name:"Joffrey Lannisters",
bio:"King Joffrey I Baratheon was the eighteenth king to rule from the 
Iron Throne. He was formally styled as Joffrey of Houses Baratheon and 
Lannister, the First of His Name, King of the Andals and the First Men, 
Lord of the Seven Kingdoms, and Protector of the Realm. Though believed by 
most to be the eldest son of King Robert Baratheon and Queen Cersei Lannister, 
Joffrey is actually a bastard born from Cersei's incestuous relationship with 
her twin brother Jaime Lannister. He is the older brother of Myrcella and 
Tommen Baratheon.",
economics_policy: "All the money is for me!",
social_policy: "All i care about is me!",
warmongering_policy: "Kill them all!"
)

t5 = Tyrant.create(name:"Night King",
bio:"The Night King was the master and the first of the White Walkers, 
having existed since the age of the First Men. He was also the supreme 
leader of the Army of the Dead.",
economics_policy: "Humans must die!",
social_policy: "Humans must die!",
warmongering_policy: "Kill all the humans!"
)

t6 = Tyrant.create(name:"Aku",
bio:"A shapeshifting demon from long ago, Aku sends the protagonist,
 a Samurai Jack to the future before he could land a killing blow. In 
 the distant future, Aku reigns supreme on the planet Earth.",
economics_policy: "Fairly frugal with his economic practices. He seems to
allow different sets of humans and other species to rule amongst themselves
economically. Aku is sure to take a piece of each slice of cake, though",
social_policy: "Anything that is of free-thinking or opinion is destroyed
or turned. Under the rule of Aku, which does not seem to be all-reaching,
one is either submissive to him or finds a place to live and act outside
of his control",
warmongering_policy: "Aku is an all-powerful shape-shifting demon. He seems
to be unmatched by all except for Samurai Jack. This said, he seems to send
hordes of pretty lowly underlings to do everything for him. Sometimes he sends
a special agent or two. He typically uses his shape-shifting prowess just to 
screw with people."
)

t7 = Tyrant.create(name:"Sheldon Plankton",
bio:"The business rival of Spongebob’s boss Eugene Krabs, who took over Bikini
 Bottom with the sale of mind-controlling bucket-like helmets in The Spongebob 
 Squarepants Movie.",
economics_policy: "Steal the Krabby Patty formula and profit.",
social_policy: "Totalitarian rule. His formula may be identical to the original,
but everyone will be eating it. All the time.",
warmongering_policy: "Coercion and trickery"

t8 = Tyrant.create(name:"Emperor Palpatine",
bio:"A Sith Lord who served as Senator of the planet Naboo, Supreme Chancellor of 
the Galactic Republic and Emperor of the Galactic Empire. Possible reference to 
Hitler's title Chancellor of Germany and Napoleon's transformation to an empire.",
economics_policy: "War and capitalism in the form of empiricism. Creates an 
oligarchal structure of profit through war. Gives favor to those that betray their own",
social_policy: "Kill the jedi. Who gives a crap about everything else.",
warmongering_policy: "Literally sends the most and the most powerful of everything
to do anything. Led by idiotic volunteers that can't hit a target. Ever."
)

t9 = Tyrant.create(name:"Andrew Ryan",
bio:"Founder of Rapture, Ryan built Rapture as a utopia to remain isolated from the 
outside world, as well severing connections with outside of the city. However, 
his rule reaches a climax when rival, Frank Fontaine, defies Ryan's objectives, 
becoming a catalyst for the civil war in Rapture.",
economics_policy: "Scientific pursuit and capitalism.",
social_policy: "Let's make everyone take ridiculous gene-editing drugs and see what
happens.",
warmongering_policy: "Let everybody kill each other, basically."
)

t10 = Tyrant.create(name:"Sauron",
bio:"The main antagonist of the series, Sauron is the leader of the orc army of 
Mordor attempting to achieve domination of Middle-Earth, only to be weakened by 
Isildur. Sauron attempts to regain his ring stolen by Isildur, which later 
recovered by Bilbo Baggins and in the possession of his nephew Frodo Baggins, 
to return to power, only to be completely defeated after the ring is dropped 
into Mount Doom.",
economics_policy: "The economics of orc/goblin labor and blood.",
social_policy: "Are you smart? Die.",
warmongering_policy: "Amass a giant f**king orc army of idiots, have a troupe of 
ridiculously badass undead warriors, and let them figure it out?"
)

r1 = Rating.create(appearance_rating: 4,economics_rating: 3, 
social_rating: 5, warmongering_rating:3, charisma_rating: 3,
user: u2, tyrant: t1)
r2 = Rating.create(appearance_rating: 4,economics_rating: 4, 
social_rating: 3, warmongering_rating:5, charisma_rating: 2,
user: u1, tyrant: t2)
r3 = Rating.create(appearance_rating: 4,economics_rating: 3, 
social_rating: 5, warmongering_rating:3, charisma_rating: 3,
user: u3, tyrant: t3)
r4 = Rating.create(appearance_rating: 2,economics_rating: 2, 
social_rating: 1, warmongering_rating:2, charisma_rating: 3,
user: u5, tyrant: t4)
r5 = Rating.create(appearance_rating: 5,economics_rating: 5, 
social_rating: 5, warmongering_rating:5, charisma_rating: 5,
user: u4, tyrant: t5)

c1 = Comment.create(comments:"Dang that boy Zuko go it!",user: u1, tyrant:t1)
c2 = Comment.create(comments:"This dude sucks",user: u2, tyrant:t2)
c3 = Comment.create(comments:"He died too young",user: u3, tyrant:t3)
c4 = Comment.create(comments:"He got what he deserved!",user: u4, tyrant:t4)
c5 = Comment.create(comments:"He is stone cold!",user: u5, tyrant:t5)

   
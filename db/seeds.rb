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

u1 = User.create(name:"Eric")
u2 = User.create(name:"Luis")
u3 = User.create(name:"Cole")
u4 = User.create(name:"Edwin")
u5 = User.create(name:"Phyllis")

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

   
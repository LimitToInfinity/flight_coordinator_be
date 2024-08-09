### PEOPLE start ###

steve = Person.create(
  name: 'Steve',
  image: 'https://static.wikia.nocookie.net/marvelhigh/images/b/bd/SteveRogers.jpg'
)

clark = Person.create(
  name: 'Clark',
  image: 'https://www.looper.com/img/gallery/things-you-get-wrong-about-clark-kent/intro-1612453541.jpg'
)

barry = Person.create(
  name: 'Barry',
  image: 'https://static.wikia.nocookie.net/garpedia/images/d/d5/Barry_Allen.jpg'
)

tony = Person.create(
  name: 'Tony',
  image: 'https://i.pinimg.com/originals/cd/71/1f/cd711fca60134229d08e3f8e6604674b.jpg'
)

carol = Person.create(
  name: 'Carol',
  image: 'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/square/400/Carol-Danvers.Captain-Marvel.webp'
)

shuri = Person.create(
  name: 'Shuri',
  image: 'https://media.wired.com/photos/5ca226a1798a2466f398690d/1:1/w_554,h_554,c_limit/Culture_Monitor_Shuri.jpg'
)

natalia = Person.create(
  name: 'Natalia',
  image: 'https://i.pinimg.com/564x/40/98/fc/4098fcd4868968c85a47c92e3909676a.jpg'
)

okoye = Person.create(
  name: 'Okoye',
  image: 'https://cdn.costumewall.com/wp-content/uploads/2020/02/Okoye.jpg'
)

hope = Person.create(
  name: 'Hope',
  image: 'https://i.pinimg.com/736x/cf/91/a2/cf91a277272667a41f259a394403f895.jpg'
)

scott = Person.create(
  name: 'Scott',
  image: 'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/square/400/Scott-Lang-Ant-Man.Ant-Man.webp'
)

gamora = Person.create(
  name: 'Gamora',
  image: 'https://upload.wikimedia.org/wikipedia/en/thumb/5/54/Zoe_Saldana_as_Gamora.jpeg/220px-Zoe_Saldana_as_Gamora.jpeg'
)

raven = Person.create(
  name: 'Raven',
  image: 'https://static.wikia.nocookie.net/x-men-movies-canon/images/a/aa/Movies_x_men_jennifer_lawrence_02.jpg'
)

rocket = Person.create(
  name: 'Rocket',
  image: 'https://static0.srcdn.com/wordpress/wp-content/uploads/2021/01/Rocket-Raccoon-2.jpg'
)

bruce = Person.create(
  name: 'Bruce',
  image: 'https://i.pinimg.com/736x/99/fe/3c/99fe3c7f08df852f518a3a1244ab5362.jpg'
)

thor = Person.create(
  name: 'Thor',
  image: 'https://www.looper.com/img/gallery/will-we-see-fat-thor-in-love-and-thunder/intro-1587735212.jpg'
)

groot = Person.create(
  name: 'Groot',
  image: 'https://ae01.alicdn.com/kf/H482a014f44374d90aa99612c2ed27506T/Marvel-Groot-in-Guardians-of-The-Galaxy-Tree-Man-Avengers-40cm-Big-Size-Articulated-Action-Figure.jpg_640x640.jpg'
)

brunnhilde = Person.create(
  name: 'Brunnhilde',
  image: 'https://www.syfy.com/sites/syfy/files/styles/1200x680_hero/public/2017/10/tessa_thompson_valkyrie.jpg'
)

peter = Person.create(
  name: 'Peter',
  image: 'https://static.wikia.nocookie.net/marvelcomicsfanon/images/f/fa/Tom_Holland_as_Peter_Parker_in_Spider-Man_Homecoming_Tom_holland_spiderman%2C_Chicos_famosos%2C_Tom_holland.png'
)

tchalla = Person.create(
  name: 'T\'Challa',
  image: 'https://thesoaksessions.files.wordpress.com/2018/02/mld-28572_r-1068x712.jpg'
)

diana = Person.create(
  name: 'Diana',
  image: 'https://static.dc.com/dc/files/default_images/WW84Style_blog_5fffc5bab091f5.53432043.jpg'
)

### PEOPLE end ###


### USERS start ###

user_guest = User.create(
  username: 'guest',
  password_digest: '$2a$12$TL42P1XMUfxnp2bS03Sh4OiexpZArtoQ4T2tkMybMFkepsKlnlO0G'
)

### USERS end ###


### FLIGHTS start ###

flight1 = Flight.create(
  direction: 'arrival',
  datetime: '2025-08-01 18:00:00',
  airport: 'Bush',
  airline: '(IAH) Frontier',
  number: 4672,
  traveler: carol,
  datetime_string: '2025-08-01T12:00:00-06:00'
)

flight2 = Flight.create(
  direction: 'arrival',
  datetime: '2025-07-28 05:37:00',
  airport: 'Bush',
  airline: '(IAH) United',
  number: 7843,
  traveler: natalia,
  datetime_string: '2025-07-27T23:37:00-06:00'
)

flight3 = Flight.create(
  direction: 'departure',
  datetime: '2025-08-01 22:23:00',
  airport: 'Hobby',
  airline: '(HOU) Frontier',
  number: 8893,
  traveler: natalia,
  datetime_string: '2025-08-01T16:23:00-06:00'
)

flight4 = Flight.create(
  direction: 'arrival',
  datetime: '2025-07-28 05:38:00',
  airport: 'Bush',
  airline: '(IAH) JetBlue',
  number: 3098,
  traveler: steve,
  datetime_string: '2025-07-27T23:38:00-06:00'
)

flight5 = Flight.create(
  direction: 'departure',
  datetime: '2025-08-01 22:22:21',
  airport: 'Bush',
  airline: '(IAH) Delta',
  number: 5781,
  traveler: steve,
  datetime_string: '2025-08-01T16:22:21-06:00'
)

flight6 = Flight.create(
  direction: 'departure',
  datetime: '2025-08-02 17:00:54',
  airport: 'Hobby',
  airline: '(HOU) Spirit',
  number: 5468,
  traveler: gamora,
  datetime_string: '2025-08-02T10:00:54-07:00'
)

flight7 = Flight.create(
  direction: 'arrival',
  datetime: '2025-07-29 21:10:13',
  airport: 'Hobby',
  airline: '(HOU) American',
  number: 8874,
  traveler: okoye,
  datetime_string: '2025-07-29T14:10:13-07:00'
)

### FLIGHTS end ###


### SHUTTLES start ###

shuttle1 = Shuttle.create(
  datetime: '2025-07-28 05:37:00',
  datetime_string: '2025-07-27T23:37:00-06:00'
)
shuttle2 = Shuttle.create(
  datetime: '2025-08-01 18:00:00',
  datetime_string: '2025-08-01T12:00:00-06:00'
)
shuttle3 = Shuttle.create(
  datetime: '2025-08-01 22:22:21',
  datetime_string: '2025-08-01T16:22:21-06:00'
)
shuttle4 = Shuttle.create(
  datetime: '2025-08-01 22:23:00',
  datetime_string: '2025-08-01T16:23:00-06:00'
)
shuttle5 = Shuttle.create(
  datetime: '2025-08-01 22:23:00',
  datetime_string: '2025-08-01T16:23:00-06:00'
)
shuttle6 = Shuttle.create(
  datetime: '2025-07-28 06:40:00',
  datetime_string: '2025-07-27T23:40:00-07:00'
)
shuttle7 = Shuttle.create(
  datetime: '2025-07-28 05:38:00',
  datetime_string: '2025-07-27T23:38:00-06:00'
)
shuttle8 = Shuttle.create(
  datetime: '2025-07-28 05:37:00',
  datetime_string: '2025-07-27T23:37:00-06:00'
)
shuttle9 = Shuttle.create(
  datetime: '2025-07-28 05:37:00',
  datetime_string: '2025-07-27T23:37:00-06:00'
)
shuttle10 = Shuttle.create(
  datetime: '2025-08-01 22:23:00',
  datetime_string: '2025-08-01T16:23:00-06:00'
)
shuttle11 = Shuttle.create(
  datetime: '2025-07-29 21:10:13',
  datetime_string: '2025-07-29T14:10:13-07:00'
)
shuttle12 = Shuttle.create(
  datetime: '2025-07-28 05:38:00',
  datetime_string: '2025-07-27T23:38:00-06:00'
)
shuttle13 = Shuttle.create(
  datetime: '2025-08-01 18:00:00',
  datetime_string: '2025-08-01T12:00:00-06:00'
)
shuttle14 = Shuttle.create(
  datetime: '2025-07-28 05:37:00',
  datetime_string: '2025-07-27T23:37:00-06:00'
)

### SHUTTLES end ###


### RIDES start ###

ride1 = Ride.create(
  driver: barry,
  traveler: carol,
  flight: flight1,
  shuttle: shuttle13
)
ride2 = Ride.create(
  driver: groot,
  traveler: steve,
  flight: flight5,
  shuttle: shuttle3
)

### RIDES end ###

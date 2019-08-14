# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


y = Genre.create(name: "EDM")
z = Artist.create(name: "Marshmellow", bio: "dude who wears a cartoon marshmellow head that makes great music")

x = Song.create(name: "Imagine", artist_id: z.id, genre_id: y.id)

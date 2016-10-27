# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Blogpost.delete_all()
Song.delete_all()
Tourdate.delete_all()

Blogpost.create({newpost: "Incoming news about future releases and tour dates imminent. Stay tuned!" })

Song.create({name: "Decade", lyrics: "We came from hope, a decade of scars across my throat. I don't know what to say to you.", spotify: "https://play.spotify.com/track/0x1VUhVLxtdiEHNSlq9mFB", itunes: "https://itunes.apple.com/us/album/decade-ep/id1057190368"})

Tourdate.create({venue: "PJ Molloys, Dunfermline", lat: 56.070396, long: -3.461226, otherbands: "The Dan Collins Band", date: "2017-01-05 19:00:00" })
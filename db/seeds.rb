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

Blogpost.create({title: "Coming Soon!", newpost: "Incoming news about future releases and tour dates imminent. Stay tuned!" })

release1 = Release.create(name: "Decade EP", cover: "http://www.wikimp3.org/covers/451-4514-4514166-292/hope-the-hunter-decade-ep-2015.jpg")

Song.create({name: "Decade", lyrics: "We came from hope, a decade of scars across my throat. I don't know what to say to you.", spotify: "https://play.spotify.com/track/0x1VUhVLxtdiEHNSlq9mFB", itunes: "https://itunes.apple.com/us/album/decade-ep/id1057190368", release_id: release1.id})

Tourdate.create({venue: "PJ Molloys, Dunfermline", lat: 56.070396, long: -3.461226, otherbands: "The Dan Collins Band", date: "5th January 2017, 7pm" })
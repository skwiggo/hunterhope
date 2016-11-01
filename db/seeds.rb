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
Release.delete_all()

Blogpost.create({title: "New tour dates announced!", newpost: "Check the tour section to see latest tour dates. See if we are coming to your city!"})
Blogpost.create({title: "Coming Soon!", newpost: "Incoming news about future releases and tour dates imminent. Stay tuned!" })

release1 = Release.create(name: "Decade EP.", cover: "http://www.wikimp3.org/covers/451-4514-4514166-292/hope-the-hunter-decade-ep-2015.jpg")
release2 = Release.create(name: "Weightloss.", cover: "http://i1248.photobucket.com/albums/hh482/skwiggo/hunterhope_zpscv5fei03.jpg") 

Song.create({name: "Decade", lyrics: "We came from hope, a decade of scars across my throat. I don't know what to say to you.", spotify: "0x1VUhVLxtdiEHNSlq9mFB", itunes: "https://itunes.apple.com/us/album/decade-ep/id1057190368", release_id: release1.id, downloadable: nil})
Song.create({name: "Champion", lyrics: "When I become a Champion!", spotify: "6PDAhttbwhtQDDNsO4cPxk", itunes: "https://itunes.apple.com/us/album/decade-ep/id1057190368", release_id: release1.id, downloadable: nil})
Song.create({name: "Shoebox", lyrics: "Its a miracle I met you at all.", spotify: "1rm718C8JRoO2Js7f2z5Bc", itunes: "https://itunes.apple.com/us/album/decade-ep/id1057190368", release_id: release1.id, downloadable: nil})
Song.create({name: "Inside", lyrics: "Lets hold hands and pretend we're best friends.", spotify: "134G7RozlWR7zkcJKby4kF", itunes: "https://itunes.apple.com/us/album/decade-ep/id1057190368", release_id: release1.id, downloadable: nil})
Song.create({name: "Weightloss", lyrics: "We all could fall harder than we should, and never know the cause.", spotify: nil, itunes: nil, release_id: release2.id, downloadable: "https://www.dropbox.com/s/hlfej1gtvd1bg6k/Hunter%2BHope-Weightlossguidetrackwithvocals.mp3?dl=1"}) 

Tourdate.create({venue: "Sneaky Petes, Edinburgh", lat: 55.948318, long: -3.191512, otherbands: "Woes", date: "25th November 2016, 8pm" })
Tourdate.create({venue: "PJ Molloys, Dunfermline", lat: 56.070396, long: -3.461226, otherbands: "The Dan Collins Band", date: "5th January 2017, 7pm" })

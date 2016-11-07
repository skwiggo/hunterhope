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
Photo.delete_all()

Blogpost.create({title: "Coming Soon!", newpost: "Incoming news about future releases and tour dates imminent. Stay tuned!" })

release1 = Release.create(name: "Decade EP.", cover: "http://www.wikimp3.org/covers/451-4514-4514166-292/hope-the-hunter-decade-ep-2015.jpg")

Song.create({name: "Decade", lyrics: "We came from hope, a decade of scars across my throat. I don't know what to say to you.", spotify: "0x1VUhVLxtdiEHNSlq9mFB", itunes: "https://itunes.apple.com/us/album/decade-ep/id1057190368", release_id: release1.id, downloadable: nil})
Song.create({name: "Champion", lyrics: "When I become a Champion!", spotify: "6PDAhttbwhtQDDNsO4cPxk", itunes: "https://itunes.apple.com/us/album/decade-ep/id1057190368", release_id: release1.id, downloadable: nil})
Song.create({name: "Shoebox", lyrics: "Its a miracle I met you at all.", spotify: "1rm718C8JRoO2Js7f2z5Bc", itunes: "https://itunes.apple.com/us/album/decade-ep/id1057190368", release_id: release1.id, downloadable: nil})
Song.create({name: "Inside", lyrics: "Lets hold hands and pretend we're best friends.", spotify: "134G7RozlWR7zkcJKby4kF", itunes: "https://itunes.apple.com/us/album/decade-ep/id1057190368", release_id: release1.id, downloadable: nil})

Tourdate.create({venue: "TBC, Edinburgh", lat: 55.948318, long: -3.191512, otherbands: "Woes", date: "25th November 2016, 8pm" })

Photo.create({url: "https://scontent.xx.fbcdn.net/v/t1.0-0/c0.4.206.206/p206x206/13895063_1182652308465319_8425633379881185214_n.jpg?oh=19d205286528ddb35f3b747551a74262&oe=58D56F24"})
Photo.create({url: "https://scontent.xx.fbcdn.net/v/t1.0-0/c0.0.206.206/p206x206/11899939_986227681441117_6833868747648542603_n.jpg?oh=d2ca756f2f120fed786953cbdc2c81a9&oe=58A31DA0"})

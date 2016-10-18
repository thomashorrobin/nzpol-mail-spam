# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
pc6011 = PostCode.create({ code: 6011 })
pc6012 = PostCode.create({ code: 6012 })
pc5545 = PostCode.create({ code: 5545 })

wgnt = Electorate.create({ name: 'Wellington Central' })
hutt = Electorate.create({ name: 'Hutt South' })
ohariu = Electorate.create({ name: 'Ōhāriu' })

bish = MemberOfParliament.create({ first_name: 'Chris', last_name: 'Bishop', email:'bish@parliment.govt.nz', electorate: hutt })
brett = MemberOfParliament.create({ first_name: 'Brett', last_name: 'Hudson', email:'brett@parliment.govt.nz', electorate: ohariu })
dunn = MemberOfParliament.create({ first_name: 'Peter', last_name: 'Dunn', email:'dick@parliment.govt.nz', electorate: ohariu })
trev = MemberOfParliament.create({ first_name: 'Trever', last_name: 'Malard', email:'trev@parliment.govt.nz', electorate: hutt })
shaw = MemberOfParliament.create({ first_name: 'James', last_name: 'Shaw', email:'james@parliment.govt.nz', electorate: wgnt })
pfb = MemberOfParliament.create({ first_name: 'Paul', last_name: 'Foster-Bell', email:'pfb@parliment.govt.nz', electorate: wgnt })
grant = MemberOfParliament.create({ first_name: 'Grant', last_name: 'Robertson', email:'grant@parliment.govt.nz', electorate: wgnt })

PostCodeElectorateMap.create( electorate: wgnt, post_code: pc6011 )
PostCodeElectorateMap.create( electorate: wgnt, post_code: pc6012 )
PostCodeElectorateMap.create( electorate: ohariu, post_code: pc6011 )
PostCodeElectorateMap.create( electorate: hutt, post_code: pc5545 )
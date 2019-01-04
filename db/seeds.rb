# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Page.create!([{title: 'Pages', heading:'Pages', blurb: 'Pages page.'}, {title: 'Home', heading:'Welcome!', blurb: 'Isn\'t it nice here?'}, {title: 'CV', heading:'My CV', blurb: 'I do work.'}, {title: 'Bio', heading:'About', blurb: 'I have lived a full life.'}, {title: 'Research', heading:'My Research', blurb: 'I have thought hard in life.'}, {title: 'Teaching', heading:'My Teaching', blurb: 'I have taught some stuff.'}])
Contact.create!([{name:'Default user', title:'I need a title', unit:'I need a unit', institution:'I need an institution', street:'I need a street address', city:'I need a city', state:'I need a state', zip:'12345', email:'iNeedOne@example.com', phone:'555-555-5555'}])
PublicationType.create!({kind: 'Peer reviewed journal articles', rank: 1})
Publication.create!({authors: 'User, Default', date:'2019', citation:'&ldquo;A Title.&rdquo; *A Journal*. 1/2: 3&ndash;15', publication_type_id:1, featured:false})

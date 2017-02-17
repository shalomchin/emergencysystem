# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(title: 'Secret Invasion', date: '27/08/14', category: "resources", text: 'a llot of this is cfazy', author: 'wallis')
Post.create(title: 'I am stuck in the toilet' , date: '27/10/15', category: "Need helps", text: 'I wanna jump now', author: 'The Rock')
Post.create(title: 'Mama san' ,date: '27/10/16', category: "Latest news", text: 'I am going to Hellllll', author: 'Dennis the Menace')
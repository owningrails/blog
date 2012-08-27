# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create title: "Owning Rails voted best class EVER!",
            body: "The Owning Rails online masterclass has been voted by its humble creator, Marc-Andre Cournoyer, as the best class that ever existed."
            
Post.create title: "Hello World",
            body: "Call the Internets, I'm writing a blog!"
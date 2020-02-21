# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dept.create(name: 'clothing', id: 10)
Dept.create(name: 'cosmetics', id: 2)
Item.create(name: 'T-shirt', body: 'grey', dept_id: 10, id: 12)

dept_x = Dept.create(name: 'name1')
dept_x.items.create(name: 'name1 item 1', body:'body')
dept_x.items.create(name: 'name1 item 2', body:'body)'
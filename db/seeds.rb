# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Food.delete_all 

Food.create(name: 'bacon', image: 'bacon.png', calories: 100  )
Food.create(name: 'egg', image: 'eggweb.png', calories: 190  )
Food.create(name: 'sausage', image: 'sausageweb.png', calories: 120  )
Food.create(name: 'tomato', image: 'tomato.png', calories: 65  )
Food.create(name: 'toast', image: 'toast.png', calories: 230 )
Food.create(name: 'beans', image: 'beans.png', calories: 150 )

Plate.create(name: 'plate', image: 'plate.png')

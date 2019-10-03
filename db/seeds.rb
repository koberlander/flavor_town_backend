# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flavor.destroy_all
Order.destroy_all
Customer.destroy_all
FlavorOrder.destroy_all

# Flavor.create(name: "Americone Dream", description: 'Vanilla Ice Cream with Fudge-Covered Waffle Cone Pieces & a Caramel Swirl', img: '')
americone = Flavor.create(name: "Americone Dream", description: 'Vanilla Ice Cream with Fudge-Covered Waffle Cone Pieces & a Caramel Swirl', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/whats-new/9677-top-flavors-2018/top-flavors-7.jpg')
garcia = Flavor.create(name: "Cherry Garcia", description: 'Cherry Ice Cream with Cherries & Fudge Flakes', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/whats-new/9677-top-flavors-2018/top-flavors-2.jpg')
vanilla = Flavor.create(name: "Vanilla", description: 'Vanilla Ice Cream', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/flavors/flavors-redesign-details-2016/ecommerce-assets/pints/Vanilla_3_mobile.jpg')
cookies = Flavor.create(name: "Milk & Cookies", description: 'Vanilla Ice Cream with a Chocolate Cookie Swirl, Chocolate Chip, & Chocolate Chocolate Chip Cookies', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/flavors/flavors-redesign-details-2016/ecommerce-assets/pints/Milk_and_Cookies_5_mobile.jpg')
cookie_dough = Flavor.create(name: "Chocolate Chip Cookie Dough", description: 'Vanilla Ice Cream with Gobs of Chocolate Chip Cookie Dough', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/whats-new/9677-top-flavors-2018/top-flavors-3a.jpg')
half_baked = Flavor.create(name: "Half Baked", description: 'Chocolate & Vanilla Ice Creams mixed with Gobs of Chocolate Chip Cookie Dough & Fudge Brownies', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/whats-new/9677-top-flavors-2018/top-flavors-1.jpg')
brownie = Flavor.create(name: "Chocolate Fudge Brownie", description: 'Chocolate Ice Cream with Fudge Brownies', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/whats-new/9677-top-flavors-2018/top-flavors-4.jpg')
tonight = Flavor.create(name: "The Tonight Dough", description: 'Caramel & Chocolate Ice Creams with Chocolate Cookie Swirls & Gobs of Chocolate Chip Cookie Dough & Peanut Butter Cookie Dough', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/whats-new/9677-top-flavors-2018/top-flavors-5.jpg')
starw_cheese = Flavor.create(name: "Strawberry Cheesecake", description: 'Strawberry Cheesecake Ice Cream with Strawberries & a Thick Graham Cracker Swirl', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/whats-new/9677-top-flavors-2018/top-flavors-8.jpg')
chunky = Flavor.create(name: "Chunky Monkey", description: 'Banana Ice Cream with Fudge Chunks & Walnuts', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/flavors/flavors-redesign-details-2016/ecommerce-assets/pints/Chunky_Monkey_2_desktop.jpg')
pb_cup = Flavor.create(name: "Peanut Butter Cup", description: 'Peanut Butter Ice Cream with Peanut Butter Cups', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/whats-new/9677-top-flavors-2018/top-flavors-10.jpg')
caramel_core = Flavor.create(name: "Salted Caramel Core", description: 'Sweet Cream Ice Cream with Blonde Brownies & a Salted Caramel Core', img: 'https://www.benjerry.com/files/live/sites/systemsite/files/whats-new/4743-flavors-of-2016/salt-carm-core-400.jpg')
 # Flavor.create(name: "Americone Dream", description: 'Vanilla Ice Cream with Fudge-Covered Waffle Cone Pieces & a Caramel Swirl', img: '')


# Customer.create(username: '', email: '')
lane = Customer.create(username: 'lane', email: 'lane@lane.com')
trevor = Customer.create(username: 'trevor', email: 'trevor@trevor.com')
ann = Customer.create(username: 'ann', email: 'ann@ann.com')
stephen = Customer.create(username: 'stephen', email: 'stephen@stephen.com')
duke = Customer.create(username: 'duke', email: 'duke@duke.com')
tina = Customer.create(username: 'kristin', email: 'kristin@kristin.com')

# Order.create(name: '', order_filled: true)
order1 = Order.create(name: 'duke', order_filled: false, customer: duke)
order2 = Order.create(name: 'tina', order_filled: false, customer: tina)
order3 = Order.create(name: 'lane', order_filled: false, customer: lane)
order4 = Order.create(name: 'stephen', order_filled: false, customer: stephen)
order5 = Order.create(name: 'ann', order_filled: false, customer: ann)
order6 = Order.create(name: 'lane', order_filled: false, customer: lane)

# FlavorOrder.create(flavor_id: , order_id: )
fo1 = FlavorOrder.create(flavor: garcia, order: order1)
fo2 = FlavorOrder.create(flavor: pb_cup, order: order2)
fo3 = FlavorOrder.create(flavor: caramel_core, order: order3)
fo4 = FlavorOrder.create(flavor: brownie, order: order4)
fo5 = FlavorOrder.create(flavor: cookies, order: order5)
fo6 = FlavorOrder.create(flavor: vanilla, order: order6)

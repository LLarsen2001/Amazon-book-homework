# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.destroy_all
Author.destroy_all

jk = Author.create(name:'JK. Rowling', age:42)
bill = Author.create(name:'Bill Nye', age:55)

Book.create(name:'Autobiography', genre:'documents-nonfiction', author_id:bill.id)



jk.books.create(name:'HarryPotter', genre:'fantsy-fiction')

jk.books.create(name:'HarryPotter 2', genre:'fantsy-fiction')

jk.books.create(name:'HarryPotter 3', genre:'fantsy-fiction')

bill.books.create(name:'The Abnormal Gene', genre:'Evolution-Nonfiction')

bill.books.create(name:'Bill Nye The Science Guy', genre:'Scince-Nonfiction')

puts Author.all.size
puts Book.all.size
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
    {name: 'Alan', surname: 'Turing', email: 'at@uni.edu', department_code: 'CS', birthday: Date.new(2000, 5, 2)},
    {name: 'Claude', surname: 'Shannon', email: 'cs@uni.edu', department_code: 'EE', birthday: Date.new(2001, 9, 3)},
    {name: 'Alonzo', surname: 'Church', email: 'az@uni.edu', department_code: 'CS', birthday: Date.new(2002, 1, 20)},
    {name: 'David', surname: 'Hilbert', email: 'dh@uni.edu', department_code: 'MATH', birthday: Date.new(1999, 5, 11)},
    {name: 'Kurt', surname: 'Gödel', email: 'kg@uni.edu', department_code: 'MATH', birthday: Date.new(1999, 7, 19)},
    {name: 'Edgser', surname: 'Dijkstra', email: 'ed@uni.edu', department_code: 'CS', birthday: Date.new(2000, 4, 1)},
    {name: 'David', surname: 'Patterson', email: 'dp@uni.edu', department_code: 'CS', birthday: Date.new(2001, 3, 25)},
].each { |s| Student.create! s }
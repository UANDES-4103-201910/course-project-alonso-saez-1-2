# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SuperAdmin.create(profile_image:'imagen super admin', nickname:'Antonia Saez' ,biography:'Master of complain' ,email:'asaez1@miuandes.cl' ,password:'123456789' ,country:'Chile' ,city:'Santiago' ,status:'Available' ,gps_location:'My home')
Admin.create(profile_image:'imagen admin', nickname:'Joaquin Alonso' ,biography:'Master of complain' ,email:'jalonso1@miuandes.cl' ,password:'123456789' ,country:'Chile' ,city:'Santiago' ,status:'Available' ,gps_location:'My home', super_admin_id: 1)
User.create(profile_image:'imagen user', nickname:'Matias Jijena' ,biography:'Master of complain' ,email:'mjijena@miuandes.cl' ,password:'123456789' ,country:'Chile' ,city:'Santiago' ,status:'Available' ,gps_location:'My home', admin_id: 1 ,super_admin_id: 1, role: 'user')
Wall.create()
Post.create(title:'I hate almost everyone',creation_date:'2019-05-10',solve_status:'Solved',file:'aaa',image:'eee',text:'I only hate stupid people',link:'iii',wall_id: 1, super_admin_id: 1, admin_id: 1, user_id: 1)
Post.create(title:'I hate traffic',creation_date:'2019-05-10',solve_status:'Solved',file:'aaa',image:'eee',text:'Am I the only one who hate Santiago  traffic?',link:'iii',wall_id: 1, super_admin_id: 1, admin_id: 1, user_id: 1)

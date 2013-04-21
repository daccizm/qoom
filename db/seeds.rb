# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.delete_all
# UsersRoom.delete_all
# Room.delete_all
# RoomsQuestion.delete_all
# Question.delete_all
# Cooperation.delete_all

demo = User.where(:account=>'demo').first
unless demo
  user = User.create( account: 'demo', password: 'demo!', password_confirmation: 'demo!' )
  user.rooms.create( name: 'demo1' )
  user.rooms.create( name: 'demo2' )
end

tpj = User.where(:account=>'tpj').first
unless tpj
  user = User.create( account: 'tpj', password: 'tpj!', password_confirmation: 'tpj!' )
  room = user.rooms.create( name: 'demo' )
end

tpjmed = User.where(:account=>'tpjmed').first
unless tpjmed
  user = User.create( account: 'tpjmed', password: 'tpjmed!', password_confirmation: 'tpjmed!' )
  room = user.rooms.create( name: '2013/04/22 医療部会' )
end

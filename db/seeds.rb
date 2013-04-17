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

tpj = User.where(:account=>'TPJ').first
unless tpj
  user = User.create( account: 'TPJ', password: 'tpj!', password_confirmation: 'tpj!' )
  room = user.rooms.create( name: 'demo' )
  room.cooperations.create( account: 'demo' )
end

tpjmed = User.where(:account=>'TPJMED').first
unless tpj
  user = User.create( account: 'TPJMED', password: 'tpjmed!', password_confirmation: 'tpjmed!' )
  room = user.rooms.create( name: '2013/04/22 医療部会' )
end

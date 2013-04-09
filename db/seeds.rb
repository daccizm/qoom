# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
UsersRoom.delete_all
Room.delete_all
RoomsQuestion.delete_all
Question.delete_all

guest = User.create( account: 'guest', password: 'guest!', password_confirmation: 'guest!' )
guest_room = guest.rooms.create( account: 'guest', name: 'Guest Room' )

user = User.create( account: 'TPJ', password: 'tpj!', password_confirmation: 'tpj!' )
room = user.rooms.create( account: 'tpj_response', name: 'レスポンステスト' )
user.rooms.create( account: 'tpj_spare1',name: '予備1' )
user.rooms.create( account: 'tpj_spare2',name: '予備2' )
user.rooms.create( account: 'tpj_spare3',name: '予備3' )

(1..10).each do |variable|
	room.questions.create(
			content: "No#{variable}レスポンステスト用データ。200文字程度のデータ量でレスポンスが悪化しないか。あああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ-END"
		)
end

# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Room.delete_all
Question.delete_all
RoomsQuestion.delete_all

room = Room.create( name: 'レスポンステスト' )
Room.create( name: '2013年男祭り' )
Room.create( name: '2013年乙女祭り' )
Room.create( name: '予備1' )
Room.create( name: '予備2' )
Room.create( name: '予備3' )
Room.create( name: '予備4' )
Room.create( name: '予備5' )
Room.create( name: '予備6' )
Room.create( name: '予備7' )
Room.create( name: '予備8' )
Room.create( name: '予備9' )

(1..2000).each do |variable|
	room.questions.create(
			content: "No#{variable}レスポンステスト用データ。200文字程度のデータ量でレスポンスが悪化しないか。あああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ-END"
		)
end

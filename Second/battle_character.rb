class BattleCharacter
  def attack=(val)
   @attack = val
  end
  def attack
    @attack
	end
	def defense=(val)
		@defense = val
	end
  def defense
    @defense
  end	
end

party = [BattleCharacter.new, BattleCharacter.new, BattleCharacter.new, BattleCharacter.new]
party[0].attack = 100
party[0].defense = 100
party[1].attack = 70
party[1].defense = 120
party[2].attack = 120
party[2].defense = 75
party[3].attack = 110
party[3].defense = 95

puts "character information party member"
party.each do |unit|
	puts "attack #{unit.attack} defense #{unit.defense}"
end
# issue to be continued....
puts "select mode"
# issue to be continued....
puts "quest mode"
# issue to be continued....
puts "battle mode"

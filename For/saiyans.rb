# frozen_string_literal: true

require '../Utility/game_message'

class SaiyansBase
	@name
	@power
	@defense
	def initialize(name, power, defense)
		@name = name
		@power = power
		@defense = defense
	end
	def awake
    Display::GameMessage.output(:white, "覚醒サイヤ人になりました")		
	end
	def attack
	end
	def start_say
	end
	protected :awake
end

class EarthSaiyns < SaiyansBase
	def skill
    Display::GameMessage.output(:white, "本気を見せてやる")	
    Display::GameMessage.output(:white, "うおおおお")	
		awake
	end
	def start_say
    Display::GameMessage.output(:white, "オラの名は#{@name}")	
	end
	def failed_say
	end 

end

class KingSaiyns < SaiyansBase
	def start_say
    Display::GameMessage.output(:white, "かかってくるがいい")	
	end
	def advice
    Display::GameMessage.output(:white, "ちっ、これだから地球人は")	
    sleep(2)
    Display::GameMessage.output(:white, "skillメソッドを使うんだ")	
	end
end

songokuu = EarthSaiyns.new("孫悟空", 200, 150)
vegeta = KingSaiyns.new("ベジータ", 170, 170)

songokuu.start_say
sleep(2)
vegeta.start_say
sleep(2)
Display::GameMessage.output(:white, "よし、オラ本気出すぞ")	
sleep(2)
#songokuu.awake
songokuu.failed_say
sleep(2)
Display::GameMessage.output(:white, "あれ、失敗したぞ")	
sleep(2)
vegeta.advice
sleep(2)
Display::GameMessage.output(:white, "お前、いいやつだなー")	
sleep(2)
Display::GameMessage.output(:white, "よし、いっくぞー")	
sleep(2)
songokuu.skill
